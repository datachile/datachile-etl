try(dir.create("normalized_comunas"))

for (t in 1:7) {
  raw <- read_sav(casen_sav[[t]]) %>% 
    clean_names() %>% 
    mutate(comu = as.integer(comu)) %>% 
    left_join(comunas90_03 %>% select(-comuna_name), by = c("comu" = "comuna_casen_id")) %>% 
    select(comuna_datachile_id, everything()) %>% 
    filter(expr > 0, expc > 0)

  write_csv(raw, paste0("normalized_comunas/casen_", years[[t]], ".csv"))
  rm(raw)
}

for (t in 8) {
  raw <- read_sav(casen_sav[[t]]) %>% 
    clean_names() %>% 
    mutate(comuna = as.integer(comuna)) %>% 
    left_join(comunas06 %>% select(-comuna_name), by = c("comuna" = "comuna_casen_id")) %>% 
    select(comuna_datachile_id, everything()) %>% 
    filter(expr > 0, expc > 0)
  
  write_csv(raw, paste0("normalized_comunas/casen_", years[[t]], ".csv"))
  rm(raw)
}

for (t in 9) {
  raw <- read_sav(casen_sav[[t]]) %>% 
    clean_names() %>% 
    mutate(comuna = as.integer(comuna)) %>% 
    left_join(comunas09 %>% select(-comuna_name), by = c("comuna" = "comuna_casen_id")) %>% 
    select(comuna_datachile_id, everything()) %>% 
    filter(expr > 0, expc > 0)
  
  write_csv(raw, paste0("normalized_comunas/casen_", years[[t]], ".csv"))
  rm(raw)
}

for (t in 10) {
  raw <- read_sav(casen_sav[[t]]) %>% 
    clean_names() %>% 
    mutate(comuna = as.integer(comuna)) %>% 
    left_join(comunas11_15 %>% select(-comuna_name), by = c("comuna" = "comuna_casen_id")) %>% 
    select(comuna_datachile_id, everything()) %>% 
    rename(expr = expr_full,
           expc = expc_full,
           expr_sat = expr_fullsat,
           expr_fin = expr_fullfin) %>% 
    filter(expr > 0, expc > 0)
  
  write_csv(raw, paste0("normalized_comunas/casen_", years[[t]], ".csv"))
  rm(raw)
}

for (t in 11:12) {
  raw <- read_sav(casen_sav[[t]]) %>% 
    clean_names() %>% 
    mutate(comuna = as.integer(comuna)) %>% 
    left_join(comunas11_15 %>% select(-comuna_name), by = c("comuna" = "comuna_casen_id")) %>% 
    select(comuna_datachile_id, everything()) %>% 
    filter(expr > 0, expc > 0)
  
  write_csv(raw, paste0("normalized_comunas/casen_", years[[t]], ".csv"))
  rm(raw)
}
