source("normalization.R")

source("household_tables_region.R")
source("household_tables_provincia.R")
source("household_tables_comuna.R")

source("join_all.R")

write.csv(tidy_all, file = "tidy_all.csv")