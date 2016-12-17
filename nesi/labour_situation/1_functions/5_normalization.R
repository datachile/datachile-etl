###########################
# names for normalization #
###########################

load("geographic_ids/provincia_codes_pacha.RData")
load("geographic_ids/region_codes_datachile.RData")
load("geographic_ids/regiones_casen_2015.RData")

setnames(regiones_casen_2015, colnames(regiones_casen_2015), c("region_name","provincia_name", "comuna_name"))

# NESI report 1 comuna that is not analysed in CASEN
lago_verde <- c("Ays\u00e9n","Coyhaique","Lago Verde")
regiones_casen_2015 <- rbind(regiones_casen_2015, lago_verde)
rm(lago_verde)
