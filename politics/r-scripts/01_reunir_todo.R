if (!require(pacman)) install.packages("pacman")
p_load(data.table, readr, jsonlite, readxl, dplyr, tidyr, stringr, janitor, purrr)

candidatos_en_produccion <- read_excel("candidatos_en_produccion_07_02_2018.xlsx")

candidatos_en_produccion_nd <- candidatos_en_produccion %>% 
  distinct(candidato, .keep_all = T) %>% 
  fwrite("candidatos_en_produccion_sin_duplicados_07_02_2018.csv")

#### presidenciales 2017 ####

#### 2da vuelta ####

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

p20172_computo <- list.files("resultados-presidenciales-2017/segunda-votacion-computo", 
                                                pattern = "json", full.names = T)

p20172_participacion <- list.files("resultados-presidenciales-2017/segunda-votacion-participacion", 
                                                      pattern = "json", full.names = T)

p20172_nombres <- read_lines("resultados-presidenciales-2017/nombres-comunas-segunda-votacion")
p20172_nombres <- gsub("</option>", "</option>\n", p20172_nombres)
p20172_nombres <- read_lines(p20172_nombres)
p20172_nombres <- as_tibble(str_extract(string = p20172_nombres, pattern = regex("(?<=>).*(?=<)"))) %>% 
  filter(!grepl("Comunas", value)) %>% 
  filter(!is.na(value)) %>% 
  mutate(computo = p20172_links_computo$X2,
         participacion = p20172_links_participacion$X2) %>% 
  rename(comuna_name = value)

for (j in 1:length(p20172_computo)) {
  x <- fromJSON(p20172_computo[[j]])
  
  votacion <- x$data %>% 
    bind_rows(x$resumen) %>% 
    filter(!grepl("Emitidos|Total", a)) %>% 
    select(a, c) %>% 
    rename(candidato = a, votos = c) %>% 
    mutate(votos = as.numeric(gsub("\\.", "", votos))) %>% 
    mutate(json = p20172_computo[[j]]) %>% 
    left_join(p20172_nombres %>% 
                select(-participacion), by = c("json" = "computo")) %>% 
    select(-json) %>% 
    mutate(election_id = 2, year = 2017)
   
  if (!exists("p20172_votacion_total")) {
    p20172_votacion_total <- votacion
  }
  
  if (j > 1) {
    p20172_votacion_total <- bind_rows(p20172_votacion_total, votacion)
  }
  rm(votacion)
}

for (j in 1:length(p20172_participacion)) {
  y <- fromJSON(p20172_participacion[[j]])
  
  participacion <- y$data %>% 
    mutate(c = as.numeric(gsub("\\.", "", c)),
           d = as.numeric(gsub("\\.", "", d))) %>% 
    summarise(total_electores = sum(c, na.rm = T),
              total_votacion = sum(d, na.rm = T)) %>% 
    mutate(json = p20172_participacion[[j]]) %>% 
    left_join(p20172_nombres %>% 
                select(-computo), by = c("json" = "participacion")) %>% 
    select(-json) %>% 
    mutate(election_id = 2, year = 2017)

  if (!exists("p20172_participacion_total")) {
    p20172_participacion_total <- participacion
  }
  
  if (j > 1) {
    p20172_participacion_total <- bind_rows(p20172_participacion_total, participacion)
  }
  rm(participacion)
}

fwrite(p20172_participacion_total, "datos-semi-procesados/p20172_participacion_total.csv")
fwrite(p20172_votacion_total, "datos-semi-procesados/p20172_votacion_total.csv")

#### 1era vuelta ####

p20171_links_computo <- p20172_links_computo %>% 
  select(-X1) %>% 
  mutate(X2 = gsub("segunda", "primera", X2))

p20171_links_participacion <- p20172_links_participacion %>% 
  select(-X1) %>% 
  mutate(X2 = gsub("segunda", "primera", X2))

p20171_computo <- list.files("resultados-presidenciales-2017/primera-votacion-computo", 
                             pattern = "json", full.names = T)

p20171_participacion <- list.files("resultados-presidenciales-2017/primera-votacion-participacion", 
                                   pattern = "json", full.names = T)


p20171_nombres <- p20172_nombres %>% 
  mutate(computo = gsub("segunda", "primera", computo),
         participacion = gsub("segunda", "primera", participacion))

