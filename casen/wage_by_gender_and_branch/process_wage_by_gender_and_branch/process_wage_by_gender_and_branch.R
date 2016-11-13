# load functions

source("wage_by_gender_and_branch/functions/batch_load.R")
source("wage_by_gender_and_branch/functions/insert_row.R")
source("wage_by_gender_and_branch/functions/move_col.R")

# load surveys (always load 2015 first!)

source("wage_by_gender_and_branch/process_wage_by_gender_and_branch/process_wage_by_gender_and_branch_2015.R")

source("wage_by_gender_and_branch/process_wage_by_gender_and_branch/process_wage_by_gender_and_branch_2011.R")
source("wage_by_gender_and_branch/process_wage_by_gender_and_branch/process_wage_by_gender_and_branch_2013.R")

rm(casen_2011, casen_2013, casen_2015)
