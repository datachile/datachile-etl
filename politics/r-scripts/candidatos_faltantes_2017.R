library(readr)
library(dplyr)
library(stringr)

X2018_02_09_candidatos_id <- read_csv("~/GitHub/datachile-data/official_ids/politics/2018-02-09_candidatos_id.csv") %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  )

X2018_02_06_candidatos_permutacion <- read_csv("~/GitHub/datachile-data/official_ids/politics/2018-02-06_candidatos_permutacion.csv") %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE),
    candidato2 = toupper(iconv(candidato2, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato2 = gsub(".*\\.", "", candidato2),
    candidato2 = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato2, perl = TRUE)
  )

s2017_votacion_total <- read_csv("datos-semi-procesados/s2017_votacion_total.csv") %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  )

d2017_votacion_total <- read_csv("datos-semi-procesados/d2017_votacion_total.csv") %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  )

senadoresfaltantes2017 <- s2017_votacion_total %>% 
  select(candidato) %>% 
  distinct() %>% 
  anti_join(X2018_02_09_candidatos_id) %>% 
  anti_join(X2018_02_06_candidatos_permutacion, by = "candidato") %>% 
  anti_join(X2018_02_06_candidatos_permutacion, by = c("candidato" = "candidato2")) %>% 
  mutate(candidato = str_to_title(candidato))

diputadosfaltantes2017 <- d2017_votacion_total %>% 
  select(candidato) %>% 
  distinct() %>% 
  anti_join(X2018_02_09_candidatos_id) %>% 
  anti_join(X2018_02_06_candidatos_permutacion, by = "candidato") %>% 
  anti_join(X2018_02_06_candidatos_permutacion, by = c("candidato" = "candidato2")) %>% 
  mutate(candidato = str_to_title(candidato))

X2018_02_12_candidatos_id <- X2018_02_09_candidatos_id %>% 
  bind_rows(senadoresfaltantes2017) %>% 
  bind_rows(diputadosfaltantes2017) %>% 
  mutate(candidato_id = row_number())

write_csv(X2018_02_12_candidatos_id, "~/GitHub/datachile-data/official_ids/politics/2018-02-12_candidatos_id.csv")
