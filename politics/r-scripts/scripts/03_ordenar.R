if (!require(pacman)) install.packages("pacman")
p_load(data.table, readr, jsonlite, readxl, dplyr, tidyr, stringr, janitor, combinat)

candidatos <- read_csv("candidatos_en_produccion_sin_duplicados_07_02_2018.csv") %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato_2 = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = ""))
  )

partidos <- read_csv("~/GitHub/datachile-data/official_ids/politics/2018-02-08_partidos_id.csv") %>% 
  mutate(partido = toupper(iconv(partido, from = "", to = "ASCII//TRANSLIT", sub = "")),
         partido = gsub(" \\(.*", "", partido))

listas <- read_csv("~/GitHub/datachile-data/official_ids/politics/2018-02-06_listas_id.csv")

comunas <- read_csv("~/GitHub/datachile-data/official_ids/2017_06_27_comunas_datachile_fixed.csv") %>% 
  select(comuna_name, comuna_datachile_id) %>% 
  mutate(comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT", sub = "")))

#### presidenciales 2017 ####

#### computo ####

#### 1era vuelta #####

p2017_partidos <- read_csv("datos-semi-procesados/p20171_votacion_total.csv") %>% 
  select(candidato) %>% 
  distinct() %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  ) %>% 
  left_join(candidatos) %>% 
  mutate(partido_id = c(9, 8, 7, 8, 8, 5, 28, 30, 0, 0)) %>% 
  select(candidato_id, partido_id)
  
