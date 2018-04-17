socioeconomic_condition <- list.files("socioeconomic_condition/", full.names = T, pattern = "csv") %>% 
  lapply(fread, sep = ";", header = T) %>% 
  rbindlist(fill = T)

names(socioeconomic_condition) <- tolower(iconv(names(socioeconomic_condition), to = "ASCII", sub = ""))

socioeconomic_condition <- as_tibble(socioeconomic_condition) %>% 
  select(ao_proceso, mrun, tipo_identificacion, estado_civil, 
         tiene_trabajo_rem, horario_trabajo, horas_que_dedica_trabajo,
         de_proseguir_estudios, grupo_familiar, cuantos_trabajan_del_grupo_familiar, quien_es_el_jefe_familia,
         matches("cuantos_estudian"),
         cobertura_salud, viven_sus_padres, educacion_madre, educacion_padre,
         situacion_ocupacional_madre, situacion_ocupacional_padre,
         ocupacion_principal_madre, ocupacion_principal_padre,
         rama_actividad_madre, rama_actividad_padre,
         tipo_organismo_trabajan_madre, tipo_organismo_trabajan_padre,
         ingreso_bruto_fam)

socioeconomic_condition <- socioeconomic_condition %>% 
  rename(process_year = ao_proceso,
         identification_type_id = tipo_identificacion,
         civil_status = estado_civil,
         paid_work_id = tiene_trabajo_rem,
         working_schedule_id = horario_trabajo,
         working_hours = horas_que_dedica_trabajo,
         residency_id = de_proseguir_estudios,
         family_group = grupo_familiar,
         workers_family_group = cuantos_trabajan_del_grupo_familiar,
         household_head_id = quien_es_el_jefe_familia,
         preschool_education_family_group = cuantos_estudian_grupo_familiar_prebasica,
         primary_education_family_group = cuantos_estudian_grupo_familiar_basica,
         secondary_education_family_group = cuantos_estudian_grupo_familiar_media,
         secondary_education_4_family_group = cuantos_estudian_grupo_familiar_media_4,
         tertiary_education_family_group = cuantos_estudian_grupo_familiar_superior,
         other_education_family_group = cuantos_estudian_grupo_familiar_otro,
         health_insurance_id = cobertura_salud,
         alive_parents_id = viven_sus_padres,
         mother_education_id = educacion_madre,
         father_education_id = educacion_padre,
         mother_occupational_situation_id = situacion_ocupacional_madre,
         father_occupational_situation_id = situacion_ocupacional_padre,
         mother_occupational_branch_id = rama_actividad_madre,
         father_occupational_branch_id = rama_actividad_padre,
         mother_occupation_id = ocupacion_principal_madre,
         father_occupation_id = ocupacion_principal_padre,
         mother_working_place_id = tipo_organismo_trabajan_madre,
         father_working_place_id = tipo_organismo_trabajan_padre) %>% 
  mutate(identification_type_id = ifelse(identification_type_id == "C", 1, 
                                         ifelse(identification_type_id == "P", 2, NA)),
         family_income_09_15_id = ifelse(process_year >= 2009 & process_year <= 2015, ingreso_bruto_fam, NA),
         family_income_08_id = ifelse(process_year == 2008, ingreso_bruto_fam, NA),
         family_income_04_07_id = ifelse(process_year >= 2004 & process_year <= 2007, ingreso_bruto_fam, NA)) %>% 
  select(-ingreso_bruto_fam)

fwrite(socioeconomic_condition, "3_tidy_data/socioeconomic_condition.csv")
rm(socioeconomic_condition)

unlink("socioeconomic_condition/", recursive = T)
