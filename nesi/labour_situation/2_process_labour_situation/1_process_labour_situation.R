source("labour_situation/2_process_labour_situation/7_process_labour_situation_2015.R")

source("labour_situation/2_process_labour_situation/2_process_labour_situation_2010.R")
source("labour_situation/2_process_labour_situation/3_process_labour_situation_2011.R")
source("labour_situation/2_process_labour_situation/4_process_labour_situation_2012.R")
source("labour_situation/2_process_labour_situation/5_process_labour_situation_2013.R")
source("labour_situation/2_process_labour_situation/6_process_labour_situation_2014.R")

save(labour_description_2010, file = "labour_situation/3_processed_labour_situation/labour_situation_2010.RData")
save(labour_description_2011, file = "labour_situation/3_processed_labour_situation/labour_situation_2011.RData")
save(labour_description_2012, file = "labour_situation/3_processed_labour_situation/labour_situation_2012.RData")
save(labour_description_2013, file = "labour_situation/3_processed_labour_situation/labour_situation_2013.RData")
save(labour_description_2014, file = "labour_situation/3_processed_labour_situation/labour_situation_2014.RData")
save(labour_description_2015, file = "labour_situation/3_processed_labour_situation/labour_situation_2015.RData")

rm(nesi_individuals_with_grants_2010,
   nesi_individuals_with_grants_2011,
   nesi_individuals_with_grants_2012,
   nesi_individuals_with_grants_2013,
   nesi_individuals_with_grants_2014,
   nesi_individuals_with_grants_2015)
