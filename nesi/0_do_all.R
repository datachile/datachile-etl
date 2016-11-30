source("1_libraries.R")
source("2_load.R")
source("3_batch_load.R")
source("4_fix_region.R")


nesi_2015 <- nesi_individuals_with_grants_2015[,c("ING_T_P", "FACT_PER", "OCUP_REF", "SEXO", "REGION", "CISE")]
nesi_2015$YEAR <- 2015

nesi_2015 <- svydesign(id = ~1, data = nesi_2015, weight = ~FACT_PER)

nesi_2014 <- nesi_individuals_with_grants_2014[,c("ING_T_P", "FACT_PER", "OCUP_REF", "SEXO", "REGION", "CISE")]
nesi_2014$YEAR <- 2014

nesi_2013 <- nesi_individuals_with_grants_2013[,c("ING_T_P", "FACT_PER", "OCUP_REF", "SEXO", "REGION", "CISE")]
nesi_2013$YEAR <- 2013

nesi_2012 <- nesi_individuals_with_grants_2012[,c("ING_T_P", "FACT_PER", "OCUP_REF", "SEXO", "REGION", "CISE")]
nesi_2012$YEAR <- 2012

nesi_2011 <- nesi_individuals_with_grants_2011[,c("ING_T_P", "FACT_PER", "OCUP_REF", "SEXO", "REGION", "CISE")]
nesi_2011$YEAR <- 2011

nesi_2010 <- nesi_individuals_with_grants_2010[,c("ING_T_P", "FACT_PER", "OCUP_REF", "SEXO", "REGION", "CISE")]
nesi_2010$YEAR <- 2010

nesi_tidy <- rbind(nesi_2010,nesi_2011,nesi_2012,nesi_2013,nesi_2014,nesi_2015)
rm(nesi_2010,nesi_2011,nesi_2012,nesi_2013,nesi_2014,nesi_2015)




