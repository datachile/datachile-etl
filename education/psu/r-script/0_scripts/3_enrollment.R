enrollment <- list.files("enrollment/", full.names = T, pattern = "csv") %>% 
  lapply(fread, sep = ";", header = T) %>% 
  rbindlist(fill = T)

names(enrollment) <- tolower(iconv(names(enrollment), to = "ASCII", sub = ""))

enrollment <- as_tibble(enrollment) %>% 
  rename(process_year = ao_proceso,
         program_id = codigo_carrera,
         weighted_score = puntaje_ponderado,
         academic_year_id = pond_ao_acad,
         preference_id = preferencia, 
         rank = lugar,
         admission_type_id = via_ingreso,
         identification_type_id = tipo_identificacion) %>% 
  mutate(program_id = ifelse(nchar(program_id) == 4, 
                             paste0(substr(program_id,1,2), 0, substr(program_id, 3, 4)), program_id),
         weighted_score = gsub(",", "", weighted_score),
         weighted_score = as.numeric(weighted_score),
         weighted_score = ifelse(nchar(weighted_score) == 3, weighted_score,
                                 ifelse(nchar(weighted_score) == 5, weighted_score / 100,
                                        ifelse(nchar(weighted_score) == 6, weighted_score / 1000, NA))),
         identification_type_id = ifelse(identification_type_id == "C", 1, 
                                         ifelse(identification_type_id == "P", 2, NA))) %>% 
  select(process_year, mrun, identification_type_id, program_id, preference_id, weighted_score, 
         academic_year_id, rank, admission_type_id)

fwrite(enrollment, "3_tidy_data/enrollment.csv")
rm(enrollment)

unlink("enrollment/", recursive = T)