p20171 <- read_csv("datos-semi-procesados/p20171_votacion_total.csv") %>% 
  rename(votos_candidato = votos) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT", sub = "")),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")),
    comuna_name = ifelse(comuna_name == "AISEN", "AYSEN", comuna_name),
    comuna_name = ifelse(comuna_name == "ALTO BIOBIO", "ALTO BIO BIO", comuna_name),
    comuna_name = ifelse(comuna_name == "CONCON", "CON CON", comuna_name),
    comuna_name = ifelse(comuna_name == "COYHAIQUE", "COIHAIQUE", comuna_name),
    comuna_name = ifelse(comuna_name == "LLAY-LLAY", "LLAY LLAY", comuna_name),
    comuna_name = ifelse(comuna_name == "MOSTAZAL", "SAN FRANCISCO DE MOSTAZAL", comuna_name),
    comuna_name = ifelse(comuna_name == "TILTIL", "TIL-TIL", comuna_name),
    comuna_name = ifelse(comuna_name == "TREGUACO", "TREHUACO", comuna_name)
  ) %>% 
  left_join(candidatos, by = c("candidato" = "candidato")) %>% 
  left_join(candidatos, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  left_join(comunas) %>% 
  filter(!is.na(comuna_datachile_id)) %>% 
  select(comuna_datachile_id, candidato_id, votos_candidato) %>% 
  group_by(comuna_datachile_id, candidato_id) %>% 
  summarise(votos_candidato = sum(votos_candidato, na.rm = T)) %>% 
  ungroup() %>% 
  left_join(p2017_partidos) %>% 
  mutate(electo = 0,
         year = 2017,
         election_id = 1) 

# p20171 %>% select(comuna_name, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()
# p20171 %>% filter(is.na(comuna_datachile_id))
# p20171 %>% select(candidato, candidato_id) %>% filter(is.na(candidato_id)) %>% distinct()

try(dir.create("datos-procesados"))
fwrite(p20171, "datos-procesados/p20171-procesado.csv")

#### 2da vuelta ####

p20172 <- read_csv("datos-semi-procesados/p20172_votacion_total.csv") %>% 
  rename(votos_candidato = votos) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT", sub = "")),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")),
    comuna_name = ifelse(comuna_name == "AISEN", "AYSEN", comuna_name),
    comuna_name = ifelse(comuna_name == "ALTO BIOBIO", "ALTO BIO BIO", comuna_name),
    comuna_name = ifelse(comuna_name == "CONCON", "CON CON", comuna_name),
    comuna_name = ifelse(comuna_name == "COYHAIQUE", "COIHAIQUE", comuna_name),
    comuna_name = ifelse(comuna_name == "LLAY-LLAY", "LLAY LLAY", comuna_name),
    comuna_name = ifelse(comuna_name == "MOSTAZAL", "SAN FRANCISCO DE MOSTAZAL", comuna_name),
    comuna_name = ifelse(comuna_name == "TILTIL", "TIL-TIL", comuna_name),
    comuna_name = ifelse(comuna_name == "TREGUACO", "TREHUACO", comuna_name)
  ) %>% 
  left_join(candidatos, by = c("candidato" = "candidato")) %>% 
  left_join(candidatos, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  left_join(comunas) %>% 
  filter(!is.na(comuna_datachile_id)) %>% 
  select(comuna_datachile_id, candidato_id, votos_candidato) %>% 
  group_by(comuna_datachile_id, candidato_id) %>% 
  summarise(votos_candidato = sum(votos_candidato, na.rm = T))

p20172_lugar <- p20172 %>% 
  group_by(candidato_id) %>% 
  summarise(total = sum(votos_candidato)) %>% 
  mutate(electo = ifelse(total == max(total), 1, 0)) %>% 
  select(-total)

p20172 <- p20172 %>% 
  left_join(p20172_lugar) %>% 
  left_join(p2017_partidos) %>% 
  mutate(year = 2017, 
         election_id = 2)

# p20172 %>% select(comuna_name, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()
# p20172 %>% filter(is.na(comuna_datachile_id))
# p20172 %>% select(candidato, candidato_id) %>% filter(is.na(candidato_id)) %>% distinct()
# 
# p20172 %>% 
#   left_join(candidatos) %>% 
#   group_by(candidato, electo) %>% 
#   summarise(sum = sum(votos_candidato))

try(dir.create("datos-procesados"))
fwrite(p20172, "datos-procesados/p20172-procesado.csv")

#### participacion ####

p20172_links <- read_delim("resultados-presidenciales-2017/links-segunda-votacion-computo", 
                                     "\t", escape_double = FALSE, col_names = FALSE, 
                                     trim_ws = TRUE)

p20172_links <- p20172_links %>% 
  mutate(X1 = gsub("curl \'", "", X1),
         X1 = gsub("\' .*", "", X1)) %>% 
  filter(!grepl("google", X1))

p20172_links_computo <- p20172_links %>% 
  filter(grepl("computo", X1)) %>% 
  mutate(X2 = gsub(".*comunas/", "", X1),
         X2 = paste0("resultados-presidenciales-2017/segunda-votacion-computo/", X2))

p20172_links_participacion <- p20172_links_computo %>% 
  mutate(X1 = gsub("elecciones_presidente/", "participacion/", X1)) %>% 
  mutate(X2 = gsub(".*comunas/", "", X1),
         X2 = paste0("resultados-presidenciales-2017/segunda-votacion-participacion/", X2))

p20172_nombres <- read_lines("resultados-presidenciales-2017/nombres-comunas-segunda-votacion")

p20172_nombres <- gsub("</option>", "</option>\n", p20172_nombres)
p20172_nombres <- read_lines(p20172_nombres)
p20172_nombres <- as_tibble(str_extract(string = p20172_nombres, pattern = regex("(?<=>).*(?=<)"))) %>% 
  filter(!grepl("Comunas", value)) %>% 
  filter(!is.na(value)) %>% 
  mutate(computo = p20172_links_computo$X2,
         participacion = p20172_links_participacion$X2) %>% 
  rename(comuna_name = value)

p20172_nombres <- p20172_nombres %>% 
  mutate(comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")),
         comuna_name = ifelse(comuna_name == "AISEN", "AYSEN", comuna_name),
         comuna_name = ifelse(comuna_name == "ALTO BIOBIO", "ALTO BIO BIO", comuna_name),
         comuna_name = ifelse(comuna_name == "CONCON", "CON CON", comuna_name),
         comuna_name = ifelse(comuna_name == "COYHAIQUE", "COIHAIQUE", comuna_name),
         comuna_name = ifelse(comuna_name == "LLAY-LLAY", "LLAY LLAY", comuna_name),
         comuna_name = ifelse(comuna_name == "MOSTAZAL", "SAN FRANCISCO DE MOSTAZAL", comuna_name),
         comuna_name = ifelse(comuna_name == "TILTIL", "TIL-TIL", comuna_name),
         comuna_name = ifelse(comuna_name == "TREGUACO", "TREHUACO", comuna_name)) %>% 
  left_join(comunas %>% 
              select(comuna_name, comuna_datachile_id) %>% 
              mutate(comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT"))))

p20171_nombres <- p20172_nombres %>% 
  select(-computo) %>% 
  mutate(participacion = gsub("segunda", "primera", participacion))

p20172_archivos_participacion <- list.files("resultados-presidenciales-2017/segunda-votacion-participacion", 
                                                      pattern = "json", full.names = T)

p20171_archivos_participacion <- list.files("resultados-presidenciales-2017/primera-votacion-participacion", 
                                                      pattern = "json", full.names = T)

for (j in 1:length(p20171_archivos_participacion)) {
  y <- fromJSON(p20171_archivos_participacion[[j]])
  
  participacion <- y$data %>% 
    mutate(c = as.numeric(gsub("\\.", "", c)),
           d = as.numeric(gsub("\\.", "", d))) %>% 
    summarise(total_electores = sum(c, na.rm = T),
              total_votacion = sum(d, na.rm = T)) %>% 
    mutate(json = p20171_archivos_participacion[[j]]) %>% 
    left_join(p20171_nombres %>% 
                select(participacion, comuna_datachile_id), by = c("json" = "participacion")) %>% 
    select(-json) %>% 
    mutate(election_id = 1, year = 2017) %>% 
    select(year, election_id, comuna_datachile_id, total_electores, total_votacion)
  
  if (!exists("p20171_participacion")) {
    p20171_participacion <- participacion
  }
  
  if (j > 1) {
    p20171_participacion <- bind_rows(p20171_participacion, participacion)
  }
  rm(participacion, y)
}

for (j in 1:length(p20172_archivos_participacion)) {
  y <- fromJSON(p20172_archivos_participacion[[j]])
  
  participacion <- y$data %>% 
    mutate(c = as.numeric(gsub("\\.", "", c)),
           d = as.numeric(gsub("\\.", "", d))) %>% 
    summarise(total_electores = sum(c, na.rm = T),
              total_votacion = sum(d, na.rm = T)) %>% 
    mutate(json = p20172_archivos_participacion[[j]]) %>% 
    left_join(p20172_nombres %>% 
                select(participacion, comuna_datachile_id), by = c("json" = "participacion")) %>% 
    select(-json) %>% 
    mutate(election_id = 2, year = 2017) %>% 
    select(year, election_id, comuna_datachile_id, total_electores, total_votacion)
  
  if (!exists("p20172_participacion")) {
    p20172_participacion <- participacion
  }
  
  if (j > 1) {
    p20172_participacion <- bind_rows(p20172_participacion, participacion)
  }
  rm(participacion)
}

p2017_participacion <- bind_rows(p20171_participacion, p20172_participacion)

fwrite(p2017_participacion, "datos-procesados/presidenciales_2017_participacion_total.csv")

#### parlamentarias 2017 ####

d2017 <- read_csv("datos-semi-procesados/d2017_votacion_total.csv") %>% 
  select(comuna_name, candidato, partido, votos_candidato, electo) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT", sub = "")),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")),
    comuna_name = ifelse(comuna_name == "AISEN", "AYSEN", comuna_name),
    comuna_name = ifelse(comuna_name == "ALTO BIOBIO", "ALTO BIO BIO", comuna_name),
    comuna_name = ifelse(comuna_name == "CONCON", "CON CON", comuna_name),
    comuna_name = ifelse(comuna_name == "COYHAIQUE", "COIHAIQUE", comuna_name),
    comuna_name = ifelse(comuna_name == "LLAY-LLAY", "LLAY LLAY", comuna_name),
    comuna_name = ifelse(comuna_name == "MOSTAZAL", "SAN FRANCISCO DE MOSTAZAL", comuna_name),
    comuna_name = ifelse(comuna_name == "TILTIL", "TIL-TIL", comuna_name),
    comuna_name = ifelse(comuna_name == "TREGUACO", "TREHUACO", comuna_name),
    partido = toupper(iconv(partido, from = "", to = "ASCII//TRANSLIT", sub = "")),
    partido = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", partido, perl = TRUE),
    partido = ifelse(partido == "INDEPENDIENTES (IND)", "INDEPENDIENTES", partido),
    partido = ifelse(partido == "EVOLUCION POLITICA", "EVOPOLI", partido)
  ) %>% 
  left_join(candidatos, by = c("candidato" = "candidato")) %>% 
  left_join(candidatos, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  left_join(comunas) %>% 
  filter(!is.na(comuna_datachile_id)) %>% 
  left_join(partidos) %>% 
  mutate(partido_id = ifelse(candidato == "VOTOS NULOS" | candidato == "VOTOS EN BLANCO", 0, partido_id)) %>% 
  select(comuna_datachile_id, candidato_id, partido_id, votos_candidato, electo) %>% 
  group_by(comuna_datachile_id, candidato_id, partido_id, electo) %>% 
  summarise(votos_candidato = sum(votos_candidato, na.rm = T)) %>% 
  mutate(year = 2017,
         election_id = 4)

# d2017 %>% select(comuna_name, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()
# d2017 %>% filter(is.na(comuna_datachile_id))
# d2017 %>% select(partido, partido_id) %>% filter(is.na(partido_id)) %>% distinct()
# d2017 %>% select(candidato, candidato_id) %>% filter(is.na(candidato_id)) %>% distinct()

try(dir.create("datos-procesados"))
fwrite(d2017, "datos-procesados/d2017-procesado.csv")

#### senatoriales 2017 ####

s2017 <- read_csv("datos-semi-procesados/s2017_votacion_total.csv") %>% 
  select(comuna_name, candidato, partido, votos_candidato, electo) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT", sub = "")),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")),
    comuna_name = ifelse(comuna_name == "AISEN", "AYSEN", comuna_name),
    comuna_name = ifelse(comuna_name == "ALTO BIOBIO", "ALTO BIO BIO", comuna_name),
    comuna_name = ifelse(comuna_name == "CONCON", "CON CON", comuna_name),
    comuna_name = ifelse(comuna_name == "COYHAIQUE", "COIHAIQUE", comuna_name),
    comuna_name = ifelse(comuna_name == "LLAY-LLAY", "LLAY LLAY", comuna_name),
    comuna_name = ifelse(comuna_name == "MOSTAZAL", "SAN FRANCISCO DE MOSTAZAL", comuna_name),
    comuna_name = ifelse(comuna_name == "TILTIL", "TIL-TIL", comuna_name),
    comuna_name = ifelse(comuna_name == "TREGUACO", "TREHUACO", comuna_name),
    partido = toupper(iconv(partido, from = "", to = "ASCII//TRANSLIT", sub = "")),
    partido = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", partido, perl = TRUE),
    partido = ifelse(partido == "INDEPENDIENTES (IND)", "INDEPENDIENTES", partido),
    partido = ifelse(partido == "EVOLUCION POLITICA", "EVOPOLI", partido)
  ) %>% 
  left_join(candidatos, by = c("candidato" = "candidato")) %>% 
  left_join(candidatos, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  left_join(comunas) %>% 
  filter(!is.na(comuna_datachile_id)) %>% 
  left_join(partidos) %>% 
  mutate(partido_id = ifelse(candidato == "VOTOS NULOS" | candidato == "VOTOS EN BLANCO", 0, partido_id)) %>% 
  select(comuna_datachile_id, candidato_id, partido_id, votos_candidato, electo) %>% 
  group_by(comuna_datachile_id, candidato_id, partido_id, electo) %>% 
  summarise(votos_candidato = sum(votos_candidato, na.rm = T)) %>% 
  mutate(year = 2017,
         election_id = 3)

# s2017 %>% select(comuna_name, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()
# s2017 %>% filter(is.na(comuna_datachile_id))
# s2017 %>% select(partido, partido_id) %>% filter(is.na(partido_id)) %>% distinct()
# s2017 %>% select(candidato, candidato_id) %>% filter(is.na(candidato_id)) %>% distinct()

try(dir.create("datos-procesados"))
fwrite(s2017, "datos-procesados/s2017-procesado.csv")

#### municipales 2016 ####

#### computo ####

m2016 <- read_csv("datos-semi-procesados/m2016_votacion_total.csv") %>% 
  select(comuna, partido, candidato, votos_ter) %>% 
  rename(votos_candidato = votos_ter, comuna_name = comuna) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT", sub = "")),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")),
    comuna_name = ifelse(comuna_name == "AISEN", "AYSEN", comuna_name),
    comuna_name = ifelse(comuna_name == "ALTO BIOBIO", "ALTO BIO BIO", comuna_name),
    comuna_name = ifelse(comuna_name == "CONCON", "CON CON", comuna_name),
    comuna_name = ifelse(comuna_name == "COYHAIQUE", "COIHAIQUE", comuna_name),
    comuna_name = ifelse(comuna_name == "LLAY-LLAY", "LLAY LLAY", comuna_name),
    comuna_name = ifelse(comuna_name == "MOSTAZAL", "SAN FRANCISCO DE MOSTAZAL", comuna_name),
    comuna_name = ifelse(comuna_name == "TILTIL", "TIL-TIL", comuna_name),
    comuna_name = ifelse(comuna_name == "TREGUACO", "TREHUACO", comuna_name),
    partido = toupper(iconv(partido, from = "", to = "ASCII//TRANSLIT", sub = "")),
    partido = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", partido, perl = TRUE),
    partido = ifelse(partido == "INDEPENDIENTE", "INDEPENDIENTES", partido)
  ) %>% 
  left_join(candidatos, by = c("candidato" = "candidato")) %>% 
  left_join(candidatos, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  left_join(partidos) %>% 
  mutate(partido_id = ifelse(candidato == "VOTOS NULOS" | candidato == "VOTOS EN BLANCO", 0, partido_id)) %>% 
  left_join(comunas) %>% 
  filter(!is.na(comuna_datachile_id)) %>% 
  select(comuna_datachile_id, candidato_id, partido_id, votos_candidato) %>% 
  group_by(comuna_datachile_id, candidato_id, partido_id) %>% 
  summarise(votos_candidato = sum(votos_candidato, na.rm = T)) %>% 
  ungroup() %>% 
  group_by(comuna_datachile_id) %>% 
  mutate(electo = ifelse(votos_candidato == max(votos_candidato), 1, 0),
         year = 2016, 
         election_id = 5) 

# los votos de antartica se suman a cabo de hornos
# https://prensaantartica.com/2016/10/18/comuna-antartica-pese-a-no-tener-municipio-siete-personas-votaran-en-villa-las-estrellas/
# en el caso de huara el alcalde se eligio por sorteo tras empate
# http://www2.latercera.com/noticia/jose-bartolo-nuevo-alcalde-huara-fue-electo-sorteo/

m2016 <- m2016 %>% 
  mutate(electo = ifelse(comuna_datachile_id == 345 & candidato_id == 665, 1,
                         ifelse(comuna_datachile_id == 345 & candidato_id != 665, 0, electo))) %>% # fix cabo de hornos
  mutate(electo = ifelse(comuna_datachile_id == 108 & candidato_id == 970, 1,
                         ifelse(comuna_datachile_id == 108 & candidato_id != 970, 0, electo))) # fix huara

# m2016 %>% select(comuna_name, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()
# m2016 %>% filter(is.na(comuna_datachile_id))
# m2016 %>% select(candidato, candidato_id) %>% filter(is.na(candidato_id)) %>% distinct()
# m2016 %>% select(partido, partido_id) %>% filter(is.na(partido_id)) %>% distinct()
# m2016 %>% select(candidato, partido, partido_id) %>% filter(is.na(partido_id)) %>% distinct()

try(dir.create("datos-procesados"))
fwrite(m2016, "datos-procesados/m2016-procesado.csv")

#### participacion ####

m2016_padron <- read_excel("resultados-municipales-2016/municipales_2016_padron.xlsx") %>% 
  rename(comuna_name = COMUNA, total_electores = TOTAL) %>% 
  mutate(comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")),
         comuna_name = ifelse(comuna_name == "AISEN", "AYSEN", comuna_name),
         comuna_name = ifelse(comuna_name == "ALTO BIOBIO", "ALTO BIO BIO", comuna_name),
         comuna_name = ifelse(comuna_name == "CONCON", "CON CON", comuna_name),
         comuna_name = ifelse(comuna_name == "COYHAIQUE", "COIHAIQUE", comuna_name),
         comuna_name = ifelse(comuna_name == "LLAY-LLAY", "LLAY LLAY", comuna_name),
         comuna_name = ifelse(comuna_name == "MOSTAZAL", "SAN FRANCISCO DE MOSTAZAL", comuna_name),
         comuna_name = ifelse(comuna_name == "TILTIL", "TIL-TIL", comuna_name),
         comuna_name = ifelse(comuna_name == "TREGUACO", "TREHUACO", comuna_name)) %>% 
  left_join(comunas %>% 
              select(comuna_name, comuna_datachile_id) %>% 
              mutate(comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")))
  ) %>% 
  select(matches("comuna"), total_electores)

m2016_participacion <- m2016 %>% 
  group_by(year, election_id, comuna_datachile_id) %>% 
  summarise(total_votacion = sum(votos_candidato)) %>% 
  left_join(m2016_padron %>% select(-comuna_name))

fwrite(m2016_participacion, "datos-procesados/municipales_2016_participacion_total.csv")

#### presidenciales 2013 ####

#### 1era vuelta #####

p2013_partidos <- read_csv("datos-semi-procesados/p20131_votacion_total.csv") %>% 
  select(candidato) %>% 
  filter(!is.na(candidato), candidato != "TOTALES") %>% 
  distinct() %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE)
  ) %>% 
  left_join(candidatos) %>% 
  mutate(partido_id = c(8, 4, 23, 4, 12, 10, 6, 13, 8, 0, 0)) %>% 
  select(candidato_id, partido_id)

