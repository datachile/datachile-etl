# load surveys (always load 2015 first!)

source("household_income/2_process_household_income/13_process_household_income_2015.R")

source("household_income/2_process_household_income/2_process_household_income_1990.R")
source("household_income/2_process_household_income/3_process_household_income_1992.R")
source("household_income/2_process_household_income/4_process_household_income_1994.R")
source("household_income/2_process_household_income/5_process_household_income_1996.R")
source("household_income/2_process_household_income/6_process_household_income_1998.R")

source("household_income/2_process_household_income/7_process_household_income_2000.R")
source("household_income/2_process_household_income/8_process_household_income_2003.R")
source("household_income/2_process_household_income/9_process_household_income_2006.R")
source("household_income/2_process_household_income/10_process_household_income_2009.R")

source("household_income/2_process_household_income/11_process_household_income_2011.R")
source("household_income/2_process_household_income/12_process_household_income_2013.R")

rm(casen_1990, casen_1992, casen_1994, casen_1996, casen_1998, 
   casen_2000, casen_2003, casen_2006, casen_2009, 
   casen_2011, casen_2013, casen_2015)

save(household_income_1990, file = paste0(getwd(),"/household_income/3_processed_household_income/household_income_1990.RData"))
save(household_income_1992, file = paste0(getwd(),"/household_income/3_processed_household_income/household_income_1992.RData"))
save(household_income_1994, file = paste0(getwd(),"/household_income/3_processed_household_income/household_income_1994.RData"))
save(household_income_1996, file = paste0(getwd(),"/household_income/3_processed_household_income/household_income_1996.RData"))
save(household_income_1998, file = paste0(getwd(),"/household_income/3_processed_household_income/household_income_1998.RData"))
save(household_income_2000, file = paste0(getwd(),"/household_income/3_processed_household_income/household_income_2000.RData"))
save(household_income_2003, file = paste0(getwd(),"/household_income/3_processed_household_income/household_income_2003.RData"))
save(household_income_2006, file = paste0(getwd(),"/household_income/3_processed_household_income/household_income_2006.RData"))
save(household_income_2009, file = paste0(getwd(),"/household_income/3_processed_household_income/household_income_2009.RData"))
save(household_income_2011, file = paste0(getwd(),"/household_income/3_processed_household_income/household_income_2011.RData"))
save(household_income_2013, file = paste0(getwd(),"/household_income/3_processed_household_income/household_income_2013.RData"))
save(household_income_2015, file = paste0(getwd(),"/household_income/3_processed_household_income/household_income_2015.RData"))
