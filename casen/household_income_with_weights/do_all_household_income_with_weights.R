source("household_income_with_weights/functions/load_functions.R")
#source("household_income_with_weights/functions/batch_load_data.R") #uncomment to recalculate from 0

#source("household_income_with_weights/process_household_income_with_weights/process_household_income_with_weights.R") #uncomment to recalculate from 0
source("household_income_with_weights/processed_household_income_with_weights/load_processed_household_income_with_weights.R") #comment when recalculating from 0

source("household_income_with_weights/household_income_with_weights_tables/household_income_with_weights_tables_country.R")
source("household_income_with_weights/household_income_with_weights_tables/household_income_with_weights_tables_region.R")
source("household_income_with_weights/household_income_with_weights_tables/household_income_with_weights_tables_provincia.R")
source("household_income_with_weights/household_income_with_weights_tables/household_income_with_weights_tables_comuna.R")

source("household_income_with_weights/functions/join_all.R")

#save(regiones_casen_2015, file = "geographic_ids/regiones_casen_2015.RData")

#region_codes_datachile <- region_codes_datachile[,-1]
#provincia_codes_pacha <- provincia_codes_pacha[,-1]
#save(region_codes_datachile, file = "geographic_ids/region_codes_datachile.RData")
#save(provincia_codes_pacha, file = "geographic_ids/provincia_codes_pacha.RData")
