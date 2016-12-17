source("household_income/1_functions/1_load_functions.R")
#source("household_income/1_functions/8_batch_load_data.R") #uncomment to recalculate from 0

#source("household_income/2_process_household_income/1_process_household_income.R") #uncomment to recalculate from 0
source("household_income/3_processed_household_income/1_load_processed_household_income.R") #comment when recalculating from 0

source("household_income/4_household_income_tables/1_household_income_tables_country.R")
source("household_income/4_household_income_tables/2_household_income_tables_region.R")
source("household_income/4_household_income_tables/3_household_income_tables_provincia.R")
source("household_income/4_household_income_tables/4_household_income_tables_comuna.R")

source("household_income/1_functions/9_join_all.R")

#####################################################################################

# this part is just to have consistent names between surveys
# I will use CASEN names for any dataset
# I did run this once, therefore there's no need to run this again

#save(regiones_casen_2015, file = "geographic_ids/regiones_casen_2015.RData")

#region_codes_datachile <- region_codes_datachile[,-1]
#provincia_codes_pacha <- provincia_codes_pacha[,-1]
#save(region_codes_datachile, file = "geographic_ids/region_codes_datachile.RData")
#save(provincia_codes_pacha, file = "geographic_ids/provincia_codes_pacha.RData")

#####################################################################################
