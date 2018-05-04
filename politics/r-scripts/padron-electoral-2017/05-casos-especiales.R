comunas <- as_tibble(fread("~/GitHub/datachile-data/official_ids/2017_06_27_comunas_datachile_fixed.csv"))

db <- dbConnect(RSQLite::SQLite(), "padron-electoral-2017/padron.db")

votantes <- as_tibble(dbReadTable(db, "votantes"))

votantes %>% 
  filter(is.na(comuna_datachile_id))

unaligned_circunscripcion <- votantes %>% 
  filter(is.na(circunscripcion_id)) %>% 
  mutate(circunscripcion1 = gsub("\\s*\\w*$", "", domicilio),
         circunscripcion2 = gsub("\\s*\\w*$", "", gsub("\\s*\\w*$", "", domicilio)),
         circunscripcion3 = stri_extract_last_words(domicilio),
         circunscripcion4 = stri_extract_last_words(circunscripcion1),
         circunscripcion5 = paste(circunscripcion4, circunscripcion3))

circunscripcion_id <- as_tibble(dbReadTable(db, "circunscripcion_id"))

unaligned_circunscripcion_2 <- unaligned_circunscripcion %>% 
  select(rut, domicilio, circunscripcion3, circunscripcion5) %>% 
  distinct() %>% 
  #anti_join(circunscripcion_id, by = c("circunscripcion2" = "circunscripcion")) %>% 
  regex_left_join(circunscripcion_id, by = c(circunscripcion3 = "circunscripcion")) %>% 
  regex_left_join(circunscripcion_id, by = c(circunscripcion5 = "circunscripcion")) %>% 
  mutate(circunscripcion = if_else(is.na(circunscripcion.x), circunscripcion.y, circunscripcion.x)) %>% 
  mutate(circunscripcion_id = if_else(is.na(circunscripcion_id.x), circunscripcion_id.y, circunscripcion_id.x)) %>% 
  #select(comuna_datachile_id, circunscripcion, circunscripcion_id) %>% 
  distinct(rut, .keep_all = T) %>% 
  select(rut, domicilio, circunscripcion, circunscripcion_id) %>% 
  filter(!is.na(circunscripcion_id)) %>% 
  mutate(domicilio2 = str_replace_all(domicilio, paste0(" ", circunscripcion, "$"), "")) %>% 
  select(-circunscripcion)

votantes <- votantes %>% 
  left_join(unaligned_circunscripcion_2, by = "rut")

votantes <- votantes %>% 
  mutate(domicilio = if_else(is.na(domicilio2), domicilio.x, domicilio2)) %>% 
  select(-c(domicilio.x, domicilio.y, domicilio2)) %>% 
  mutate(circunscripcion_id = if_else(is.na(circunscripcion_id.y), circunscripcion_id.x, circunscripcion_id.y)) %>% 
  select(-c(circunscripcion_id.x, circunscripcion_id.y))

votantes <- votantes %>% 
  select(rut, dv, nombre, sexo_id, domicilio, comuna_datachile_id, circunscripcion_id, mesa)

votantes %>% 
  filter(is.na(domicilio))

votantes %>% 
  filter(is.na(mesa))

votantes %>% 
  filter(is.na(circunscripcion_id))

######################################################################################################################

unaligned_circunscripcion <- votantes %>% 
  filter(is.na(circunscripcion_id)) %>% 
  mutate(circunscripcion1 = gsub("\\s*\\w*$", "", domicilio),
         circunscripcion2 = gsub("\\s*\\w*$", "", gsub("\\s*\\w*$", "", domicilio)),
         circunscripcion3 = gsub("\\s*\\w*$", "", gsub("\\s*\\w*$", "", gsub("\\s*\\w*$", "", domicilio))),
         circunscripcion4 = stri_extract_last_words(domicilio),
         circunscripcion5 = stri_extract_last_words(circunscripcion1),
         circunscripcion6 = stri_extract_last_words(circunscripcion2),
         circunscripcion7 = stri_extract_last_words(circunscripcion3),
         circunscripcion8 = paste(circunscripcion7, circunscripcion6, circunscripcion5),
         circunscripcion9 = paste(circunscripcion7, circunscripcion6, circunscripcion5, circunscripcion4))

