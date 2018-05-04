if (!require("pacman")) install.packages("pacman")
p_load(dplyr, data.table, readxl, janitor)

#### 2016 ####

comunas <- as_tibble(fread("~/GitHub/datachile-data/official_ids/2017_06_27_comunas_datachile_fixed.csv")) %>% 
  select(comuna_name, comuna_datachile_id) %>% 
  mutate(comuna_name = iconv(toupper(comuna_name), from = "", to = "ASCII//TRANSLIT", sub = ""),
         comuna_name = gsub("PAIHUANO", "PAIGUANO", comuna_name),
         comuna_name = gsub("LLAY LLAY", "LLAILLAY", comuna_name),
         comuna_name = gsub("CON CON", "CONCON", comuna_name),
         comuna_name = gsub("SAN FRANCISCO DE MOSTAZAL", "MOSTAZAL", comuna_name),
         comuna_name = gsub("MARCHIGUE", "MARCHIHUE", comuna_name),
         comuna_name = gsub("TREHUACO", "TREGUACO", comuna_name),
         comuna_name = gsub("ALTO BIO BIO", "ALTO BIOBIO", comuna_name),
         comuna_name = gsub("AYSEN", "AISEN", comuna_name),
         comuna_name = gsub("TIL-TIL", "TILTIL", comuna_name))
  
sned_2016_2017 <- as_tibble(fread("sned_2016_2017.csv")) %>% 
  clean_names() %>% 
  mutate_all(funs(iconv(., from = "", to = "ASCII//TRANSLIT", sub = ""))) %>% 
  select(rbd, cod_depe2, nom_com_rbd, rural_rbd, efectivr:sel) %>% 
  mutate_all(funs(gsub(",", "\\.", .))) %>% 
  left_join(comunas, by = c("nom_com_rbd" = "comuna_name")) %>% 
  select(-nom_com_rbd) %>% 
  mutate_all(funs(as.numeric(.))) %>% 
  rename(institution_id = rbd,
         administration2_id = cod_depe2,
         rural_id = rural_rbd,
         efectiveness = efectivr,
         overcoming = superar,
         initiative = iniciar,
         integration = integrar,
         improvement = mejorar,
         fairness = igualdr,
         sned_score = indicer,
         subsidized_100pc_id = sel2016_25,
         subsidized_60pc_id = sel2016_35,
         selected_id = sel) %>% 
  mutate(year = 2016) %>% 
  select(year, comuna_datachile_id, institution_id, administration2_id, rural_id,
         efectiveness, overcoming, initiative, integration, improvement, fairness,
         sned_score, subsidized_100pc_id, subsidized_60pc_id, selected_id, cluster)

#x <- sned_2016_2017 %>% select(nom_com_rbd, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()

#### 2014 ####

comunas <- as_tibble(fread("~/GitHub/datachile-data/official_ids/2017_06_27_comunas_datachile_fixed.csv")) %>% 
  select(comuna_name, comuna_datachile_id) %>% 
  mutate(comuna_name = iconv(toupper(comuna_name), from = "", to = "ASCII//TRANSLIT", sub = ""),
         comuna_name = gsub("PAIHUANO", "PAIGUANO", comuna_name),
         comuna_name = gsub("LLAY LLAY", "LLAILLAY", comuna_name),
         comuna_name = gsub("CON CON", "CONCON", comuna_name),
         comuna_name = gsub("SAN FRANCISCO DE MOSTAZAL", "MOSTAZAL", comuna_name),
         comuna_name = gsub("MARCHIGUE", "MARCHIHUE", comuna_name),
         comuna_name = gsub("TREHUACO", "TREGUACO", comuna_name),
         comuna_name = gsub("ALTO BIO BIO", "ALTO BIOBIO", comuna_name),
         comuna_name = gsub("COIHAIQUE", "COYHAIQUE", comuna_name),
         comuna_name = gsub("TIL-TIL", "TILTIL", comuna_name))

