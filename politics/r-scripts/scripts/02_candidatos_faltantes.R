if (!require(pacman)) install.packages("pacman")
p_load(data.table, readr, jsonlite, readxl, dplyr, tidyr, stringr, janitor)

candidatos_produccion <- read_csv("ids-incompletos/listado_candidatos_parcial_sin_duplicados.csv")

pairs <- read_csv("candidatos_variaciones.csv") %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato_2 = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = ""))
  ) %>% 
  distinct()

p20172_missing <- read_csv("datos-semi-procesados/p20172_votacion_total.csv") %>% 
  select(candidato) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  ) %>% 
  distinct() %>% 
  left_join(pairs, by = c("candidato" = "candidato")) %>% 
  left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  filter(is.na(candidato_id)) %>% 
  select(candidato) %>% 
  distinct()

p20171_missing <- read_csv("datos-semi-procesados/p20171_votacion_total.csv") %>% 
  select(candidato) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  ) %>% 
  distinct() %>% 
  left_join(pairs, by = c("candidato" = "candidato")) %>% 
  left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  filter(is.na(candidato_id)) %>% 
  select(candidato) %>% 
  distinct()

d2017_missing <- read_csv("datos-semi-procesados/d2017_votacion_total.csv") %>% 
  select(candidato) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  ) %>% 
  distinct() %>% 
  left_join(pairs, by = c("candidato" = "candidato")) %>% 
  left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  filter(is.na(candidato_id)) %>% 
  select(candidato) %>% 
  distinct()

s2017_missing <- read_csv("datos-semi-procesados/s2017_votacion_total.csv") %>% 
  select(candidato) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  ) %>% 
  distinct() %>% 
  left_join(pairs, by = c("candidato" = "candidato")) %>% 
  left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  filter(is.na(candidato_id)) %>% 
  select(candidato) %>% 
  distinct()

m2016_missing <- read_csv("datos-semi-procesados/m2016_votacion_total.csv") %>% 
  select(candidato) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  ) %>% 
  distinct() %>% 
  left_join(pairs, by = c("candidato" = "candidato")) %>% 
  left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  filter(is.na(candidato_id)) %>% 
  select(candidato) %>% 
  distinct()

p20132_missing <- read_csv("datos-semi-procesados/p20132_votacion_total.csv") %>% 
  select(candidato) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  ) %>% 
  distinct() %>% 
  left_join(pairs, by = c("candidato" = "candidato")) %>% 
  left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  filter(is.na(candidato_id)) %>% 
  select(candidato) %>% 
  distinct()

p20131_missing <- read_csv("datos-semi-procesados/p20131_votacion_total.csv") %>% 
  select(candidato) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  ) %>% 
  distinct() %>% 
  left_join(pairs, by = c("candidato" = "candidato")) %>% 
  left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  filter(is.na(candidato_id)) %>% 
  select(candidato) %>% 
  distinct()

d2013_missing <- read_csv("datos-semi-procesados/d2013_votacion_total.csv") %>% 
  select(candidato) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  ) %>% 
  distinct() %>% 
  left_join(pairs, by = c("candidato" = "candidato")) %>% 
  left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  filter(is.na(candidato_id)) %>% 
  select(candidato) %>% 
  distinct()

s2013_missing <- read_csv("datos-semi-procesados/s2013_votacion_total.csv") %>% 
  select(candidato) %>%
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  ) %>% 
  distinct() %>% 
  left_join(pairs, by = c("candidato" = "candidato")) %>% 
  left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  filter(is.na(candidato_id)) %>% 
  select(candidato) %>% 
  distinct()

s2009_missing <- read_csv("datos-semi-procesados/s2009_votacion_total.csv") %>% 
  select(candidato) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  ) %>% 
  distinct() %>% 
  left_join(pairs, by = c("candidato" = "candidato")) %>% 
  left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  filter(is.na(candidato_id)) %>% 
  select(candidato) %>% 
  distinct()

candidatos_faltantes <- rbindlist(mget(ls(pattern = "missing"))) %>% 
  distinct() %>% 
  mutate(candidato = str_to_title(candidato), 
         candidato_id = nrow(candidatos_produccion) + row_number())

candidatos_produccion <- bind_rows(candidatos_produccion, candidatos_faltantes)

fwrite(candidatos_produccion, "ids/listado_completo_candidatos.csv")
