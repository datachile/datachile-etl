# load surveys (always load 2015 first!)

source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights_2015.R")

source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights_1990.R")
source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights_1992.R")
source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights_1994.R")
source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights_1996.R")
source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights_1998.R")

source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights_2000.R")
source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights_2003.R")
source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights_2006.R")
source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights_2009.R")

source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights_2011.R")
source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights_2013.R")

rm(casen_1990, casen_1992, casen_1994, casen_1996, casen_1998, 
   casen_2000, casen_2003, casen_2006, casen_2009, 
   casen_2011, casen_2013, casen_2015)

save(wage_by_gender_with_weights_1990, file = paste0(getwd(),"/wage_by_gender_with_weights/processed_wage_by_gender_with_weights/wage_by_gender_with_weights_1990.RData"))
save(wage_by_gender_with_weights_1992, file = paste0(getwd(),"/wage_by_gender_with_weights/processed_wage_by_gender_with_weights/wage_by_gender_with_weights_1992.RData"))
save(wage_by_gender_with_weights_1994, file = paste0(getwd(),"/wage_by_gender_with_weights/processed_wage_by_gender_with_weights/wage_by_gender_with_weights_1994.RData"))
save(wage_by_gender_with_weights_1996, file = paste0(getwd(),"/wage_by_gender_with_weights/processed_wage_by_gender_with_weights/wage_by_gender_with_weights_1996.RData"))
save(wage_by_gender_with_weights_1998, file = paste0(getwd(),"/wage_by_gender_with_weights/processed_wage_by_gender_with_weights/wage_by_gender_with_weights_1998.RData"))
save(wage_by_gender_with_weights_2000, file = paste0(getwd(),"/wage_by_gender_with_weights/processed_wage_by_gender_with_weights/wage_by_gender_with_weights_2000.RData"))
save(wage_by_gender_with_weights_2003, file = paste0(getwd(),"/wage_by_gender_with_weights/processed_wage_by_gender_with_weights/wage_by_gender_with_weights_2003.RData"))
save(wage_by_gender_with_weights_2006, file = paste0(getwd(),"/wage_by_gender_with_weights/processed_wage_by_gender_with_weights/wage_by_gender_with_weights_2006.RData"))
save(wage_by_gender_with_weights_2009, file = paste0(getwd(),"/wage_by_gender_with_weights/processed_wage_by_gender_with_weights/wage_by_gender_with_weights_2009.RData"))
save(wage_by_gender_with_weights_2011, file = paste0(getwd(),"/wage_by_gender_with_weights/processed_wage_by_gender_with_weights/wage_by_gender_with_weights_2011.RData"))
save(wage_by_gender_with_weights_2013, file = paste0(getwd(),"/wage_by_gender_with_weights/processed_wage_by_gender_with_weights/wage_by_gender_with_weights_2013.RData"))
save(wage_by_gender_with_weights_2015, file = paste0(getwd(),"/wage_by_gender_with_weights/processed_wage_by_gender_with_weights/wage_by_gender_with_weights_2015.RData"))
