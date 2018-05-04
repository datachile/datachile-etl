try(dir.create("tidy_data"))
try(dir.create("tidy_data/health_system"))

comunas <- as_tibble(fread("~/GitHub/datachile-data/official_ids/2017_06_27_comunas_datachile_fixed.csv"))

casenclean_zip <- list.files(path = "fixed_comunas", recursive = T, full.names = T)
healthclean_zip <- grep(casenclean_zip, pattern = paste(2000:2015, collapse = "|"), value = T)

for (j in 1:length(healthclean_zip)) {
  try(
    system(paste("7z e -aos", healthclean_zip[[j]], "-oc:temp/"))
  )
}

healthclean_csv <- list.files(path = "temp", recursive = T, full.names = T)
years <- c(seq(2000, 2009, 3), seq(2011, 2015, 2))

healthsystem_ids <- tibble(health_system = c(paste("Fonasa", LETTERS[1:4]), "Fonasa (no sabe grupo)", "Fuerzas Armadas, de Orden y Seguridad P\u00fablica", "Isapre", "Ninguno", "Otro sistema", "No sabe", "NaN"),
                           health_system_id = c(1:10, NA),
                           s1_00_03 = c(0:9, NA),
                           s1_06_09 = c(1:9,99, NA),
                           s17_11 = s1_06_09,
                           s14_13 = s1_06_09,
                           s12_15 = s1_06_09)

healthsystemgroup_ids <- tibble(health_system_group = c(rep("Fonasa", 5), "Fuerzas Armadas, de Orden y Seguridad P\u00fablica", "Isapre", "Ninguno", "Otro sistema", "No sabe", "NaN"),
                                health_system_id = c(1:10, NA),
                                health_system_group_id = c(rep(1, 5), 2:6, NA))

for (t in 1:length(healthclean_csv)) {
  raw <- as_tibble(fread(healthclean_csv[[t]])) %>% 
    mutate(year = years[[t]])
  
  if (years[[t]] <= 2003) {
    raw <- raw %>% 
      select(year, comuna_datachile_id, s1, expr, expc) %>% 
      left_join(healthsystem_ids %>% select(health_system_id, s1_00_03), by = c("s1" = "s1_00_03")) %>% 
      select(-s1)
  }
  
  if (years[[t]] >= 2006 & years[[t]] <= 2009) {
    raw <- raw %>% 
      select(year, comuna_datachile_id, s1, expr, expc) %>% 
      left_join(healthsystem_ids %>% select(health_system_id, s1_06_09), by = c("s1" = "s1_06_09")) %>% 
      select(-s1)
  }
  
  if (years[[t]] == 2011) {
    raw <- raw %>% 
      select(year, comuna_datachile_id, s17, expr, expc) %>% 
      left_join(healthsystem_ids %>% select(health_system_id, s17_11), by = c("s17" = "s17_11")) %>% 
      select(-s17)
  }
  
  if (years[[t]] == 2013) {
    raw <- raw %>% 
      select(year, comuna_datachile_id, s14, expr, expc) %>% 
      left_join(healthsystem_ids %>% select(health_system_id, s14_13), by = c("s14" = "s14_13")) %>% 
      select(-s14)
  }
  
  if (years[[t]] == 2015) {
    raw <- raw %>% 
      select(year, comuna_datachile_id, s12, expr, expc) %>% 
      left_join(healthsystem_ids %>% select(health_system_id, s12_15), by = c("s12" = "s12_15")) %>% 
      select(-s12)
  }
  
  assign(paste0("casen_",years[[t]]), raw)
}

healthsystem <- mget(ls(pattern = "casen_[0-9]")) %>%
  bind_rows()

rm(list = ls(pattern = "casen_"))

# healthsystem <- healthsystem %>% 
#   group_by(year, comuna_datachile_id, health_system_id) %>% 
#   summarise(n = sum(expr, na.rm = T)) 
# 
# healthsystem %>% 
#   group_by(year, health_system_id) %>% 
#   summarise(n = sum(n, na.rm = T)) %>% 
#   filter(health_system_id == 6)

healthsystem <- healthsystem %>%
  select(year, comuna_datachile_id, health_system_id, expc, expr)

fwrite(healthsystem_ids, "ids/healthsystem_ids.csv")
fwrite(healthsystemgroup_ids, "ids/healthsystemgroup_ids.csv")
fwrite(healthsystem, "tidy_data/health_system/healthsystem.csv")


healthsystem %>% filter(is.na(comuna_datachile_id)) %>% distinct(year)