sned_2014_2015 <- read_excel("sned_2014_2015.xlsx") %>% 
  clean_names() %>% 
  mutate_all(funs(iconv(., from = "", to = "ASCII//TRANSLIT", sub = ""))) %>% 
  select(rbd, cod_depe2, nom_com_rbd, rural_rbd, efectivr:sel) %>% 
  mutate_all(funs(gsub(",", "\\.", .))) %>% 
  left_join(comunas, by = c("nom_com_rbd" = "comuna_name")) %>% 
  select(-nom_com_rbd, -tipo_est) %>% 
  mutate_all(funs(as.numeric(.))) %>% 
  rename(institution_id = rbd,
         administration2_id = cod_depe2,
         rural_id = rural_rbd,
         efectiveness = efectivr,
         overcoming = superar,
         initiative = iniciar,
         integration = integrar,
         improvement = mejorar,
         fairness = igualdr,
         sned_score = indicer,
         subsidized_100pc_id = sel2014_25,
         subsidized_60pc_id = sel2014_35,
         selected_id = sel) %>% 
  mutate(year = 2014) %>% 
  select(year, comuna_datachile_id, institution_id, administration2_id, rural_id,
         efectiveness, overcoming, initiative, integration, improvement, fairness,
         sned_score, subsidized_100pc_id, subsidized_60pc_id, selected_id, cluster)

#x2 <- sned_2014_2015 %>% select(nom_com_rbd, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()

#### 2012 ####

comunas <- as_tibble(fread("~/GitHub/datachile-data/official_ids/2017_06_27_comunas_datachile_fixed.csv")) %>% 
  select(comuna_name, comuna_datachile_id) %>% 
  mutate(comuna_name = iconv(toupper(comuna_name), from = "", to = "ASCII//TRANSLIT", sub = ""),
         comuna_name = gsub("PAIHUANO", "PAIGUANO", comuna_name),
         comuna_name = gsub("LLAY LLAY", "LLAILLAY", comuna_name),
         comuna_name = gsub("CON CON", "CONCON", comuna_name),
         comuna_name = gsub("SAN FRANCISCO DE MOSTAZAL", "MOSTAZAL", comuna_name),
         comuna_name = gsub("MARCHIGUE", "MARCHIHUE", comuna_name),
         comuna_name = gsub("TREHUACO", "TREGUACO", comuna_name),
         comuna_name = gsub("ALTO BIO BIO", "ALTO BIOBIO", comuna_name),
         comuna_name = gsub("COIHAIQUE", "COYHAIQUE", comuna_name),
         comuna_name = gsub("TIL-TIL", "TILTIL", comuna_name),
         comuna_name = gsub("CALERA", "LA CALERA", comuna_name),
         comuna_name = gsub("LA CALERA DE TANGO", "CALERA DE TANGO", comuna_name))

sned_2012_2013 <- read_excel("sned_2012_2013.xlsx") %>% 
  clean_names() %>% 
  mutate_all(funs(iconv(., from = "", to = "ASCII//TRANSLIT", sub = ""))) %>% 
  select(rbd, cod_depe, nom_com_rbd, rural_rbd, efectivr:sel) %>% 
  mutate_all(funs(gsub(",", "\\.", .))) %>% 
  left_join(comunas, by = c("nom_com_rbd" = "comuna_name")) %>% 
  select(-nom_com_rbd, -tipo_est) %>% 
  mutate_all(funs(as.numeric(.))) %>% 
  rename(institution_id = rbd,
         administration2_id = cod_depe,
         rural_id = rural_rbd,
         efectiveness = efectivr,
         overcoming = superar,
         initiative = iniciar,
         integration = integrar,
         improvement = mejorar,
         fairness = igualdr,
         sned_score = indicer,
         subsidized_100pc_id = sel2012_25,
         subsidized_60pc_id = sel2012_35,
         selected_id = sel) %>% 
  mutate(year = 2012) %>% 
  select(year, comuna_datachile_id, institution_id, administration2_id, rural_id,
         efectiveness, overcoming, initiative, integration, improvement, fairness,
         sned_score, subsidized_100pc_id, subsidized_60pc_id, selected_id, cluster)

#x3 <- sned_2012_2013 %>% select(nom_com_rbd, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()

#### 2010 ####

comunas <- as_tibble(fread("~/GitHub/datachile-data/official_ids/2017_06_27_comunas_datachile_fixed.csv")) %>% 
  select(comuna_name, comuna_datachile_id) %>% 
  mutate(comuna_name = iconv(toupper(comuna_name), from = "", to = "ASCII//TRANSLIT", sub = ""),
         comuna_name = gsub("PAIHUANO", "PAIGUANO", comuna_name),
         comuna_name = gsub("LLAY LLAY", "LLAILLAY", comuna_name),
         comuna_name = gsub("CON CON", "CONCON", comuna_name),
         comuna_name = gsub("SAN FRANCISCO DE MOSTAZAL", "MOSTAZAL", comuna_name),
         comuna_name = gsub("MARCHIGUE", "MARCHIHUE", comuna_name),
         comuna_name = gsub("TREHUACO", "TREGUACO", comuna_name),
         comuna_name = gsub("ALTO BIO BIO", "ALTO BIOBIO", comuna_name),
         comuna_name = gsub("COIHAIQUE", "COYHAIQUE", comuna_name),
         comuna_name = gsub("TIL-TIL", "TILTIL", comuna_name))

