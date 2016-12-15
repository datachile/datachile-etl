source("process_wages_with_weights/process_wages_with_weights_2015.R")

source("process_wages_with_weights/process_wages_with_weights_2010.R")
source("process_wages_with_weights/process_wages_with_weights_2011.R")
source("process_wages_with_weights/process_wages_with_weights_2012.R")
source("process_wages_with_weights/process_wages_with_weights_2013.R")
source("process_wages_with_weights/process_wages_with_weights_2014.R")

save(nesi_individuals_with_grants_2010, file = "processed_wages_with_weights/nesi_individuals_with_grants_2010.RData")
save(nesi_individuals_with_grants_2011, file = "processed_wages_with_weights/nesi_individuals_with_grants_2011.RData")
save(nesi_individuals_with_grants_2012, file = "processed_wages_with_weights/nesi_individuals_with_grants_2012.RData")
save(nesi_individuals_with_grants_2013, file = "processed_wages_with_weights/nesi_individuals_with_grants_2013.RData")
save(nesi_individuals_with_grants_2014, file = "processed_wages_with_weights/nesi_individuals_with_grants_2014.RData")
save(nesi_individuals_with_grants_2015, file = "processed_wages_with_weights/nesi_individuals_with_grants_2015.RData")
