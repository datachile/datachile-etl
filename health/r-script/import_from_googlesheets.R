if (!require("pacman")) install.packages("pacman")
p_load(dplyr,googlesheets,readr)

gs_auth()

gs_ls()

death_causes <- gs_read(gs_title("health_access_indicators"), ws = "causas_de_muerte_tidy")
cie_10_id <- gs_read(gs_title("health_access_indicators"), ws = "cie_10_id")

life_expectancy <- gs_read(gs_title("health_access_indicators"), ws = "esperanza_de_vida_tidy")

health_access_indicators <- gs_read(gs_title("health_access_indicators"), ws = "indicadores_de_acceso a la atencion_tidy")

write_csv(death_causes, "death_causes.csv")
write_csv(cie_10_id, "cie_10_id.csv")
write_csv(life_expectancy, "life_expectancy.csv")
write_csv(health_access_indicators, "health_access_indicators.csv")