unaligned_circunscripcion_2 <- unaligned_circunscripcion %>% 
  select(rut, domicilio, circunscripcion8, circunscripcion9) %>% 
  distinct() %>% 
  regex_left_join(circunscripcion_id, by = c(circunscripcion8 = "circunscripcion")) %>% 
  regex_left_join(circunscripcion_id, by = c(circunscripcion9 = "circunscripcion")) %>% 
  mutate(circunscripcion = if_else(is.na(circunscripcion.x), circunscripcion9, circunscripcion.x),
         circunscripcion = if_else(is.na(circunscripcion.y), circunscripcion, circunscripcion.y)) %>% 
  mutate(circunscripcion_id = if_else(is.na(circunscripcion_id.x), circunscripcion_id.y, circunscripcion_id.x)) %>% 
  distinct(rut, .keep_all = T) 

unaligned_circunscripcion_3 <- unaligned_circunscripcion_2 %>% 
  filter(is.na(circunscripcion_id)) %>% 
  select(circunscripcion) %>%  
  rename(circunscripcion9 = circunscripcion) %>% 
  distinct() %>% 
  mutate(circunscripcion_id = c(NA, 57, NA, 279, 364, 
                                510, 25, 548, 603, 389,
                                269, 552, 457, 539, 442,
                                43, NA, NA, NA))

unaligned_circunscripcion_4 <- unaligned_circunscripcion_2 %>% 
  left_join(unaligned_circunscripcion_3, by = "circunscripcion9") %>% 
  mutate(circunscripcion_id = ifelse(is.na(circunscripcion_id.x.x), circunscripcion_id.y.y, circunscripcion_id.x.x)) %>% 
  select(rut, domicilio, circunscripcion, circunscripcion_id) %>% 
  #filter(!is.na(circunscripcion_id)) %>% 
  mutate(domicilio2 = str_replace_all(domicilio, paste0(" ", circunscripcion, "$"), "")) %>% 
  select(-circunscripcion) %>% 
  mutate(circunscripcion_id = ifelse(grepl("P AGUIRRE CERDA N", domicilio), 372, circunscripcion_id),
         circunscripcion_id = ifelse(grepl("P AGUIRRE CERDA S", domicilio), 373, circunscripcion_id))

votantes <- votantes %>% 
  left_join(unaligned_circunscripcion_4, by = "rut")

votantes <- votantes %>% 
  mutate(domicilio = if_else(is.na(domicilio2), domicilio.x, domicilio2)) %>% 
  select(-c(domicilio.x, domicilio.y, domicilio2)) %>% 
  mutate(circunscripcion_id = ifelse(is.na(circunscripcion_id.y), circunscripcion_id.x, circunscripcion_id.y)) %>% 
  select(-c(circunscripcion_id.x, circunscripcion_id.y))

votantes %>% 
  filter(is.na(circunscripcion_id))

######################################################################################################################

votantes <- votantes %>% 
  mutate(circunscripcion_id = ifelse(rut == "14537081", 221, circunscripcion_id),
         circunscripcion_id = ifelse(rut == "9932900", 42, circunscripcion_id),
         circunscripcion_id = ifelse(rut == "18536976", 3, circunscripcion_id)) %>% 
  mutate(domicilio = ifelse(rut == "14537081", "AV LA TIRANA 3948 DEPARTAMENTO 22", domicilio),
         domicilio = ifelse(rut == "9932900", "SECTOR PAIHUEN, SITIO 3", domicilio),
         domicilio = ifelse(rut == "18536976", "AV LIBERTADOR BERNARDO OHIGGINS 3523 CASA 2", domicilio))

######################################################################################################################

votantes <- votantes %>% 
  mutate(nombre = gsub("\\.", "", nombre)) %>% 
  mutate(nombre = gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", nombre, perl = TRUE))

votantes %>%
  filter(grepl("\\.", nombre))

######################################################################################################################

dbRemoveTable(db, "votantes")
dbWriteTable(db, "votantes", votantes)

rm(unaligned_circunscripcion, unaligned_circunscripcion_2, unaligned_circunscripcion_3, unaligned_circunscripcion_4)

rm(votantes)
