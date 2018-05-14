registered <- list.files("1_raw_data/registered/", full.names = T, pattern = "csv") %>% 
  lapply(fread, sep = ";", header = T) %>% 
  rbindlist(fill = T)

names(registered) <- tolower(iconv(names(registered), to = "ASCII", sub = ""))

registered <- as_tibble(registered) %>% 
  
  rename(process_year = ao_proceso,
         lang_current = lyc_actual,
         math_current = mate_actual,
         hist_current = hycs_actual,
         sci_current = ciencias_actual,
         lang_former = lyc_anterior,
         math_former = mate_anterior,
         hist_former = hycs_anterior,
         sci_former = ciencias_anterior,
         completed_secondary_education_year = ao_egreso,
         teaching_id = codigo_enseanza,
         branch_official_code = rama_educacional,
         administration_id = grupo_dependencia,
         process_scores_id = puntajes_proceso,
         ranking_score = ptje_ranking,
         bea_id = bea,
         identification_type_id = tipo_identificacion) %>% 
  
  mutate(lang_current = ifelse(nchar(lang_current) == 3, lang_current, NA),
         math_current = ifelse(nchar(math_current) == 3, math_current, NA),
         hist_current = ifelse(nchar(hist_current) == 3, hist_current, NA),
         sci_current = ifelse(nchar(sci_current) == 3, sci_current, NA),
         lang_former = ifelse(nchar(lang_former) == 3, lang_former, NA),
         math_former = ifelse(nchar(math_former) == 3, math_former, NA),
         hist_former = ifelse(nchar(hist_former) == 3, hist_former, NA),
         sci_former = ifelse(nchar(sci_former) == 3, sci_former, NA),
         psu_avg_current = (lang_current + math_current) / 2,
         psu_avg_former = (lang_former + math_former) / 2) %>% 
  
  mutate(school_id = ifelse(rbd != 0, rbd, NA),
         sex_id = ifelse(cod_sexo == 1, 2, ifelse(cod_sexo == 2, 1, NA)),
         birth_date = ifelse(nchar(fecha_nacimiento) == 7, paste0("0", fecha_nacimiento),
                             ifelse(nchar(fecha_nacimiento) == 8, fecha_nacimiento, NA)),
         birth_date = as.Date(birth_date, "%d%m%Y"),
         identification_type_id = ifelse(identification_type_id == "C", 1, 
                                         ifelse(identification_type_id == "P", 2, NA))) %>% 
  
  left_join(ids_branch %>% select(branch_official_code, branch_id)) %>% 
  select(-branch_official_code) %>% 
  
  left_join(ids_scores, by = c("ptje_nem" = "puntaje_nem_grupo_a")) %>% 
  rename(nem_group_a = nem) %>% 
  
  left_join(ids_scores, by = c("ptje_nem" = "puntaje_nem_grupo_b")) %>% 
  rename(nem_group_b = nem) %>% 
  
  left_join(ids_scores, by = c("ptje_nem" = "puntaje_nem_grupo_c")) %>% 
  rename(nem_group_c = nem) %>% 
  
  mutate(nem_mark = ifelse(branch_id == 1, nem_group_a,
                           ifelse(branch_id == 2, nem_group_b,
                                  ifelse(branch_id > 2, nem_group_c, NA))))

raw_comunas <- tibble(comuna_id = registered$codigo_comuna,
                      comuna_name = registered$nombre_comuna) %>%
  distinct() %>%
  arrange(comuna_id) %>%
  mutate(comuna_name = ifelse(is.na(comuna_name), "NaN", comuna_name))

clean_comunas <- raw_comunas %>%
  left_join(ids_comunas %>% select(comuna_datachile_id, comuna_customs_id, comuna_name), by = c("comuna_id" = "comuna_customs_id")) %>%
  mutate(comuna_datachile_id = ifelse(comuna_name.x == "ARICA", 12, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "CAMARONES", 25, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "PUTRE", 243, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "QUILPUE", 253, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "LIMACHE", 138, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "OLMUE", 190, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "VILLA ALEMANA", 337, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "VALDIVIA", 329, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "CORRAL", 71, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "FUTRONO", 97, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "LA UNION", 127, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "LAGO RANCO", 128, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "LANCO", 132, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "LOS LAGOS", 153, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "MAFIL", 161, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "MARIQUINA", 167, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "PAILLACO", 196, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "PANGUIPULLI", 200, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "RIO BUENO", 269, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "LAMPA", 346, comuna_datachile_id),
         comuna_datachile_id = ifelse(comuna_name.x == "NaN", 0, comuna_datachile_id)) %>%
  select(c(comuna_id, comuna_datachile_id))

registered <- registered %>% 
  left_join(clean_comunas, by = c("codigo_comuna" = "comuna_id")) %>% 
  select(process_year, mrun, identification_type_id, sex_id, birth_date, comuna_datachile_id, 
         completed_secondary_education_year, process_scores_id, nem_mark, ranking_score,
         lang_current, math_current, hist_current, sci_current, psu_avg_current,
         lang_former, math_former, hist_former, sci_former, psu_avg_former,
         school_id, teaching_id, branch_id, administration_id, bea_id)

fwrite(registered, "2_tidy_data/registered.csv")
rm(registered)

unlink("1_raw_data/registered/", recursive = T)
