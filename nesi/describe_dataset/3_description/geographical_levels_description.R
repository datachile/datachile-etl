source("describe_dataset/1_functions/1_load_functions.R")
source("describe_dataset/1_functions/6_normalization.R")
source("describe_dataset/2_clean/1_clean_2015.R")

#########################
# count invalid replies
#########################

#########################
## summarise by comuna
#########################

nesi_individuals_with_grants_2015_c_1 <- nesi_individuals_with_grants_2015 %>% group_by(R_P_C) %>% summarise_each(funs(sum(is.na(.) | .==0 | .=="" | .==" ")))
setnames(nesi_individuals_with_grants_2015_c_1, "R_P_C", "comuna_name")

#########################
## aggregate by provincia
#########################

nesi_individuals_with_grants_2015_p_1 <- nesi_individuals_with_grants_2015_c_1
nesi_individuals_with_grants_2015_p_1 <- join(nesi_individuals_with_grants_2015_p_1, regiones_casen_2015[,c("comuna_name","provincia_name")], by = "comuna_name")
nesi_individuals_with_grants_2015_p_1 <- move_col(nesi_individuals_with_grants_2015_p_1, c("provincia_name"=1))
nesi_individuals_with_grants_2015_p_1 <- nesi_individuals_with_grants_2015_p_1[,!(names(nesi_individuals_with_grants_2015_p_1) %in% "comuna_name")]
nesi_individuals_with_grants_2015_p_1 <- ddply(nesi_individuals_with_grants_2015_p_1, "provincia_name", numcolwise(sum))

#########################
## aggregate by region
#########################

nesi_individuals_with_grants_2015_r_1 <- nesi_individuals_with_grants_2015_c_1
nesi_individuals_with_grants_2015_r_1 <- join(nesi_individuals_with_grants_2015_r_1, regiones_casen_2015[,c("comuna_name","region_name")], by = "comuna_name")
nesi_individuals_with_grants_2015_r_1 <- move_col(nesi_individuals_with_grants_2015_r_1, c("region_name"=1))
nesi_individuals_with_grants_2015_r_1 <- nesi_individuals_with_grants_2015_r_1[,!(names(nesi_individuals_with_grants_2015_r_1) %in% "comuna_name")]
nesi_individuals_with_grants_2015_r_1 <- ddply(nesi_individuals_with_grants_2015_r_1, "region_name", numcolwise(sum))

#########################
# count valid replies
#########################

#########################
## summarise by comuna
#########################

nesi_individuals_with_grants_2015_c_2 <- nesi_individuals_with_grants_2015 %>% group_by(R_P_C) %>% summarise_each(funs(sum(!(is.na(.) | .==0 | .=="" | .==" "))))
setnames(nesi_individuals_with_grants_2015_c_2, "R_P_C", "comuna_name")

#########################
## aggregate by provincia
#########################

nesi_individuals_with_grants_2015_p_2 <- nesi_individuals_with_grants_2015_c_2
nesi_individuals_with_grants_2015_p_2 <- join(nesi_individuals_with_grants_2015_p_2, regiones_casen_2015[,c("comuna_name","provincia_name")], by = "comuna_name")
nesi_individuals_with_grants_2015_p_2 <- move_col(nesi_individuals_with_grants_2015_p_2, c("provincia_name"=1))
nesi_individuals_with_grants_2015_p_2 <- nesi_individuals_with_grants_2015_p_2[,!(names(nesi_individuals_with_grants_2015_p_2) %in% "comuna_name")]
nesi_individuals_with_grants_2015_p_2 <- ddply(nesi_individuals_with_grants_2015_p_2, "provincia_name", numcolwise(sum))

#########################
## aggregate by region
#########################

nesi_individuals_with_grants_2015_r_2 <- nesi_individuals_with_grants_2015_c_2
nesi_individuals_with_grants_2015_r_2 <- join(nesi_individuals_with_grants_2015_r_2, regiones_casen_2015[,c("comuna_name","region_name")], by = "comuna_name")
nesi_individuals_with_grants_2015_r_2 <- move_col(nesi_individuals_with_grants_2015_r_2, c("region_name"=1))
nesi_individuals_with_grants_2015_r_2 <- nesi_individuals_with_grants_2015_r_2[,!(names(nesi_individuals_with_grants_2015_r_2) %in% "comuna_name")]
nesi_individuals_with_grants_2015_r_2 <- ddply(nesi_individuals_with_grants_2015_r_2, "region_name", numcolwise(sum))

##################################
# calculate ratio of valid replies
##################################

