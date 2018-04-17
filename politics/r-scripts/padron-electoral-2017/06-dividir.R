comunas <- as_tibble(fread("padron-electoral-2017/2017_06_27_comunas_datachile_fixed.csv"))

try(dir.create("padron-electoral-2017/split"))

ids_comuna <- comunas %>% 
  select(comuna_name, comuna_datachile_id) %>% 
  filter(comuna_datachile_id != 347, comuna_datachile_id != 348) %>% 
  mutate(ids = comuna_datachile_id,
         ids = ifelse(nchar(ids) == 1, paste0("00", ids), ids),
         ids = ifelse(nchar(ids) == 2, paste0("0", ids), ids)) %>% 
  arrange(ids) %>% 
  mutate(csv = tolower(iconv(comuna_name, from = "", to = "ASCII//TRANSLIT")),
         csv = gsub("([.-])|[[:punct:]]", "", csv),
         csv = paste0("padron-electoral-2017/split/", ids, "_", gsub(" ", "_", csv), ".csv"),
         zip = gsub("csv", "zip", csv))

for (j in 1:nrow(ids_comuna)) {
  data.table(dbGetQuery(db, paste("SELECT * FROM votantes WHERE comuna_datachile_id", ids_comuna$comuna_datachile_id[[j]], sep = " = "))) %>% 
    fwrite(ids_comuna$csv[[j]])
}

for (j in 1:nrow(ids_comuna)) {
  if (!file.exists(ids_comuna$zip[[j]])) {
    system(paste("7z a", ids_comuna$zip[[j]], ids_comuna$csv[[j]]))
  }
}

for (j in 1:nrow(ids_comuna)) {
  if (file.exists(ids_comuna$csv[[j]])) {
    file.remove(ids_comuna$csv[[j]])
  }
}
