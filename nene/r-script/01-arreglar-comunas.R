if (!require("pacman")) install.packages("pacman")
p_load(tidyverse, haven, janitor, sjlabelled)

comunas <- read_csv("../datachile-ids/2017_06_27_comunas_datachile_fixed.csv")

zip <- list.files("raw-data", pattern = "\\.zip", full.names = T)
years <- 2010:2017

for (i in 1:length(zip)) {
  system(sprintf("7z e -aos %s -oc:raw-data/comprimidos/", zip[i]))
}

sav_comprimidos <- list.files("raw-data/comprimidos", full.names = T)

for (i in 1:length(sav_comprimidos)) {
  system(sprintf("7z e -aos %s -oc:raw-data/sav/", sav_comprimidos[i]))
}

sav <- list.files("raw-data/sav", pattern = "\\.sav", full.names = T)
sav2 <- str_to_lower(sav) %>% str_replace_all(., " ", "_")

try(
  file.rename(sav, sav2)
) 

cambiar_nombre <- c("raw-data/sav/amj_usuariosexternos_2017.sav",
                    "raw-data/sav/def_usuariosexternos_2017.sav",
                    "raw-data/sav/efm_usuariosexternos_2017.sav",
                    "raw-data/sav/fma_usuariosexternos_2017.sav",
                    "raw-data/sav/mam_usuariosexternos_2017.sav",
                    "raw-data/sav/mjj_usuariosexternos_2017.sav")

cambiar_nombre_2 <- c("raw-data/sav/ene_2017_05_amj.sav",
                      "raw-data/sav/ene_2017_01_def.sav",
                      "raw-data/sav/ene_2017_02_efm.sav",
                      "raw-data/sav/ene_2017_03_fma.sav",
                      "raw-data/sav/ene_2017_04_mam.sav",
                      "raw-data/sav/ene_2017_06_mjj.sav")

try(
  file.rename(cambiar_nombre, cambiar_nombre_2)
)

sav <- list.files("raw-data/sav", pattern = "\\.sav", full.names = T)

for (t in 2013:2017) {
  nene <- list.files("raw-data/sav", pattern = glob2rx(paste0("*",t,"*.sav")), full.names = T)
  nene <- map(nene, .f = haven::read_sav)
  nene <- map(nene, .f = janitor::clean_names)
  
  ultima_nene <- nene[[length(nene)]]
  
  comunas2 <- tibble(
    cod_ine = sjlabelled::get_values(ultima_nene$r_p_c), 
    label_ine = sjlabelled::get_labels(ultima_nene$r_p_c)) %>% 
    left_join(comunas, by = c("cod_ine" = "comuna_customs_id")) %>% 
    mutate(
      label_ine = str_trim(
        str_to_lower(iconv(label_ine, from = "", to = "ASCII//TRANSLIT", sub = ""))
      ),
      comuna_name = str_to_lower(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT", sub = "")),
      tag = ifelse(label_ine == comuna_name, 1, 0)
    ) %>% 
    mutate(
      comuna_datachile_id = ifelse(cod_ine == 5801, 253, comuna_datachile_id),
      comuna_datachile_id = ifelse(cod_ine == 5802, 138, comuna_datachile_id),
      comuna_datachile_id = ifelse(cod_ine == 5803, 190, comuna_datachile_id),
      comuna_datachile_id = ifelse(cod_ine == 5804, 337, comuna_datachile_id),
      comuna_datachile_id = ifelse(cod_ine == 13302, 346, comuna_datachile_id)
    ) %>% 
    mutate(cod_ine = as.character(cod_ine)) %>% 
    select(cod_ine, comuna_datachile_id)
  
  dir.create("clean-data")
  dir.create(paste0("clean-data/nene",t))
  
  nombres <- list.files("raw-data/sav", pattern = glob2rx(paste0("*",t,"*.sav")), full.names = T)
  nombres <- str_replace_all(nombres, "raw-data/sav", paste0("clean-data/nene",t))
  nombres <- str_replace_all(nombres, "\\.sav", "\\.csv")
  
  for (i in 1:length(nene)) {
    nene[[i]] <- nene[[i]] %>% 
      mutate(cod_ine = as.character(r_p_c)) %>% 
      left_join(comunas2, by = "cod_ine") %>% 
      select(comuna_datachile_id, everything())
    
    write_csv(
      nene[[i]], nombres[i]
    )
  }
  
  rm(nene)
}