p20131 <- read_csv("datos-semi-procesados/p20131_votacion_total.csv") %>% 
  select(comuna, candidato, votos_tricel) %>% 
  rename(votos_candidato = votos_tricel,
         comuna_name = comuna) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT", sub = "")),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")),
    comuna_name = ifelse(comuna_name == "AISEN", "AYSEN", comuna_name),
    comuna_name = ifelse(comuna_name == "ALTO BIOBIO", "ALTO BIO BIO", comuna_name),
    comuna_name = ifelse(comuna_name == "CONCON", "CON CON", comuna_name),
    comuna_name = ifelse(comuna_name == "COYHAIQUE", "COIHAIQUE", comuna_name),
    comuna_name = ifelse(comuna_name == "LLAY-LLAY", "LLAY LLAY", comuna_name),
    comuna_name = ifelse(comuna_name == "MOSTAZAL", "SAN FRANCISCO DE MOSTAZAL", comuna_name),
    comuna_name = ifelse(comuna_name == "TILTIL", "TIL-TIL", comuna_name),
    comuna_name = ifelse(comuna_name == "TREGUACO", "TREHUACO", comuna_name),
    comuna_name = ifelse(comuna_name == "OHIGGINS", "O'HIGGINS", comuna_name)
  ) %>% 
  left_join(candidatos, by = c("candidato" = "candidato")) %>% 
  left_join(candidatos, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  left_join(comunas) %>% 
  filter(!is.na(comuna_datachile_id)) %>% 
  select(comuna_datachile_id, candidato_id, votos_candidato) %>% 
  group_by(comuna_datachile_id, candidato_id) %>% 
  summarise(votos_candidato = sum(votos_candidato, na.rm = T)) %>% 
  ungroup() %>% 
  left_join(p2013_partidos) %>% 
  mutate(electo = 0,
         year = 2013,
         election_id = 1) 

# p20131 %>% select(comuna_name, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()
# p20131 %>% filter(is.na(comuna_datachile_id))
# p20131 %>% select(candidato, candidato_id) %>% filter(is.na(candidato_id)) %>% distinct()

try(dir.create("datos-procesados"))
fwrite(p20131, "datos-procesados/p20131-procesado.csv")

#### 2da vuelta ####

p20132 <- read_csv("datos-semi-procesados/p20132_votacion_total.csv") %>% 
  select(comuna, candidato, votos_tricel) %>% 
  rename(votos_candidato = votos_tricel,
         comuna_name = comuna) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT", sub = "")),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")),
    comuna_name = ifelse(comuna_name == "AISEN", "AYSEN", comuna_name),
    comuna_name = ifelse(comuna_name == "ALTO BIOBIO", "ALTO BIO BIO", comuna_name),
    comuna_name = ifelse(comuna_name == "CONCON", "CON CON", comuna_name),
    comuna_name = ifelse(comuna_name == "COYHAIQUE", "COIHAIQUE", comuna_name),
    comuna_name = ifelse(comuna_name == "LLAY-LLAY", "LLAY LLAY", comuna_name),
    comuna_name = ifelse(comuna_name == "LLAILLAY", "LLAY LLAY", comuna_name),
    comuna_name = ifelse(comuna_name == "MARCHIHUE", "MARCHIGUE", comuna_name),
    comuna_name = ifelse(comuna_name == "MOSTAZAL", "SAN FRANCISCO DE MOSTAZAL", comuna_name),
    comuna_name = ifelse(comuna_name == "TILTIL", "TIL-TIL", comuna_name),
    comuna_name = ifelse(comuna_name == "TREGUACO", "TREHUACO", comuna_name),
    comuna_name = ifelse(comuna_name == "OHIGGINS", "O'HIGGINS", comuna_name)
  ) %>% 
  left_join(candidatos, by = c("candidato" = "candidato")) %>% 
  left_join(candidatos, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  left_join(comunas) %>% 
  filter(!is.na(comuna_datachile_id)) %>% 
  select(comuna_datachile_id, candidato_id, votos_candidato) %>% 
  group_by(comuna_datachile_id, candidato_id) %>% 
  summarise(votos_candidato = sum(votos_candidato, na.rm = T))

p20132_lugar <- p20132 %>% 
  group_by(candidato_id) %>% 
  summarise(total = sum(votos_candidato)) %>% 
  mutate(electo = ifelse(total == max(total), 1, 0)) %>% 
  select(-total)

p20132 <- p20132 %>% 
  left_join(p20132_lugar) %>% 
  left_join(p2013_partidos) %>% 
  mutate(year = 2013, 
         election_id = 2)

# p20132 %>% select(comuna_name, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()
# p20132 %>% filter(is.na(comuna_datachile_id))
# p20132 %>% select(candidato, candidato_id) %>% filter(is.na(candidato_id)) %>% distinct()
# 
# p20132 %>%
#   left_join(candidatos) %>%
#   group_by(candidato, electo) %>%
#   summarise(sum = sum(votos_candidato))

try(dir.create("datos-procesados"))
fwrite(p20132, "datos-procesados/p20132-procesado.csv")

#### parlamentarias 2013 ####

# s2013_sinmatch <- read_csv("datos-semi-procesados/s2013_votacion_total.csv") %>% 
#   select(candidato) %>%
#   mutate(candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = ""))) %>% 
#   left_join(candidatos) %>% 
#   left_join(candidatos, by = c("candidato" = "candidato_2")) %>% 
#   filter(is.na(candidato_id.x) & is.na(candidato_id.y)) %>% 
#   distinct() %>% 
#   select(candidato)
# 
# d2013_sinmatch <- read_csv("datos-semi-procesados/d2013_votacion_total.csv") %>% 
#   select(candidato) %>%
#   mutate(candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = ""))) %>% 
#   left_join(candidatos) %>% 
#   left_join(candidatos, by = c("candidato" = "candidato_2")) %>% 
#   filter(is.na(candidato_id.x) & is.na(candidato_id.y)) %>% 
#   distinct() %>% 
#   select(candidato)
# 
# parlamentarias_2013_faltantes <- bind_rows(s2013_sinmatch, d2013_sinmatch) %>% 
#   separate(candidato, paste0("X", 1:10), sep = " ", remove = F) %>% 
#   remove_empty_cols()
# 
# for (j in 1:720) {
#   parlamentarias_2013_faltantes <- parlamentarias_2013_faltantes %>% 
#     unite("p", paste0("X", permn(1:6)[[j]]), remove = F)
# }
# 
# parlamentarias_2013_faltantes <- parlamentarias_2013_faltantes %>% 
#   clean_names() %>% 
#   select(-c(x1:x6))
# 
# parlamentarias_2013_faltantes <- parlamentarias_2013_faltantes %>% 
#   mutate(val = 1) %>% 
#   gather(val, permutacion, -candidato) %>% 
#   select(-val) %>% 
#   mutate(permutacion = gsub("_NA", "", permutacion),
#          permutacion = gsub("_", " ", permutacion),
#          permutacion = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", permutacion, perl = TRUE))
#   
# parlamentarias_2013_faltantes_1 <- parlamentarias_2013_faltantes %>% 
#   left_join(candidatos, by = c("permutacion" = "candidato")) %>% 
#   left_join(candidatos, by = c("permutacion" = "candidato_2")) %>% 
#   mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
#   filter(!is.na(candidato_id)) %>% 
#   select(candidato.x, permutacion, candidato_id) %>% 
#   rename(candidato = candidato.x) %>% 
#   distinct(permutacion, .keep_all = T)
# 
# fwrite(parlamentarias_2013_faltantes_1, "candidatos_variaciones_2013.csv")
# 
# parlamentarias_2013_faltantes_2 <- parlamentarias_2013_faltantes %>% 
#   left_join(candidatos, by = c("permutacion" = "candidato")) %>% 
#   left_join(candidatos, by = c("permutacion" = "candidato_2")) %>% 
#   mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
#   filter(is.na(candidato_id)) %>% 
#   select(candidato.x, permutacion, candidato_id) %>% 
#   rename(candidato = candidato.x) %>% 
#   distinct(candidato, .keep_all = T) %>% 
#   anti_join(parlamentarias_2013_faltantes_1 %>% select(candidato))
# 
# fwrite(parlamentarias_2013_faltantes_2, "candidatos_variaciones_sin_match_2013.csv")

# se agregaron 5 candidatos manialmente y 19 se corrigieron manualmente

candidatos_2013 <- fread("candidatos_variaciones_2013.csv") %>% 
  select(-permutacion)

candidatos_2013_rm <- fread("candidatos_variaciones_sin_match_2013_rev_manual.csv") %>% 
  mutate(permutacion2 = toupper(iconv(permutacion2, from = "", to = "ASCII//TRANSLIT", sub = ""))) %>% 
  left_join(candidatos, by = c("permutacion2" = "candidato")) %>% 
  select(candidato.x, candidato_id) %>% 
  rename(candidato = candidato.x)

candidatos_2013_match <- bind_rows(candidatos_2013, candidatos_2013_rm)
d2013 <- read_csv("datos-semi-procesados/d2013_votacion_total.csv") %>% 
  select(candidato, partido, comuna_name, electo, votos_candidato) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT", sub = "")),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")),
    comuna_name = ifelse(comuna_name == "AISEN", "AYSEN", comuna_name),
    comuna_name = ifelse(comuna_name == "ALTO BIOBIO", "ALTO BIO BIO", comuna_name),
    comuna_name = ifelse(comuna_name == "CONCON", "CON CON", comuna_name),
    comuna_name = ifelse(comuna_name == "COYHAIQUE", "COIHAIQUE", comuna_name),
    comuna_name = ifelse(comuna_name == "LLAY-LLAY", "LLAY LLAY", comuna_name),
    comuna_name = ifelse(comuna_name == "MOSTAZAL", "SAN FRANCISCO DE MOSTAZAL", comuna_name),
    comuna_name = ifelse(comuna_name == "TILTIL", "TIL-TIL", comuna_name),
    comuna_name = ifelse(comuna_name == "TREGUACO", "TREHUACO", comuna_name),
    comuna_name = ifelse(comuna_name == "OHIGGINS", "O'HIGGINS", comuna_name),
    partido = toupper(iconv(partido, from = "", to = "ASCII//TRANSLIT", sub = "")),
    partido = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", partido, perl = TRUE),
    partido = ifelse(partido == "DEMOCRATA CRISTIANO", "PARTIDO DEMOCRATA CRISTIANO", partido),
    partido = ifelse(partido == "SOCIALISTA DE CHILE", "PARTIDO SOCIALISTA DE CHILE", partido),
    partido = ifelse(partido == "INDEPENDIENTE", "INDEPENDIENTES", partido),
    partido = ifelse(partido == "POR LA DEMOCRACIA", "PARTIDO POR LA DEMOCRACIA", partido),
    partido = ifelse(partido == "REGIONALISTA DE LOS INDEPENDIE", "PARTIDO REGIONALISTA INDEPENDIENTE", partido),
    partido = ifelse(partido == "RADICAL SOCIALDEMOCRATA", "PARTIDO RADICAL SOCIALDEMOCRATA", partido),
    partido = ifelse(partido == "HUMANISTA", "PARTIDO HUMANISTA", partido),
    electo = ifelse(electo == "SI", 1, 0)
  ) %>% 
  left_join(candidatos %>% select(-candidato_2)) %>% 
  left_join(candidatos_2013_match, by = "candidato") %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  left_join(comunas) %>% 
  filter(!is.na(comuna_datachile_id)) %>% 
  left_join(partidos) %>% 
  mutate(partido_id = ifelse(candidato == "VOTOS NULOS" | candidato == "VOTOS EN BLANCO", 0, partido_id)) %>% 
  select(comuna_datachile_id, candidato_id, partido_id, votos_candidato, electo) %>% 
  group_by(comuna_datachile_id, candidato_id, partido_id, electo) %>% 
  summarise(votos_candidato = sum(votos_candidato, na.rm = T)) %>% 
  mutate(year = 2013,
         election_id = 4)

