applications <- list.files("1_raw_data/applications/", full.names = T, pattern = "csv") %>% 
  lapply(fread, sep = ";", header = T) %>% 
  rbindlist(fill = T)

names(applications) <- tolower(iconv(names(applications), to = "ASCII", sub = ""))

applications <- as_tibble(applications) %>% 
  
  rename(process_year = ao_proceso,
         program_id = codigo_carrera,
         weighted_score = puntaje,
         academic_year_id = pond_ao_acad,
         preference_id = preferencia,
         applicant_status_id = situacion_postulante,
         preference_status_id = estado_preferencia,
         rank = lugar,
         bea_id = bea,
         pace_id = pace,
         identification_type_id = tipo_identificacion) %>% 
  
  mutate(program_id = ifelse(nchar(program_id) == 4, 
                             paste0(substr(program_id,1,2), 0, substr(program_id, 3, 4)), program_id),
         applicant_status_id = ifelse(applicant_status_id == "P", 1, 
                                      ifelse(applicant_status_id == "C", 2, NA)),
         weighted_score = gsub(",", "", weighted_score),
         weighted_score = as.numeric(weighted_score),
         weighted_score = ifelse(nchar(weighted_score) == 3, weighted_score,
                                 ifelse(nchar(weighted_score) == 5, weighted_score / 100,
                                        ifelse(nchar(weighted_score) == 6, weighted_score / 1000, NA))),
         bea_id = ifelse(bea_id == "BEA", 1, NA),
         pace_id = ifelse(pace_id == "PACE", 1, NA),
         identification_type_id = ifelse(identification_type_id == "C", 1, 
                                         ifelse(identification_type_id == "P", 2, NA))) %>% 
  
  select(process_year, mrun, identification_type_id, applicant_status_id, program_id, preference_id, preference_status_id,
         weighted_score, academic_year_id, rank, bea_id, pace_id)

fwrite(applications, "2_tidy_data/applications.csv")
rm(applications)

unlink("1_raw_data/applications/", recursive = T)
