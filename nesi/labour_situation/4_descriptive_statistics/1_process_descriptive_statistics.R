labour_description <- rbind(labour_description_2010,labour_description_2011,labour_description_2012,
      labour_description_2013,labour_description_2014,labour_description_2015)

rm(labour_description_2010,labour_description_2011,labour_description_2012,
   labour_description_2013,labour_description_2014,labour_description_2015)

source("labour_situation/4_descriptive_statistics/2_statistics_at_comuna_level.R") 
source("labour_situation/4_descriptive_statistics/3_statistics_at_provincia_level.R") 
source("labour_situation/4_descriptive_statistics/4_statistics_at_region_level.R") 
source("labour_situation/4_descriptive_statistics/5_statistics_at_country_level.R") 