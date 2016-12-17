source("describe_dataset/functions/load_functions.R")
source("describe_dataset/functions/normalization.R")
source("describe_dataset/clean/clean_2015.R")

#######

casen_2015$year <- 2015
casen_2015_desc_1 <- casen_2015 %>% group_by(year) %>% summarise_each(funs(sum(is.na(.) | .==0 | .=="" | .==" ")))
casen_2015_desc_2 <- casen_2015 %>% group_by(year) %>% summarise_each(funs(sum(!(is.na(.) | .==0 | .=="" | .==" "))))

casen_2015_desc <- casen_2015_desc_1[,-1]
casen_2015_desc <- casen_2015_desc_2[,-1]/(casen_2015_desc_1[,-1]+casen_2015_desc_2[,-1])
casen_2015_desc <- round(casen_2015_desc, digits = 4)
casen_2015_desc <- as.data.frame(casen_2015_desc)
casen_2015_desc <- as.data.frame(t(casen_2015_desc))
setnames(casen_2015_desc, colnames(casen_2015_desc), "reply_ratio_2015")

#######

variables_2015 <- rownames(casen_2015_desc)
variables_2013 <- colnames(casen_2013)
variables_2011 <- colnames(casen_2011)

variables_2009 <- colnames(casen_2009)
variables_2006 <- colnames(casen_2006)
variables_2003 <- colnames(casen_2003)
variables_2000 <- colnames(casen_2000)

variables_1998 <- colnames(casen_1998)
variables_1996 <- colnames(casen_1996)
variables_1994 <- colnames(casen_1994)
variables_1992 <- colnames(casen_1992)
variables_1990 <- colnames(casen_1990)

#######

casen_2015_desc$available_2013 <- ifelse(variables_2015 %in% variables_2013, 1, 0)
casen_2015_desc$available_2011 <- ifelse(variables_2015 %in% variables_2011, 1, 0)

casen_2015_desc$available_2009 <- ifelse(variables_2015 %in% variables_2009, 1, 0)
casen_2015_desc$available_2006 <- ifelse(variables_2015 %in% variables_2006, 1, 0)
casen_2015_desc$available_2003 <- ifelse(variables_2015 %in% variables_2003, 1, 0)
casen_2015_desc$available_2000 <- ifelse(variables_2015 %in% variables_2000, 1, 0)

casen_2015_desc$available_1998 <- ifelse(variables_2015 %in% variables_1998, 1, 0)
casen_2015_desc$available_1996 <- ifelse(variables_2015 %in% variables_1996, 1, 0)
casen_2015_desc$available_1994 <- ifelse(variables_2015 %in% variables_1994, 1, 0)
casen_2015_desc$available_1992 <- ifelse(variables_2015 %in% variables_1992, 1, 0)
casen_2015_desc$available_1990 <- ifelse(variables_2015 %in% variables_1990, 1, 0)

#######

write.csv(casen_2015_desc, file = "describe_dataset/aggregate_description_2015.csv")
