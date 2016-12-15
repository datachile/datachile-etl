source("describe_dataset/functions/load_functions.R")
source("describe_dataset/functions/normalization.R")
source("describe_dataset/clean/clean_2015.R")

#########################
# count invalid replies
#########################

#########################
## summarise by comuna
#########################

casen_2015_c_1 <- casen_2015 %>% group_by(comuna) %>% summarise_each(funs(sum(is.na(.) | .==0 | .=="" | .==" ")))
setnames(casen_2015_c_1, "comuna", "comuna_name")

#########################
## aggregate by provincia
#########################

casen_2015_p_1 <- casen_2015_c_1
casen_2015_p_1 <- join(casen_2015_p_1, regiones_casen_2015[,c("comuna_name","provincia_name")], by = "comuna_name")
casen_2015_p_1 <- move_col(casen_2015_p_1, c("provincia_name"=1))
casen_2015_p_1 <- casen_2015_p_1[,!(names(casen_2015_p_1) %in% "comuna_name")]
casen_2015_p_1 <- ddply(casen_2015_p_1, "provincia_name", numcolwise(sum))

#########################
## aggregate by region
#########################

casen_2015_r_1 <- casen_2015_c_1
casen_2015_r_1 <- join(casen_2015_r_1, regiones_casen_2015[,c("comuna_name","region_name")], by = "comuna_name")
casen_2015_r_1 <- move_col(casen_2015_r_1, c("region_name"=1))
casen_2015_r_1 <- casen_2015_r_1[,!(names(casen_2015_r_1) %in% "comuna_name")]
casen_2015_r_1 <- ddply(casen_2015_r_1, "region_name", numcolwise(sum))

#########################
# count valid replies
#########################

#########################
## summarise by comuna
#########################

casen_2015_c_2 <- casen_2015 %>% group_by(comuna) %>% summarise_each(funs(sum(!(is.na(.) | .==0 | .=="" | .==" "))))
setnames(casen_2015_c_2, "comuna", "comuna_name")

#########################
## aggregate by provincia
#########################

casen_2015_p_2 <- casen_2015_c_2
casen_2015_p_2 <- join(casen_2015_p_2, regiones_casen_2015[,c("comuna_name","provincia_name")], by = "comuna_name")
casen_2015_p_2 <- move_col(casen_2015_p_2, c("provincia_name"=1))
casen_2015_p_2 <- casen_2015_p_2[,!(names(casen_2015_p_2) %in% "comuna_name")]
casen_2015_p_2 <- ddply(casen_2015_p_2, "provincia_name", numcolwise(sum))

#########################
## aggregate by region
#########################

casen_2015_r_2 <- casen_2015_c_2
casen_2015_r_2 <- join(casen_2015_r_2, regiones_casen_2015[,c("comuna_name","region_name")], by = "comuna_name")
casen_2015_r_2 <- move_col(casen_2015_r_2, c("region_name"=1))
casen_2015_r_2 <- casen_2015_r_2[,!(names(casen_2015_r_2) %in% "comuna_name")]
casen_2015_r_2 <- ddply(casen_2015_r_2, "region_name", numcolwise(sum))

##################################
# calculate ratio of valid replies
##################################

casen_2015_c_pcent <- casen_2015_c_2
casen_2015_c_pcent[,-1] <- casen_2015_c_2[,-1]/(casen_2015_c_1[,-1]+casen_2015_c_2[,-1])
casen_2015_c_pcent[,-1] <- round(casen_2015_c_pcent[,-1], digits = 4)
setnames(casen_2015_c_pcent, "comuna_name", "geography_name")
casen_2015_c_pcent$geography_division <- "comuna"
casen_2015_c_pcent <- move_col(casen_2015_c_pcent, c("geography_division"=1))

casen_2015_p_pcent <- casen_2015_p_2
casen_2015_p_pcent[,-1] <- casen_2015_p_2[,-1]/(casen_2015_p_1[,-1]+casen_2015_p_2[,-1])
casen_2015_p_pcent[,-1] <- round(casen_2015_p_pcent[,-1], digits = 4)
setnames(casen_2015_p_pcent, "provincia_name", "geography_name")
casen_2015_p_pcent$geography_division <- "provincia"
casen_2015_p_pcent <- move_col(casen_2015_p_pcent, c("geography_division"=1))

casen_2015_r_pcent <- casen_2015_r_2
casen_2015_r_pcent[,-1] <- casen_2015_r_2[,-1]/(casen_2015_r_1[,-1]+casen_2015_r_2[,-1])
casen_2015_r_pcent[,-1] <- round(casen_2015_r_pcent[,-1], digits = 4)
setnames(casen_2015_r_pcent, "region_name", "geography_name")
casen_2015_r_pcent$geography_division <- "region"
casen_2015_r_pcent <- move_col(casen_2015_r_pcent, c("geography_division"=1))

casen_2015_all_pcent <- rbind(casen_2015_c_pcent,casen_2015_p_pcent,casen_2015_r_pcent)
casen_2015_all_pcent[casen_2015_all_pcent < 0] <- 0

##################################
# join geographical units
##################################

casen_2015_c_count <- casen_2015_c_2
casen_2015_c_count$geography_division <- "comuna"
casen_2015_c_count <- move_col(casen_2015_c_count, c("geography_division"=1))

casen_2015_p_count <- casen_2015_p_2
casen_2015_p_count$geography_division <- "provincia"
casen_2015_p_count <- move_col(casen_2015_p_count, c("geography_division"=1))

casen_2015_r_count <- casen_2015_r_2
casen_2015_r_count$geography_division <- "region"
casen_2015_r_count <- move_col(casen_2015_r_count, c("geography_division"=1))

casen_2015_all_count <- rbind(casen_2015_c_count,casen_2015_p_count,casen_2015_r_count)

##################################
# join geographical units
##################################

write.csv(casen_2015_all_pcent, file = "describe_dataset/geographical_description_percentages_2015.csv")
write.csv(casen_2015_all_count, file = "describe_dataset/geographical_description_count_2015.csv")
