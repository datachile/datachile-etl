comunas <- read_csv("~/GitHub/datachile-data/official_ids/2017_06_27_comunas_datachile_fixed.csv")

comunas2 <- comunas %>% 
  select(comuna_name, comuna_datachile_id) %>% 
  mutate(comuna_name = str_to_lower(comuna_name),
         comuna_name = iconv(comuna_name, from = "", to = "ASCII", sub = ""))

casen_zip <- list.files(path = "raw_data", recursive = T, full.names = T)

for (j in 1:length(casen_zip)) {
  try(
    system(paste("7z e -aos", casen_zip[[j]], "-oc:temp/"))
  )
}

rm(casen_zip)

casen_sav <- list.files(path = "temp", recursive = T, full.names = T)

for (j in 1:length(casen_sav)) {
  try(file.rename(casen_sav[[j]], gsub(" ", "", casen_sav[[j]])))
  try(file.rename(casen_sav[[j]], gsub("_", "", casen_sav[[j]])))
}

casen_sav <- list.files(path = "temp", recursive = T, full.names = T)

for (t in 1:7) {
  raw <- read_sav(casen_sav[[t]])
  assign(paste0("casen_",years[[t]]), raw)
  
  raw2 <- raw %>% 
    select(matches("comu")) %>% 
    setNames(., "comu") %>% 
    distinct() %>% 
    mutate(comu2 = as_character(comu),
           comu2 = iconv(str_to_lower(comu2), from = "", to = "ASCII", sub = ""),
           comu = as.integer(comu))
  assign(paste0("comunas_",years[[t]]), raw2)
  
  rm(raw,raw2)
}

comunas90_03 <- mget(ls(pattern = "comunas_")) %>%
  bind_rows() %>% 
  arrange(comu2) %>% 
  distinct(comu, .keep_all = T)

comunas90_03 %>% group_by(comu) %>% summarise(n = n()) %>% filter(n > 1)
comunas90_03 %>% group_by(comu2) %>% summarise(n = n()) %>% filter(n > 1)

rm(list = ls(pattern = "comunas_"))
rm(list = ls(pattern = "casen_[0-9]"))

for (t in 8) {
  raw <- read_sav(casen_sav[[t]])
  assign(paste0("casen_",years[[t]]), raw)
  
  raw2 <- raw %>%
    select(matches("COMU")) %>%
    setNames(., "comu") %>% 
    distinct() %>%
    mutate(comu2 = as_character(comu),
           comu2 = iconv(str_to_lower(comu2), from = "", to = "ASCII", sub = ""),
           comu = as.integer(comu))
  assign(paste0("comunas_",years[[t]]), raw2)
  
  rm(raw,raw2)
}

comunas06 <- mget(ls(pattern = "comunas_")) %>%
  bind_rows() %>% 
  distinct(comu, .keep_all = T)

comunas06 %>% group_by(comu) %>% summarise(n = n()) %>% filter(n > 1)
comunas06 %>% group_by(comu2) %>% summarise(n = n()) %>% filter(n > 1)

rm(list = ls(pattern = "comunas_"))
rm(list = ls(pattern = "casen_[0-9]"))

for (t in 9) {
  raw <- read_sav(casen_sav[[t]])
  assign(paste0("casen_",years[[t]]), raw)
  
  raw2 <- raw %>%
    select(matches("COMU")) %>%
    setNames(., "comu") %>% 
    distinct() %>%
    mutate(comu2 = as_character(comu),
           comu2 = iconv(str_to_lower(comu2), from = "", to = "ASCII", sub = ""),
           comu = as.integer(comu))
  assign(paste0("comunas_",years[[t]]), raw2)
  
  rm(raw,raw2)
}

comunas09 <- mget(ls(pattern = "comunas_")) %>%
  bind_rows() %>% 
  distinct(comu, .keep_all = T)

comunas09 %>% group_by(comu) %>% summarise(n = n()) %>% filter(n > 1)
comunas09 %>% group_by(comu2) %>% summarise(n = n()) %>% filter(n > 1)

rm(list = ls(pattern = "comunas_"))
rm(list = ls(pattern = "casen_[0-9]"))

for (t in 10:12) {
  raw <- read_sav(casen_sav[[t]])
  assign(paste0("casen_",years[[t]]), raw)
  
  raw2 <- raw %>%
    select(matches("COMU")) %>%
    setNames(., "comu") %>% 
    distinct() %>%
    mutate(comu2 = as_character(comu),
           comu2 = iconv(str_to_lower(comu2), from = "", to = "ASCII", sub = ""),
           comu = as.integer(comu))
  assign(paste0("comunas_",years[[t]]), raw2)
  
  rm(raw,raw2)
}

comunas11_15 <- mget(ls(pattern = "comunas_")) %>%
  bind_rows() %>% 
  distinct(comu, .keep_all = T)

comunas11_15 %>% group_by(comu) %>% summarise(n = n()) %>% filter(n > 1)
comunas11_15 %>% group_by(comu2) %>% summarise(n = n()) %>% filter(n > 1)

rm(list = ls(pattern = "comunas_"))
rm(list = ls(pattern = "casen_[0-9]"))
