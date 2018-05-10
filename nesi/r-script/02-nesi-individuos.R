if (!require("pacman")) install.packages("pacman")
p_load(tidyverse, haven, janitor, sjlabelled)

comunas <- read_csv("../official_ids/2017_06_27_comunas_datachile_fixed.csv")

rar <- list.files("raw-data", pattern = "\\.rar", full.names = T)
years <- 2010:2016

for (i in 1:length(rar)) {
  system(sprintf("7z e -aos %s -oc:raw-data/%s/", rar[i], years[i]))
}

sav <- list.files("raw-data", pattern = "\\.sav", full.names = T, recursive = T)
sav2 <- str_to_lower(sav) %>% str_replace_all(., " ", "_")

try(
  file.rename(sav, sav2)
) 

individuos <- list.files("raw-data", pattern = glob2rx("*personas*.sav"), full.names = T, recursive = T)
individuos <- individuos[grepl("sin", individuos) == F]

individuos <- map(individuos, .f = haven::read_sav)
individuos <- map(individuos, .f = janitor::clean_names)

ultima_nesi <- individuos[[7]]

comunas2 = tibble(
  cod_ine = sjlabelled::get_values(ultima_nesi$r_p_c), 
  label_ine = sjlabelled::get_labels(ultima_nesi$r_p_c)) %>% 
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
dir.create("clean-data/individuos")

for (i in 1:length(individuos)) {
  individuos[[i]] <- individuos[[i]] %>% 
    mutate(cod_ine = as.character(r_p_c)) %>% 
    left_join(comunas2, by = "cod_ine") %>% 
    select(comuna_datachile_id, everything())
  
  write_csv(
    individuos[[i]], sprintf("clean-data/individuos/nesi-individuos-con-subsidios-%s.csv", years[i])
  )
}
