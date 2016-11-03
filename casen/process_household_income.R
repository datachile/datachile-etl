# load functions

source("batch_load.R")
source("insert_row.R")
source("move_col.R")

# load surveys (always load 2015 first!)

source("process_household_income_2015.R")

source("process_household_income_1990.R")
source("process_household_income_1992.R")
source("process_household_income_1994.R")
source("process_household_income_1996.R")
source("process_household_income_1998.R")

source("process_household_income_2000.R")
source("process_household_income_2003.R")
source("process_household_income_2006.R")
source("process_household_income_2009.R")

source("process_household_income_2011.R")
source("process_household_income_2013.R")

rm(casen_1990, casen_1992, casen_1994, casen_1996, casen_1998, 
   casen_2000, casen_2003, casen_2006, casen_2009, 
   casen_2011, casen_2013, casen_2015)