for (j in 1:length(p20171_computo)) {
  x <- fromJSON(p20171_computo[[j]])
  
  votacion <- x$data %>% 
    bind_rows(x$resumen) %>% 
    filter(!grepl("Emitidos|Total", a)) %>% 
    select(a, c) %>% 
    rename(candidato = a, votos = c) %>% 
    mutate(votos = as.numeric(gsub("\\.", "", votos))) %>% 
    mutate(json = p20171_computo[[j]]) %>% 
    left_join(p20171_nombres %>% 
                select(-participacion), by = c("json" = "computo")) %>% 
    select(-json) %>% 
    mutate(election_id = 1, year = 2017)
  
  if (!exists("p20171_votacion_total")) {
    p20171_votacion_total <- votacion
  }
  
  if (j > 1) {
    p20171_votacion_total <- bind_rows(p20171_votacion_total, votacion)
  }
  rm(votacion)
}

for (j in 1:length(p20172_participacion)) {
  y <- fromJSON(p20171_participacion[[j]])
  
  participacion <- y$data %>% 
    mutate(c = as.numeric(gsub("\\.", "", c)),
           d = as.numeric(gsub("\\.", "", d))) %>% 
    summarise(total_electores = sum(c, na.rm = T),
              total_votacion = sum(d, na.rm = T)) %>% 
    mutate(json = p20171_participacion[[j]]) %>% 
    left_join(p20171_nombres %>% 
                select(-computo), by = c("json" = "participacion")) %>% 
    select(-json) %>% 
    mutate(election_id = 2, year = 2017)
  
  if (!exists("p20171_participacion_total")) {
    p20171_participacion_total <- participacion
  }
  
  if (j > 1) {
    p20171_participacion_total <- bind_rows(p20171_participacion_total, participacion)
  }
  rm(participacion)
}

fwrite(p20171_participacion_total, "datos-semi-procesados/p20171_participacion_total.csv")
fwrite(p20171_votacion_total, "datos-semi-procesados/p20171_votacion_total.csv")

#### parlamentarias 2017 ####

d2017_links <- read_delim("resultados-parlamentarias-2017/links-diputados-computo", 
                          "\t", escape_double = FALSE, col_names = FALSE, 
                          trim_ws = TRUE)

d2017_links <- d2017_links %>% 
  mutate(X1 = gsub("curl \'", "", X1),
         X1 = gsub("\' .*", "", X1)) %>% 
  filter(!grepl("google", X1))

d2017_links_computo <- d2017_links %>% 
  filter(grepl("computo", X1)) %>% 
  mutate(X2 = gsub(".*comunas/", "", X1),
         X2 = paste0("resultados-parlamentarias-2017/diputados-computo/", X2))

d2017_nombres <- p20171_nombres %>% 
  select(-participacion) %>% 
  mutate(computo = gsub("presidenciales", "parlamentarias", computo),
         computo = gsub("primera-votacion", "diputados", computo))

d2017_computo <- list.files("resultados-parlamentarias-2017/diputados-computo", 
                            pattern = "json", full.names = T)

for (j in 1:length(d2017_computo)) {
  x <- fromJSON(d2017_computo[[j]])
  
  y <- as_tibble(x$data) %>% 
    unnest(sd)
  
  y1 <- y %>% filter(a == "CANDIDATURA INDEPENDIENTE")
  y2 <- y %>% filter(a != "CANDIDATURA INDEPENDIENTE") %>% unnest(sd)
  
  y1 <- y1 %>% 
    select(a, a1, c1, f1) %>% 
    rename(lista = a, candidato = a1, votos_candidato = c1, electo = f1) %>% 
    mutate(candidato = gsub("^.*\\. ", "", candidato),
           votos_candidato = as.integer(gsub("\\D+", "", votos_candidato)),
           votos_lista = votos_candidato,
           partido = "Independientes (IND)")
  
  y2 <- y2 %>% 
    select(a, a1, a2, c1, c2, f2) %>% 
    rename(lista = a, partido = a1, candidato = a2, votos_lista = c1, votos_candidato = c2, electo = f2) %>% 
    mutate(candidato = gsub("^.*\\. ", "", candidato),
           lista = gsub("^.*\\. ", "", lista),
           votos_candidato = as.integer(gsub("\\D+", "", votos_candidato)),
           votos_lista = as.integer(gsub("\\D+", "", votos_lista)))
  
  y3 <- x$resumen %>% 
    select(a, c, f) %>% 
    rename(candidato = a, votos_candidato = c, electo = f) %>% 
    filter(!grepl("Emitidos|Total", candidato)) %>% 
    mutate(votos_candidato = as.integer(gsub("\\D+", "", votos_candidato)),
           votos_lista = votos_candidato)
  
  votacion <- as_tibble(bind_rows(y1, y2, y3)) %>% 
    mutate(json = d2017_computo[[j]]) %>%  
    left_join(d2017_nombres, by = c("json" = "computo")) %>% 
    select(-json) %>% 
    mutate(candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl=TRUE),
           election_id = 4, 
           year = 2017,
           electo = ifelse(electo != "" & !is.na(electo), 1, 0))
  
  if (!exists("d2017_votacion_total")) {
    d2017_votacion_total <- votacion
  }
  
  if (j > 1) {
    d2017_votacion_total <- bind_rows(d2017_votacion_total, votacion)
  }
  rm(votacion, x, y, y1, y2, y3)
}