nesi_individuals_with_grants_2015_c_pcent <- nesi_individuals_with_grants_2015_c_2
nesi_individuals_with_grants_2015_c_pcent[,-1] <- nesi_individuals_with_grants_2015_c_2[,-1]/(nesi_individuals_with_grants_2015_c_1[,-1]+nesi_individuals_with_grants_2015_c_2[,-1])
nesi_individuals_with_grants_2015_c_pcent[,-1] <- round(nesi_individuals_with_grants_2015_c_pcent[,-1], digits = 4)
setnames(nesi_individuals_with_grants_2015_c_pcent, "comuna_name", "geography_name")
nesi_individuals_with_grants_2015_c_pcent$geography_division <- "comuna"
nesi_individuals_with_grants_2015_c_pcent <- move_col(nesi_individuals_with_grants_2015_c_pcent, c("geography_division"=1))

nesi_individuals_with_grants_2015_p_pcent <- nesi_individuals_with_grants_2015_p_2
nesi_individuals_with_grants_2015_p_pcent[,-1] <- nesi_individuals_with_grants_2015_p_2[,-1]/(nesi_individuals_with_grants_2015_p_1[,-1]+nesi_individuals_with_grants_2015_p_2[,-1])
nesi_individuals_with_grants_2015_p_pcent[,-1] <- round(nesi_individuals_with_grants_2015_p_pcent[,-1], digits = 4)
setnames(nesi_individuals_with_grants_2015_p_pcent, "provincia_name", "geography_name")
nesi_individuals_with_grants_2015_p_pcent$geography_division <- "provincia"
nesi_individuals_with_grants_2015_p_pcent <- move_col(nesi_individuals_with_grants_2015_p_pcent, c("geography_division"=1))

nesi_individuals_with_grants_2015_r_pcent <- nesi_individuals_with_grants_2015_r_2
nesi_individuals_with_grants_2015_r_pcent[,-1] <- nesi_individuals_with_grants_2015_r_2[,-1]/(nesi_individuals_with_grants_2015_r_1[,-1]+nesi_individuals_with_grants_2015_r_2[,-1])
nesi_individuals_with_grants_2015_r_pcent[,-1] <- round(nesi_individuals_with_grants_2015_r_pcent[,-1], digits = 4)
setnames(nesi_individuals_with_grants_2015_r_pcent, "region_name", "geography_name")
nesi_individuals_with_grants_2015_r_pcent$geography_division <- "region"
nesi_individuals_with_grants_2015_r_pcent <- move_col(nesi_individuals_with_grants_2015_r_pcent, c("geography_division"=1))

nesi_individuals_with_grants_2015_all_pcent <- rbind(nesi_individuals_with_grants_2015_c_pcent,nesi_individuals_with_grants_2015_p_pcent,nesi_individuals_with_grants_2015_r_pcent)
nesi_individuals_with_grants_2015_all_pcent[nesi_individuals_with_grants_2015_all_pcent < 0] <- 0

##################################
# join geographical units
##################################

nesi_individuals_with_grants_2015_c_count <- nesi_individuals_with_grants_2015_c_2
nesi_individuals_with_grants_2015_c_count$geography_division <- "comuna"
nesi_individuals_with_grants_2015_c_count <- move_col(nesi_individuals_with_grants_2015_c_count, c("geography_division"=1))

nesi_individuals_with_grants_2015_p_count <- nesi_individuals_with_grants_2015_p_2
nesi_individuals_with_grants_2015_p_count$geography_division <- "provincia"
nesi_individuals_with_grants_2015_p_count <- move_col(nesi_individuals_with_grants_2015_p_count, c("geography_division"=1))

nesi_individuals_with_grants_2015_r_count <- nesi_individuals_with_grants_2015_r_2
nesi_individuals_with_grants_2015_r_count$geography_division <- "region"
nesi_individuals_with_grants_2015_r_count <- move_col(nesi_individuals_with_grants_2015_r_count, c("geography_division"=1))

nesi_individuals_with_grants_2015_all_count <- rbind(nesi_individuals_with_grants_2015_c_count,nesi_individuals_with_grants_2015_p_count,nesi_individuals_with_grants_2015_r_count)

##################################
# join geographical units
##################################

write.csv(nesi_individuals_with_grants_2015_all_pcent, file = "describe_dataset/4_csv_files/geographical_description_percentages_2015.csv")
write.csv(nesi_individuals_with_grants_2015_all_count, file = "describe_dataset/4_csv_files/geographical_description_count_2015.csv")
