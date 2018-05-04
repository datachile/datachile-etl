comunas <- as_tibble(fread("~/GitHub/datachile-data/official_ids/2017_06_27_comunas_datachile_fixed.csv"))

db <- dbConnect(RSQLite::SQLite(), "padron-electoral-2017/padron.db")

dbListTables(db)

votantes <- as_tibble(dbReadTable(db, "votantes"))

comunas_sin_match <- votantes %>% 
  select(comuna) %>% 
  distinct() %>% 
  anti_join(comunas, by = c("comuna" = "comuna_name")) %>% 
  arrange(comuna) %>% 
  mutate(comuna_fix = c("Ays\u00e9n", "Alto B\u00edo B\u00edo", "Antartica", "Cocham\u00f3", "Con C\u00f3n", 
                        "Coihaique", "Hualaihu\u00e9", "Llay Llay", "Los \u00c1lamos", "Los \u00c1ngeles", 
                        "Marchig\u00fce", "Mar\u00eda Elena", "San Francisco de Mostazal", "Padre Las Casas", "R\u00e1nquil", 
                        "Requ\u00ednoa", "R\u00edo Ib\u00e1\u00f1ez", "Til-Til", "Trehuaco", "Vi\u00f1a del Mar"))

comunas_match <- comunas %>% 
  left_join(comunas_sin_match, by = c("comuna_name" = "comuna_fix")) %>% 
  mutate(comuna_fix = if_else(!is.na(comuna), comuna, comuna_name)) %>% 
  select(comuna_fix, comuna_datachile_id)

# votantes %>%
#   select(comuna) %>%
#   distinct() %>%
#   anti_join(comunas_match, by = c("comuna" = "comuna_fix"))

votantes <- votantes %>% 
  select(-region) %>% 
  left_join(comunas_match, by = c("comuna" = "comuna_fix"))

circunscripcion_id <- votantes %>% 
  select(circ) %>% 
  group_by(circ) %>% 
  summarise(n = n()) %>% 
  filter(circ != "", n > 1) %>% 
  select(-n) %>% 
  rename(circunscripcion = circ) %>% 
  arrange(circunscripcion) %>% 
  mutate(circunscripcion_id = row_number())

votantes <- votantes %>% 
  select(-id) %>% 
  left_join(circunscripcion_id, by = c("circ" = "circunscripcion"))

sexo_id <- tibble(sexo = c("mujer", "hombre"), sexo_id = 1:2)
sexo_id_2 <- tibble(sexo = c("MUJ", "VAR"), sexo_id = 1:2)

votantes <- votantes %>% 
  select(-c(circ, comuna)) %>% 
  left_join(sexo_id_2, by = c("genero" = "sexo"))

votantes <- votantes %>% 
  select(rut, dv, nombre, sexo_id, domicilio, comuna_datachile_id, circunscripcion_id, mesa)

dbWriteTable(db, "sexo_id", sexo_id)
dbWriteTable(db, "circunscripcion_id", circunscripcion_id)
dbWriteTable(db, "comunas_datachile", comunas)
dbRemoveTable(db, "votantes")
dbWriteTable(db, "votantes", votantes)

dbGetQuery(db, 'SELECT * FROM votantes WHERE nombre LIKE "%ABARZUA GONZALEZ FRANCISCO ISMAEL%"')

unlink("done", recursive = T)