fwrite(d2017_votacion_total, "datos-semi-procesados/d2017_votacion_total.csv")

#### senatoriales 2017 ####

s2017_links <- read_delim("resultados-parlamentarias-2017/links-senadores-computo", 
                          "\t", escape_double = FALSE, col_names = FALSE, 
                          trim_ws = TRUE)

s2017_links <- s2017_links %>% 
  mutate(X1 = gsub("curl \'", "", X1),
         X1 = gsub("\' .*", "", X1)) %>% 
  filter(!grepl("google", X1))

s2017_links_computo <- s2017_links %>% 
  filter(grepl("computo", X1)) %>% 
  mutate(X2 = gsub(".*comunas/", "", X1),
         X2 = paste0("resultados-parlamentarias-2017/senadores-computo/", X2))

s2017_nombres <- p20171_nombres %>% 
  select(-participacion) %>% 
  mutate(computo = gsub("presidenciales", "parlamentarias", computo),
         computo = gsub("primera-votacion", "senadores", computo))

s2017_computo <- list.files("resultados-parlamentarias-2017/senadores-computo", 
                            pattern = "json", full.names = T)

for (j in 1:length(s2017_computo)) {
  x <- fromJSON(s2017_computo[[j]])
  
  y <- as_tibble(x$data) %>% 
    unnest(sd)
  
  y1 <- y %>% filter(a == "CANDIDATURA INDEPENDIENTE")
  y2 <- y %>% filter(a != "CANDIDATURA INDEPENDIENTE") %>% unnest(sd)
  
  y1 <- y1 %>% 
    select(a, a1, c1, f1) %>% 
    rename(lista = a, candidato = a1, votos_candidato = c1, electo = f1) %>% 
    mutate(candidato = gsub("^.*\\. ", "", candidato),
           votos_candidato = as.integer(gsub("\\D+", "", votos_candidato)),
           votos_lista = votos_candidato,
           partido = "Independientes (IND)")
  
  y2 <- y2 %>% 
    select(a, a1, a2, c1, c2, f2) %>% 
    rename(lista = a, partido = a1, candidato = a2, votos_lista = c1, votos_candidato = c2, electo = f2) %>% 
    mutate(candidato = gsub("^.*\\. ", "", candidato),
           lista = gsub("^.*\\. ", "", lista),
           votos_candidato = as.integer(gsub("\\D+", "", votos_candidato)),
           votos_lista = as.integer(gsub("\\D+", "", votos_lista)))
  
  y3 <- x$resumen %>% 
    select(a, c, f) %>% 
    rename(candidato = a, votos_candidato = c, electo = f) %>% 
    filter(!grepl("Emitidos|Total", candidato)) %>% 
    mutate(votos_candidato = as.integer(gsub("\\D+", "", votos_candidato)),
           votos_lista = votos_candidato)
  
  votacion <- as_tibble(bind_rows(y1, y2, y3)) %>% 
    mutate(json = s2017_computo[[j]]) %>%  
    left_join(s2017_nombres, by = c("json" = "computo")) %>% 
    select(-json) %>% 
    mutate(candidato = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", candidato, perl=TRUE),
           election_id = 3, 
           year = 2017,
           electo = ifelse(electo != "" & !is.na(electo), 1, 0))
  
  if (!exists("s2017_votacion_total")) {
    s2017_votacion_total <- votacion
  }
  
  if (j > 1) {
    s2017_votacion_total <- bind_rows(s2017_votacion_total, votacion)
  }
  rm(votacion, x, y, y1, y2, y3)
}

fwrite(s2017_votacion_total, "datos-semi-procesados/s2017_votacion_total.csv")

#### municipales 2016 ####

m2016_links <- read_csv("resultados-municipales-2016/links-municipales-2016")

for (j in 1:nrow(m2016_links)) {
  votaciones <- read_excel(m2016_links$file[[j]]) %>% 
    clean_names()
  
  colnames(votaciones) <- iconv(colnames(votaciones), from = "", to = "ASCII", sub = "")
  
  if (!exists("m2016_votaciones_total")) {
    m2016_votaciones_total <- votaciones
  }
  if (j > 1) {
    m2016_votaciones_total <- bind_rows(m2016_votaciones_total, votaciones)
  }
  
  rm(votaciones)
}

