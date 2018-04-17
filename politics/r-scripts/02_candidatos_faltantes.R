if (!require(pacman)) install.packages("pacman")
p_load(data.table, readr, jsonlite, readxl, dplyr, tidyr, stringr, janitor)

# candidatos_produccion <- read_csv("candidatos_en_produccion_sin_duplicados_07_02_2018.csv")
# 
# pairs <- read_csv("candidatos_variaciones.csv") %>% 
#   mutate(
#     candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
#     candidato_2 = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = ""))
#   ) %>% 
#   distinct()
# 
# p20172_missing <- read_csv("datos-semi-procesados/p20172_votacion_total.csv") %>% 
#   select(candidato) %>% 
#   mutate(
#     candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
#     candidato = gsub(".*\\.", "", candidato),
#     candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
#   ) %>% 
#   distinct() %>% 
#   left_join(pairs, by = c("candidato" = "candidato")) %>% 
#   left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
#   mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
#   filter(is.na(candidato_id)) %>% 
#   select(candidato) %>% 
#   distinct()
# 
# p20171_missing <- read_csv("datos-semi-procesados/p20171_votacion_total.csv") %>% 
#   select(candidato) %>% 
#   mutate(
#     candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
#     candidato = gsub(".*\\.", "", candidato),
#     candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
#   ) %>% 
#   distinct() %>% 
#   left_join(pairs, by = c("candidato" = "candidato")) %>% 
#   left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
#   mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
#   filter(is.na(candidato_id)) %>% 
#   select(candidato) %>% 
#   distinct()
# 
# d2017_missing <- read_csv("datos-semi-procesados/d2017_votacion_total.csv") %>% 
#   select(candidato) %>% 
#   mutate(
#     candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
#     candidato = gsub(".*\\.", "", candidato),
#     candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
#   ) %>% 
#   distinct() %>% 
#   left_join(pairs, by = c("candidato" = "candidato")) %>% 
#   left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
#   mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
#   filter(is.na(candidato_id)) %>% 
#   select(candidato) %>% 
#   distinct()
# 
# s2017_missing <- read_csv("datos-semi-procesados/s2017_votacion_total.csv") %>% 
#   select(candidato) %>% 
#   mutate(
#     candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
#     candidato = gsub(".*\\.", "", candidato),
#     candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
#   ) %>% 
#   distinct() %>% 
#   left_join(pairs, by = c("candidato" = "candidato")) %>% 
#   left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
#   mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
#   filter(is.na(candidato_id)) %>% 
#   select(candidato) %>% 
#   distinct()
# 
# m2016_missing <- read_csv("datos-semi-procesados/m2016_votacion_total.csv") %>% 
#   select(candidato) %>% 
#   mutate(
#     candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
#     candidato = gsub(".*\\.", "", candidato),
#     candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
#   ) %>% 
#   distinct() %>% 
#   left_join(pairs, by = c("candidato" = "candidato")) %>% 
#   left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
#   mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
#   filter(is.na(candidato_id)) %>% 
#   select(candidato) %>% 
#   distinct()
# 
# p20132_missing <- read_csv("datos-semi-procesados/p20132_votacion_total.csv") %>% 
#   select(candidato) %>% 
#   mutate(
#     candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
#     candidato = gsub(".*\\.", "", candidato),
#     candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
#   ) %>% 
#   distinct() %>% 
#   left_join(pairs, by = c("candidato" = "candidato")) %>% 
#   left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
#   mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
#   filter(is.na(candidato_id)) %>% 
#   select(candidato) %>% 
#   distinct()
# 
# p20131_missing <- read_csv("datos-semi-procesados/p20131_votacion_total.csv") %>% 
#   select(candidato) %>% 
#   mutate(
#     candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
#     candidato = gsub(".*\\.", "", candidato),
#     candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
#   ) %>% 
#   distinct() %>% 
#   left_join(pairs, by = c("candidato" = "candidato")) %>% 
#   left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
#   mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
#   filter(is.na(candidato_id)) %>% 
#   select(candidato) %>% 
#   distinct()
# 
# d2013_missing <- read_csv("datos-semi-procesados/d2013_votacion_total.csv") %>% 
#   select(candidato) %>% 
#   mutate(
#     candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
#     candidato = gsub(".*\\.", "", candidato),
#     candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
#   ) %>% 
#   distinct() %>% 
#   left_join(pairs, by = c("candidato" = "candidato")) %>% 
#   left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
#   mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
#   filter(is.na(candidato_id)) %>% 
#   select(candidato) %>% 
#   distinct()
# 
# s2013_missing <- read_csv("datos-semi-procesados/s2013_votacion_total.csv") %>% 
#   select(candidato) %>%
#   mutate(
#     candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
#     candidato = gsub(".*\\.", "", candidato),
#     candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
#   ) %>% 
#   distinct() %>% 
#   left_join(pairs, by = c("candidato" = "candidato")) %>% 
#   left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
#   mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
#   filter(is.na(candidato_id)) %>% 
#   select(candidato) %>% 
#   distinct()
# 
# s2009_missing <- read_csv("datos-semi-procesados/s2009_votacion_total.csv") %>% 
#   select(candidato) %>% 
#   mutate(
#     candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
#     candidato = gsub(".*\\.", "", candidato),
#     candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
#   ) %>% 
#   distinct() %>% 
#   left_join(pairs, by = c("candidato" = "candidato")) %>% 
#   left_join(pairs, by = c("candidato" = "candidato_2")) %>% 
#   mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
#   filter(is.na(candidato_id)) %>% 
#   select(candidato) %>% 
#   distinct()
# 
# candidatos_faltantes <- rbindlist(mget(ls(pattern = "missing"))) %>% 
#   distinct() %>% 
#   mutate(candidato = str_to_title(candidato), 
#          candidato_id = nrow(candidatos_produccion) + row_number())
# 
# candidatos_produccion <- bind_rows(candidatos_produccion, candidatos_faltantes)
# 
# fwrite(candidatos_faltantes, "candidatos_faltantes.csv")
# fwrite(candidatos_produccion, "candidatos_en_produccion_completo_07_02_2018.csv")

####

# acá hay algunos candidatos que se agregaron manualmente (i.e con 2do nombre vs sin 2do nombre)
X2018_02_09_candidatos_id <- read_csv("candidatos_en_produccion_sin_duplicados_09_02_2018.csv") %>% 
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

write_csv(X2018_02_12_candidatos_id, "candidatos_en_produccion_sin_duplicados_12_02_2018.csv")
