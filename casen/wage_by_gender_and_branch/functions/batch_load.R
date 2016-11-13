source("wage_by_gender_and_branch/functions/load.R")

for (i in c(2011,2013,2015)){
  read_dataset(i)
}