m2016_votaciones_total <- m2016_votaciones_total %>% 
  mutate(partido = ifelse(is.na(partido), partido_democrata_cristiano, partido)) %>% 
  select(-partido_democrata_cristiano)

fwrite(m2016_votaciones_total, "datos-semi-procesados/m2016_votacion_total.csv")

#### presidenciales 2013 ####

#### 2da vuelta ####

p20132_computo <- list.files("resultados-presidenciales-2013/computo", 
                             pattern = "Presidente_2v_Tricel\\.xlsx", full.names = T)

for (j in 1:length(p20132_computo)) {
  votacion <- read_excel(p20132_computo[[j]]) %>% 
    clean_names() %>% 
    mutate(election_id = 2, year = 2013)
  
  if (!exists("p20132_votacion_total")) {
    p20132_votacion_total <- votacion
  }
  
  if (j > 1) {
    p20132_votacion_total <- bind_rows(p20132_votacion_total, votacion)
  }
  rm(votacion)
}

fwrite(p20132_votacion_total, "datos-semi-procesados/p20132_votacion_total.csv")

#### 1era vuelta ####

p20131_computo <- list.files("resultados-presidenciales-2013/computo", 
                             pattern = "Presidente_Tricel\\.xlsx", full.names = T)

for (j in 1:length(p20131_computo)) {
  votacion <- read_excel(p20131_computo[[j]]) %>% 
    clean_names() %>% 
    mutate(election_id = 2, year = 2013)
  
  if (!exists("p20131_votacion_total")) {
    p20131_votacion_total <- votacion
  }
  
  if (j > 1) {
    p20131_votacion_total <- bind_rows(p20131_votacion_total, votacion)
  }
  rm(votacion)
}

fwrite(p20131_votacion_total, "datos-semi-procesados/p20131_votacion_total.csv")

#### parlamentarias 2013 ####

d2013_votacion_total <- read_excel("resultados-parlamentarias-2009-2013/computo/resultados_elecciones_diputados.xlsx")%>% 
  clean_names() 

names(d2013_votacion_total) <- iconv(names(d2013_votacion_total), to = "ASCII//TRANSLIT")

d2013_votacion_total <- d2013_votacion_total %>%
  filter(ano_de_eleccion == 2013) %>% 
  select(comuna, candidato_a, lista, partido, votos_totales, electo) %>% 
  rename(comuna_name = comuna, candidato = candidato_a, votos_candidato = votos_totales)

listas2 <- list.files("resultados-parlamentarias-2013/computo", 
                                                   pattern = "Diputados", full.names = T) %>% 
  map_df(~read_excel(.)) %>% 
  clean_names() %>% 
  select(lista, pacto) %>% 
  distinct() %>% 
  filter(!is.na(lista))

d2013_votacion_total <- d2013_votacion_total %>% 
  left_join(listas2)

fwrite(d2013_votacion_total, "datos-semi-procesados/d2013_votacion_total.csv")

#### senatoriales 2013 ####

s2013_votacion_total <- read_excel("resultados-parlamentarias-2009-2013/computo/resultados_elecciones_senadores.xlsx")%>% 
  clean_names() 

names(s2013_votacion_total) <- iconv(names(s2013_votacion_total), to = "ASCII//TRANSLIT")

s2013_votacion_total <- s2013_votacion_total %>%
  filter(ano_de_eleccion == 2013) %>% 
  select(comuna, candidato_a, lista, partido, votos_totales, electo) %>% 
  rename(comuna_name = comuna, candidato = candidato_a, votos_candidato = votos_totales)

fwrite(s2013_votacion_total, "datos-semi-procesados/s2013_votacion_total.csv")

#### senatoriales 2009 ####

s2009_votacion_total <- read_excel("resultados-parlamentarias-2009-2013/computo/resultados_elecciones_senadores.xlsx")%>% 
  clean_names() 

names(s2009_votacion_total) <- iconv(names(s2009_votacion_total), to = "ASCII//TRANSLIT")

s2009_votacion_total <- s2009_votacion_total %>%
  filter(ano_de_eleccion == 2009) %>% 
  select(comuna, candidato_a, lista, partido, votos_totales, electo) %>% 
  rename(comuna_name = comuna, candidato = candidato_a, votos_candidato = votos_totales)

fwrite(s2009_votacion_total, "datos-semi-procesados/s2009_votacion_total.csv")
