# load functions

source("wage_by_gender/functions/batch_load.R")
source("wage_by_gender/functions/insert_row.R")
source("wage_by_gender/functions/move_col.R")

# load surveys (always load 2015 first!)

source("wage_by_gender/process_wage_by_gender/process_wage_by_gender_2015.R")

#source("wage_by_gender/process_wage_by_gender/process_wage_by_gender_1990.R")
#source("wage_by_gender/process_wage_by_gender/process_wage_by_gender_1992.R")
#source("wage_by_gender/process_wage_by_gender/process_wage_by_gender_1994.R")
#source("wage_by_gender/process_wage_by_gender/process_wage_by_gender_1996.R")
#source("wage_by_gender/process_wage_by_gender/process_wage_by_gender_1998.R")

#source("wage_by_gender/process_wage_by_gender/process_wage_by_gender_2000.R")
#source("wage_by_gender/process_wage_by_gender/process_wage_by_gender_2003.R")
#source("wage_by_gender/process_wage_by_gender/process_wage_by_gender_2006.R")
#source("wage_by_gender/process_wage_by_gender/process_wage_by_gender_2009.R")

#source("wage_by_gender/process_wage_by_gender/process_wage_by_gender_2011.R")
#source("wage_by_gender/process_wage_by_gender/process_wage_by_gender_2013.R")

#rm(casen_1990, casen_1992, casen_1994, casen_1996, casen_1998, 
#   casen_2000, casen_2003, casen_2006, casen_2009, 
#   casen_2011, casen_2013, casen_2015)