sned_2010_2011 <- read_excel("sned_2010_2011.xls") %>% 
  clean_names() %>% 
  mutate_all(funs(iconv(., from = "", to = "ASCII//TRANSLIT", sub = ""))) %>% 
  select(rbd_n, depend, com_nom, cod_area, efectivr:sel) %>% 
  mutate_all(funs(gsub(",", "\\.", .))) %>% 
  left_join(comunas, by = c("com_nom" = "comuna_name")) %>% 
  select(-com_nom, -tipo_est) %>% 
  mutate_all(funs(as.numeric(.))) %>% 
  rename(institution_id = rbd_n,
         administration2_id = depend,
         rural_id = cod_area,
         efectiveness = efectivr,
         overcoming = superar,
         initiative = iniciar,
         integration = integrar,
         improvement = mejorar,
         fairness = igualdr,
         sned_score = indicer,
         subsidized_100pc_id = sel2010_25,
         subsidized_60pc_id = sel2010_35,
         selected_id = sel,
         cluster = clusters) %>% 
  mutate(year = 2010) %>% 
  mutate(administration2_id = ifelse(administration2_id < 3, 1,
                                    ifelse(administration2_id == 3, 2, 4))) %>% 
  select(year, comuna_datachile_id, institution_id, administration2_id, rural_id,
         efectiveness, overcoming, initiative, integration, improvement, fairness,
         sned_score, subsidized_100pc_id, subsidized_60pc_id, selected_id, cluster)

#x4 <- sned_2010_2011 %>% select(com_nom, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()

#### 2008 ####

comunas <- as_tibble(fread("~/GitHub/datachile-data/official_ids/2017_06_27_comunas_datachile_fixed.csv")) %>% 
  select(comuna_name, comuna_datachile_id) %>% 
  mutate(comuna_name = iconv(toupper(comuna_name), from = "", to = "ASCII//TRANSLIT", sub = ""),
         comuna_name = gsub("PAIHUANO", "PAIGUANO", comuna_name),
         comuna_name = gsub("LLAY LLAY", "LLAILLAY", comuna_name),
         comuna_name = gsub("CON CON", "CONCON", comuna_name),
         comuna_name = gsub("SAN FRANCISCO DE MOSTAZAL", "MOSTAZAL", comuna_name),
         comuna_name = gsub("MARCHIGUE", "MARCHIHUE", comuna_name),
         comuna_name = gsub("TREHUACO", "TREGUACO", comuna_name),
         comuna_name = gsub("ALTO BIO BIO", "ALTO BIOBIO", comuna_name),
         comuna_name = gsub("COIHAIQUE", "COYHAIQUE", comuna_name),
         comuna_name = gsub("TIL-TIL", "TILTIL", comuna_name),
         comuna_name = gsub("RIO NEGRO", "ROO NEGRO", comuna_name),
         comuna_name = gsub("LAGO VERDE", "LAGO  VERDE", comuna_name),
         comuna_name = gsub("O\'HIGGINS", "OiHIGGINS", comuna_name))

sned_2008_2009 <- read_excel("sned_2008_2009.xls") %>% 
  clean_names()

names(sned_2008_2009) <- iconv(names(sned_2008_2009), from = "", to = "ASCII//TRANSLIT", sub = "")

sned_2008_2009 <- sned_2008_2009 %>% 
  mutate_all(funs(iconv(., from = "", to = "ASCII//TRANSLIT", sub = ""))) %>% 
  select(rbd, clusters, cod_depe, comuna, cod_area, efectivr:seleccion) %>% 
  mutate_all(funs(gsub(",", "\\.", .))) %>% 
  left_join(comunas, by = c("comuna" = "comuna_name")) %>% 
  select(-comuna) %>% 
  mutate(seleccion = as.factor(seleccion)) %>% 
  mutate_if(is.character, as.numeric) %>% 
  rename(institution_id = rbd,
         administration2_id = cod_depe,
         rural_id = cod_area,
         efectiveness = efectivr,
         overcoming = superar,
         initiative = iniciar,
         integration = integrar,
         improvement = mejorar,
         fairness = igualdr,
         sned_score = indicer,
         cluster = clusters) %>% 
  mutate(year = 2008) %>% 
  mutate(administration2_id = ifelse(administration2_id < 3, 1,
                                    ifelse(administration2_id == 3, 2, 4))) %>% 
  mutate(seleccion = as.character(seleccion),
         selected_id = ifelse(seleccion == "No", 3,
                              ifelse(seleccion == "Si. con derecho a percibir el 100% de la Subvencion por Desempeno de Excelencia", 1, 2)),
         subsidized_100pc_id = ifelse(selected_id == 1, 1, 2),
         subsidized_60pc_id = ifelse(selected_id == 2, 1, 2)) %>% 
  select(-seleccion) %>% 
  select(year, comuna_datachile_id, institution_id, administration2_id, rural_id,
         efectiveness, overcoming, initiative, integration, improvement, fairness,
         sned_score, subsidized_100pc_id, subsidized_60pc_id, selected_id, cluster)