# d2013 %>% select(comuna_name, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()
# d2013 %>% filter(is.na(comuna_datachile_id))
# d2013 %>% select(partido, partido_id) %>% filter(is.na(partido_id)) %>% distinct()
# d2013 %>% select(candidato, candidato_id) %>% filter(is.na(candidato_id)) %>% distinct()
# x <- d2013 %>% ungroup() %>% select(candidato_id, electo) %>% distinct() %>% filter(electo == 1)

try(dir.create("datos-procesados"))
fwrite(d2013, "datos-procesados/d2013-procesado.csv")

#### senatoriales 2013 ####

s2013 <- read_csv("datos-semi-procesados/s2013_votacion_total.csv") %>% 
  select(candidato, partido, comuna_name, electo, votos_candidato) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub("GUEVARA CORTES DANIEL", "DANIEL ANDRES GUEVARA CORTES", candidato),
    candidato = gsub("CONTRERAS BRANA GISELA", "GISELA CONTRERAS BRANA", candidato),
    candidato = gsub("ORREGO HENRIQUEZ JIMENA ESTRELLA", "JIMENA ESTRELLA ORREGO HENRIQUEZ", candidato),
    candidato = gsub("ROJAS MOLINA MANUEL", "MANUEL ROJAS MOLINA", candidato),
    candidato = gsub("MUNOZ D'ALBORA ADRIANA", "ADRIANA MUNOZ D'ALBORA", candidato),
    candidato = gsub("NAVARRO BRAIN ALEJANDRO", "ALEJANDRO NAVARRO BRAIN", candidato),
    candidato = gsub("ESCALONA MEDINA CAMILO", "CAMILO ESCALONA MEDINA", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT", sub = "")),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")),
    comuna_name = ifelse(comuna_name == "AISEN", "AYSEN", comuna_name),
    comuna_name = ifelse(comuna_name == "ALTO BIOBIO", "ALTO BIO BIO", comuna_name),
    comuna_name = ifelse(comuna_name == "CONCON", "CON CON", comuna_name),
    comuna_name = ifelse(comuna_name == "COYHAIQUE", "COIHAIQUE", comuna_name),
    comuna_name = ifelse(comuna_name == "LLAY-LLAY", "LLAY LLAY", comuna_name),
    comuna_name = ifelse(comuna_name == "MOSTAZAL", "SAN FRANCISCO DE MOSTAZAL", comuna_name),
    comuna_name = ifelse(comuna_name == "TILTIL", "TIL-TIL", comuna_name),
    comuna_name = ifelse(comuna_name == "TREGUACO", "TREHUACO", comuna_name),
    comuna_name = ifelse(comuna_name == "OHIGGINS", "O'HIGGINS", comuna_name),
    partido = toupper(iconv(partido, from = "", to = "ASCII//TRANSLIT", sub = "")),
    partido = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", partido, perl = TRUE),
    partido = ifelse(partido == "DEMOCRATA CRISTIANO", "PARTIDO DEMOCRATA CRISTIANO", partido),
    partido = ifelse(partido == "SOCIALISTA DE CHILE", "PARTIDO SOCIALISTA DE CHILE", partido),
    partido = ifelse(partido == "INDEPENDIENTE", "INDEPENDIENTES", partido),
    partido = ifelse(partido == "POR LA DEMOCRACIA", "PARTIDO POR LA DEMOCRACIA", partido),
    partido = ifelse(partido == "REGIONALISTA DE LOS INDEPENDIE", "PARTIDO REGIONALISTA INDEPENDIENTE", partido),
    partido = ifelse(partido == "RADICAL SOCIALDEMOCRATA", "PARTIDO RADICAL SOCIALDEMOCRATA", partido),
    partido = ifelse(partido == "HUMANISTA", "PARTIDO HUMANISTA", partido),
    electo = ifelse(electo == "SI", 1, 0)
  ) %>% 
  left_join(candidatos %>% select(-candidato_2)) %>% 
  left_join(candidatos_2013_match, by = "candidato") %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  left_join(comunas) %>% 
  filter(!is.na(comuna_datachile_id)) %>% 
  left_join(partidos) %>% 
  mutate(partido_id = ifelse(candidato == "VOTOS NULOS" | candidato == "VOTOS EN BLANCO", 0, partido_id)) %>% 
  select(comuna_datachile_id, candidato_id, partido_id, votos_candidato, electo) %>% 
  group_by(comuna_datachile_id, candidato_id, partido_id, electo) %>% 
  summarise(votos_candidato = sum(votos_candidato, na.rm = T)) %>% 
  mutate(year = 2013,
         election_id = 3)

