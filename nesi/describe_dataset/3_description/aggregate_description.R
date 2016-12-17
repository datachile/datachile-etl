source("describe_dataset/1_functions/1_load_functions.R")
source("describe_dataset/1_functions/6_normalization.R")
source("describe_dataset/2_clean/1_clean_2015.R")

#######

nesi_individuals_with_grants_2015$year <- 2015
nesi_individuals_with_grants_2015_desc_1 <- nesi_individuals_with_grants_2015 %>% group_by(year) %>% summarise_each(funs(sum(is.na(.) | .==0 | .=="" | .==" ")))
nesi_individuals_with_grants_2015_desc_2 <- nesi_individuals_with_grants_2015 %>% group_by(year) %>% summarise_each(funs(sum(!(is.na(.) | .==0 | .=="" | .==" "))))

nesi_individuals_with_grants_2015_desc <- nesi_individuals_with_grants_2015_desc_1[,-1]
nesi_individuals_with_grants_2015_desc <- nesi_individuals_with_grants_2015_desc_2[,-1]/(nesi_individuals_with_grants_2015_desc_1[,-1]+nesi_individuals_with_grants_2015_desc_2[,-1])
nesi_individuals_with_grants_2015_desc <- round(nesi_individuals_with_grants_2015_desc, digits = 4)
nesi_individuals_with_grants_2015_desc <- as.data.frame(nesi_individuals_with_grants_2015_desc)
nesi_individuals_with_grants_2015_desc <- as.data.frame(t(nesi_individuals_with_grants_2015_desc))
setnames(nesi_individuals_with_grants_2015_desc, colnames(nesi_individuals_with_grants_2015_desc), "reply_ratio_2015")

#######

variables_2015 <- rownames(nesi_individuals_with_grants_2015_desc)
variables_2014 <- colnames(nesi_individuals_with_grants_2014)
variables_2013 <- colnames(nesi_individuals_with_grants_2013)
variables_2012 <- colnames(nesi_individuals_with_grants_2012)
variables_2011 <- colnames(nesi_individuals_with_grants_2011)
variables_2010 <- colnames(nesi_individuals_with_grants_2010)

#######

nesi_individuals_with_grants_2015_desc$available_2014 <- ifelse(variables_2015 %in% variables_2014, 1, 0)
nesi_individuals_with_grants_2015_desc$available_2013 <- ifelse(variables_2015 %in% variables_2013, 1, 0)
nesi_individuals_with_grants_2015_desc$available_2012 <- ifelse(variables_2015 %in% variables_2012, 1, 0)
nesi_individuals_with_grants_2015_desc$available_2011 <- ifelse(variables_2015 %in% variables_2011, 1, 0)
nesi_individuals_with_grants_2015_desc$available_2010 <- ifelse(variables_2015 %in% variables_2010, 1, 0)

#######

write.csv(nesi_individuals_with_grants_2015_desc, file = "describe_dataset/4_csv_files/aggregate_description_2015.csv")
