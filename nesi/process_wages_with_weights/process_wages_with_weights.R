source("process_wages_with_weights/process_wages_with_weights_2010.R")
source("process_wages_with_weights/process_wages_with_weights_2011.R")
source("process_wages_with_weights/process_wages_with_weights_2012.R")
source("process_wages_with_weights/process_wages_with_weights_2013.R")
source("process_wages_with_weights/process_wages_with_weights_2014.R")
source("process_wages_with_weights/process_wages_with_weights_2015.R")

nesi_tidy <- rbind(nesi_2010,nesi_2011,nesi_2012,nesi_2013,nesi_2014,nesi_2015)
rm(nesi_2010,nesi_2011,nesi_2012,nesi_2013,nesi_2014,nesi_2015)