#x5 <- sned_2008_2009 %>% select(comuna, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()

#### 2006 ####

comunas <- as_tibble(fread("~/GitHub/datachile-data/official_ids/2017_06_27_comunas_datachile_fixed.csv")) %>% 
  select(comuna_name, comuna_datachile_id) %>% 
  mutate(comuna_name = iconv(toupper(comuna_name), from = "", to = "ASCII//TRANSLIT", sub = ""),
         comuna_name = gsub("PAIHUANO", "PAIGUANO", comuna_name),
         comuna_name = gsub("LLAY LLAY", "LLAILLAY", comuna_name),
         comuna_name = gsub("CON CON", "CONCON", comuna_name),
         comuna_name = gsub("SAN FRANCISCO DE MOSTAZAL", "MOSTAZAL", comuna_name),
         comuna_name = gsub("MARCHIGUE", "MARCHIHUE", comuna_name),
         comuna_name = gsub("TREHUACO", "TREGUACO", comuna_name),
         comuna_name = gsub("ALTO BIO BIO", "ALTO BIOBIO", comuna_name),
         comuna_name = gsub("COIHAIQUE", "COYHAIQUE", comuna_name),
         comuna_name = gsub("TIL-TIL", "TILTIL", comuna_name))

sned_2006_2007 <- read_excel("sned_2006_2007.xls") %>% 
  clean_names()

names(sned_2006_2007) <- iconv(names(sned_2006_2007), from = "", to = "ASCII//TRANSLIT", sub = "")

sned_2006_2007 <- sned_2006_2007 %>% 
  mutate_all(funs(iconv(., from = "", to = "ASCII//TRANSLIT", sub = ""))) %>% 
  select(rbd, clusters, cod_depe, cod_area, comuna, efectivr:sel0607) %>% 
  mutate_all(funs(gsub(",", "\\.", .))) %>% 
  left_join(comunas, by = c("comuna" = "comuna_name")) %>% 
  select(-comuna, -sel25_35) %>% 
  mutate_all(funs(as.numeric(.))) %>% 
  rename(institution_id = rbd,
         administration2_id = cod_depe,
         rural_id = cod_area,
         efectiveness = efectivr,
         overcoming = superar,
         initiative = iniciar,
         integration = integrar,
         improvement = mejorar,
         fairness = igualdr,
         sned_score = indicer,
         subsidized_100pc_id = sel06_25,
         subsidized_60pc_id = sel06_35,
         selected_id = sel0607,
         cluster = clusters) %>% 
  mutate(year = 2006) %>% 
  mutate(administration2_id = ifelse(administration2_id < 3, 1,
                                     ifelse(administration2_id == 3, 2, 4))) %>% 
  select(year, comuna_datachile_id, institution_id, administration2_id, rural_id,
         efectiveness, overcoming, initiative, integration, improvement, fairness,
         sned_score, subsidized_100pc_id, subsidized_60pc_id, selected_id, cluster)

#x6 <- sned_2006_2007 %>% select(comuna, comuna_datachile_id) %>% filter(is.na(comuna_datachile_id)) %>% distinct()

####  join all ####

sned_06_17 <- bind_rows(sned_2006_2007, sned_2008_2009, sned_2010_2011,
                        sned_2012_2013, sned_2014_2015, sned_2016_2017) %>% 
  mutate(cluster = ifelse(nchar(cluster) == 3, paste0("0", cluster), cluster),
         cluster = substr(cluster, 3, 4)) %>% 
  rename(cluster_id = cluster)

try(dir.create("tidy_data"))
fwrite(sned_06_17, "tidy_data/sned_06_17.csv")