# s2013 %>% select(comuna_name, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()
# s2013 %>% filter(is.na(comuna_datachile_id))
# s2013 %>% select(partido, partido_id) %>% filter(is.na(partido_id)) %>% distinct()
# s2013 %>% select(candidato, candidato_id) %>% filter(is.na(candidato_id)) %>% distinct()
# x <- s2013 %>% ungroup() %>% select(candidato_id, electo) %>% distinct() %>% filter(electo == 1)

try(dir.create("datos-procesados"))
fwrite(s2013, "datos-procesados/s2013-procesado.csv")

# x <- s2013 %>% 
#   ungroup() %>% 
#   filter(electo == 1) %>% 
#   left_join(candidatos) %>% 
#   left_join(comunas) %>% 
#   left_join(partidos) %>% 
#   filter(region_id == 8) %>% 
#   select(candidato, partido) %>% 
#   distinct()

#### senatoriales 2009 ####

s2009 <- read_csv("datos-semi-procesados/s2009_votacion_total.csv") %>% 
  select(candidato, partido, comuna_name, electo, votos_candidato) %>% 
  mutate(
    candidato = toupper(iconv(candidato, from = "", to = "ASCII//TRANSLIT", sub = "")),
    candidato = gsub(".*\\.", "", candidato),
    candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl = TRUE),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT", sub = "")),
    comuna_name = toupper(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")),
    comuna_name = ifelse(comuna_name == "AISEN", "AYSEN", comuna_name),
    comuna_name = ifelse(comuna_name == "ALTO BIOBIO", "ALTO BIO BIO", comuna_name),
    comuna_name = ifelse(comuna_name == "CONCON", "CON CON", comuna_name),
    comuna_name = ifelse(comuna_name == "COYHAIQUE", "COIHAIQUE", comuna_name),
    comuna_name = ifelse(comuna_name == "LLAY-LLAY", "LLAY LLAY", comuna_name),
    comuna_name = ifelse(comuna_name == "MOSTAZAL", "SAN FRANCISCO DE MOSTAZAL", comuna_name),
    comuna_name = ifelse(comuna_name == "TILTIL", "TIL-TIL", comuna_name),
    comuna_name = ifelse(comuna_name == "TREGUACO", "TREHUACO", comuna_name),
    comuna_name = ifelse(comuna_name == "OHIGGINS", "O'HIGGINS", comuna_name),
    partido = toupper(iconv(partido, from = "", to = "ASCII//TRANSLIT", sub = "")),
    partido = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", partido, perl = TRUE),
    partido = ifelse(partido == "DEMOCRATA CRISTIANO", "PARTIDO DEMOCRATA CRISTIANO", partido),
    partido = ifelse(partido == "SOCIALISTA DE CHILE", "PARTIDO SOCIALISTA DE CHILE", partido),
    partido = ifelse(partido == "INDEPENDIENTE", "INDEPENDIENTES", partido),
    partido = ifelse(partido == "POR LA DEMOCRACIA", "PARTIDO POR LA DEMOCRACIA", partido),
    partido = ifelse(partido == "REGIONALISTA DE LOS INDEPENDIE", "PARTIDO REGIONALISTA INDEPENDIENTE", partido),
    partido = ifelse(partido == "RADICAL SOCIALDEMOCRATA", "PARTIDO RADICAL SOCIALDEMOCRATA", partido),
    partido = ifelse(partido == "HUMANISTA", "PARTIDO HUMANISTA", partido),
    electo = ifelse(electo == "SI", 1, 0)
  ) %>% 
  left_join(candidatos, by = c("candidato" = "candidato")) %>% 
  left_join(candidatos, by = c("candidato" = "candidato_2")) %>% 
  mutate(candidato_id = ifelse(is.na(candidato_id.x), candidato_id.y, candidato_id.x)) %>% 
  left_join(comunas) %>% 
  filter(!is.na(comuna_datachile_id)) %>% 
  left_join(partidos) %>% 
  mutate(partido_id = ifelse(candidato == "VOTOS NULOS" | candidato == "VOTOS EN BLANCO", 0, partido_id)) %>% 
  select(comuna_datachile_id, candidato_id, partido_id, votos_candidato, electo) %>% 
  group_by(comuna_datachile_id, candidato_id, partido_id, electo) %>% 
  summarise(votos_candidato = sum(votos_candidato, na.rm = T)) %>% 
  mutate(year = 2009,
         election_id = 3)

# s2009 %>% select(comuna_name, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()
# s2009 %>% filter(is.na(comuna_datachile_id))
# s2009 %>% select(partido, partido_id) %>% filter(is.na(partido_id)) %>% distinct()
# s2009 %>% select(candidato, candidato_id) %>% filter(is.na(candidato_id)) %>% distinct()

# x <- s2009 %>% ungroup() %>% select(candidato_id, electo) %>% distinct() %>% filter(electo == 1)

try(dir.create("datos-procesados"))
fwrite(s2009, "datos-procesados/s2009-procesado.csv")
