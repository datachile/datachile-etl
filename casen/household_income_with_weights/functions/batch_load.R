source("household_income_with_weights/functions/load.R")

for (i in c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))){
  read_dataset(i)
}
