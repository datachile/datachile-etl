################
# weighted mean
################

weighted_mean_sex_country <- ddply(labour_description, .(sex,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_icse_country <- ddply(labour_description, .(sex,icse,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_isced_country <- ddply(labour_description, .(sex,isced,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_isco_country <- ddply(labour_description, .(sex,isco,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_isic_country <- ddply(labour_description, .(sex,isic,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_work_day_country <- ddply(labour_description, .(sex,work_day,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_company_size_country <- ddply(labour_description, .(sex,company_size,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))

setnames(weighted_mean_sex_country, c("FUN"), c("weighted_mean"))
setnames(weighted_mean_sex_icse_country, c("FUN"), c("weighted_mean"))
setnames(weighted_mean_sex_isced_country, c("FUN"), c("weighted_mean"))
setnames(weighted_mean_sex_isco_country, c("FUN"), c("weighted_mean"))
setnames(weighted_mean_sex_isic_country, c("FUN"), c("weighted_mean"))
setnames(weighted_mean_sex_work_day_country, c("FUN"), c("weighted_mean"))
setnames(weighted_mean_sex_company_size_country, c("FUN"), c("weighted_mean"))

##################
# weighted median
##################

weighted_median_sex_country <- ddply(labour_description, .(sex,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_icse_country <- ddply(labour_description, .(sex,icse,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_isced_country <- ddply(labour_description, .(sex,isced,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_isco_country <- ddply(labour_description, .(sex,isco,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_isic_country <- ddply(labour_description, .(sex,isic,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_work_day_country <- ddply(labour_description, .(sex,work_day,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_company_size_country <- ddply(labour_description, .(sex,company_size,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))

setnames(weighted_median_sex_country, c("FUN"), c("weighted_median"))
setnames(weighted_median_sex_icse_country, c("FUN"), c("weighted_median"))
setnames(weighted_median_sex_isced_country, c("FUN"), c("weighted_median"))
setnames(weighted_median_sex_isco_country, c("FUN"), c("weighted_median"))
setnames(weighted_median_sex_isic_country, c("FUN"), c("weighted_median"))
setnames(weighted_median_sex_work_day_country, c("FUN"), c("weighted_median"))
setnames(weighted_median_sex_company_size_country, c("FUN"), c("weighted_median"))

###################################
# confidence interval for the mean
###################################

lb_weighted_mean_sex_country <- ddply(labour_description, .(sex,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_icse_country <- ddply(labour_description, .(sex,icse,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_isced_country <- ddply(labour_description, .(sex,isced,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_isco_country <- ddply(labour_description, .(sex,isco,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_isic_country <- ddply(labour_description, .(sex,isic,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_work_day_country <- ddply(labour_description, .(sex,work_day,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_company_size_country <- ddply(labour_description, .(sex,company_size,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))

ub_weighted_mean_sex_country <- ddply(labour_description, .(sex,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_icse_country <- ddply(labour_description, .(sex,icse,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_isced_country <- ddply(labour_description, .(sex,isced,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_isco_country <- ddply(labour_description, .(sex,isco,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_isic_country <- ddply(labour_description, .(sex,isic,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_work_day_country <- ddply(labour_description, .(sex,work_day,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_company_size_country <- ddply(labour_description, .(sex,company_size,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))

setnames(lb_weighted_mean_sex_country, c("FUN"), c("lb_weighted_mean"))
setnames(lb_weighted_mean_sex_icse_country, c("FUN"), c("lb_weighted_mean"))
setnames(lb_weighted_mean_sex_isced_country, c("FUN"), c("lb_weighted_mean"))
setnames(lb_weighted_mean_sex_isco_country, c("FUN"), c("lb_weighted_mean"))
setnames(lb_weighted_mean_sex_isic_country, c("FUN"), c("lb_weighted_mean"))
setnames(lb_weighted_mean_sex_work_day_country, c("FUN"), c("lb_weighted_mean"))
setnames(lb_weighted_mean_sex_company_size_country, c("FUN"), c("lb_weighted_mean"))

setnames(ub_weighted_mean_sex_country, c("FUN"), c("ub_weighted_mean"))
setnames(ub_weighted_mean_sex_icse_country, c("FUN"), c("ub_weighted_mean"))
setnames(ub_weighted_mean_sex_isced_country, c("FUN"), c("ub_weighted_mean"))
setnames(ub_weighted_mean_sex_isco_country, c("FUN"), c("ub_weighted_mean"))
setnames(ub_weighted_mean_sex_isic_country, c("FUN"), c("ub_weighted_mean"))
setnames(ub_weighted_mean_sex_work_day_country, c("FUN"), c("ub_weighted_mean"))
setnames(ub_weighted_mean_sex_company_size_country, c("FUN"), c("ub_weighted_mean"))

####################################
# confidence interval for the median
####################################

lb_weighted_median_sex_country <- ddply(labour_description, .(sex,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_icse_country <- ddply(labour_description, .(sex,icse,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_isced_country <- ddply(labour_description, .(sex,isced,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_isco_country <- ddply(labour_description, .(sex,isco,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_isic_country <- ddply(labour_description, .(sex,isic,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_work_day_country <- ddply(labour_description, .(sex,work_day,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_company_size_country <- ddply(labour_description, .(sex,company_size,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))

ub_weighted_median_sex_country <- ddply(labour_description, .(sex,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_icse_country <- ddply(labour_description, .(sex,icse,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_isced_country <- ddply(labour_description, .(sex,isced,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_isco_country <- ddply(labour_description, .(sex,isco,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_isic_country <- ddply(labour_description, .(sex,isic,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_work_day_country <- ddply(labour_description, .(sex,work_day,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_company_size_country <- ddply(labour_description, .(sex,company_size,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))

setnames(lb_weighted_median_sex_country, c("FUN"), c("lb_weighted_median"))
setnames(lb_weighted_median_sex_icse_country, c("FUN"), c("lb_weighted_median"))
setnames(lb_weighted_median_sex_isced_country, c("FUN"), c("lb_weighted_median"))
setnames(lb_weighted_median_sex_isco_country, c("FUN"), c("lb_weighted_median"))
setnames(lb_weighted_median_sex_isic_country, c("FUN"), c("lb_weighted_median"))
setnames(lb_weighted_median_sex_work_day_country, c("FUN"), c("lb_weighted_median"))
setnames(lb_weighted_median_sex_company_size_country, c("FUN"), c("lb_weighted_median"))

setnames(ub_weighted_median_sex_country, c("FUN"), c("ub_weighted_median"))
setnames(ub_weighted_median_sex_icse_country, c("FUN"), c("ub_weighted_median"))
setnames(ub_weighted_median_sex_isced_country, c("FUN"), c("ub_weighted_median"))
setnames(ub_weighted_median_sex_isco_country, c("FUN"), c("ub_weighted_median"))
setnames(ub_weighted_median_sex_isic_country, c("FUN"), c("ub_weighted_median"))
setnames(ub_weighted_median_sex_work_day_country, c("FUN"), c("ub_weighted_median"))
setnames(ub_weighted_median_sex_company_size_country, c("FUN"), c("ub_weighted_median"))

##########################
# join at country level
##########################

sex_country <- inner_join(weighted_mean_sex_country,weighted_median_sex_country)
sex_country <- inner_join(sex_country,lb_weighted_mean_sex_country)
sex_country <- inner_join(sex_country,ub_weighted_mean_sex_country)
sex_country <- inner_join(sex_country,lb_weighted_median_sex_country)
sex_country <- inner_join(sex_country,ub_weighted_median_sex_country)

sex_icse_country <- inner_join(weighted_mean_sex_icse_country,weighted_median_sex_icse_country)
sex_icse_country <- inner_join(sex_icse_country,lb_weighted_mean_sex_icse_country)
sex_icse_country <- inner_join(sex_icse_country,ub_weighted_mean_sex_icse_country)
sex_icse_country <- inner_join(sex_icse_country,lb_weighted_median_sex_icse_country)
sex_icse_country <- inner_join(sex_icse_country,ub_weighted_median_sex_icse_country)

sex_isced_country <- inner_join(weighted_mean_sex_isced_country,weighted_median_sex_isced_country)
sex_isced_country <- inner_join(sex_isced_country,lb_weighted_mean_sex_isced_country)
sex_isced_country <- inner_join(sex_isced_country,ub_weighted_mean_sex_isced_country)
sex_isced_country <- inner_join(sex_isced_country,lb_weighted_median_sex_isced_country)
sex_isced_country <- inner_join(sex_isced_country,ub_weighted_median_sex_isced_country)  

sex_isco_country <- inner_join(weighted_mean_sex_isco_country,weighted_median_sex_isco_country)
sex_isco_country <- inner_join(sex_isco_country,lb_weighted_mean_sex_isco_country)
sex_isco_country <- inner_join(sex_isco_country,ub_weighted_mean_sex_isco_country)
sex_isco_country <- inner_join(sex_isco_country,lb_weighted_median_sex_isco_country)
sex_isco_country <- inner_join(sex_isco_country,ub_weighted_median_sex_isco_country)  

sex_isic_country <- inner_join(weighted_mean_sex_isic_country,weighted_median_sex_isic_country)
sex_isic_country <- inner_join(sex_isic_country,lb_weighted_mean_sex_isic_country)
sex_isic_country <- inner_join(sex_isic_country,ub_weighted_mean_sex_isic_country)
sex_isic_country <- inner_join(sex_isic_country,lb_weighted_median_sex_isic_country)
sex_isic_country <- inner_join(sex_isic_country,ub_weighted_median_sex_isic_country)

sex_work_day_country <- inner_join(weighted_mean_sex_work_day_country,weighted_median_sex_work_day_country)
sex_work_day_country <- inner_join(sex_work_day_country,lb_weighted_mean_sex_work_day_country)
sex_work_day_country <- inner_join(sex_work_day_country,ub_weighted_mean_sex_work_day_country)
sex_work_day_country <- inner_join(sex_work_day_country,lb_weighted_median_sex_work_day_country)
sex_work_day_country <- inner_join(sex_work_day_country,ub_weighted_median_sex_work_day_country)

sex_company_size_country <- inner_join(weighted_mean_sex_company_size_country,weighted_median_sex_company_size_country)
sex_company_size_country <- inner_join(sex_company_size_country,lb_weighted_mean_sex_company_size_country)
sex_company_size_country <- inner_join(sex_company_size_country,ub_weighted_mean_sex_company_size_country)
sex_company_size_country <- inner_join(sex_company_size_country,lb_weighted_median_sex_company_size_country)
sex_company_size_country <- inner_join(sex_company_size_country,ub_weighted_median_sex_company_size_country)

##############################
# prepare final files
##############################    

sex_country$ci_weighted_mean <- paste0("[",sex_country$lb_weighted_mean,", ",sex_country$ub_weighted_mean,"]")
sex_country$ci_weighted_median <- paste0("[",sex_country$lb_weighted_median,", ",sex_country$ub_weighted_median,"]")
sex_country$geography_level <- "country"
sex_country$geography_name <- "Pa\u00eds"
sex_country$geography_id <- "country"
sex_country <- move_col(sex_country, c("geography_level"=1))
sex_country <- move_col(sex_country, c("geography_name"=2))
sex_country <- move_col(sex_country, c("geography_id"=3))

sex_icse_country$ci_weighted_mean <- paste0("[",sex_icse_country$lb_weighted_mean,", ",sex_icse_country$ub_weighted_mean,"]")
sex_icse_country$ci_weighted_median <- paste0("[",sex_icse_country$lb_weighted_median,", ",sex_icse_country$ub_weighted_median,"]")
sex_icse_country$geography_level <- "country"
sex_icse_country$geography_name <- "Pa\u00eds"
sex_icse_country$geography_id <- "country"
sex_icse_country <- move_col(sex_icse_country, c("geography_level"=1))
sex_icse_country <- move_col(sex_icse_country, c("geography_name"=2))
sex_icse_country <- move_col(sex_icse_country, c("geography_id"=3))

sex_isced_country$ci_weighted_mean <- paste0("[",sex_isced_country$lb_weighted_mean,", ",sex_isced_country$ub_weighted_mean,"]")
sex_isced_country$ci_weighted_median <- paste0("[",sex_isced_country$lb_weighted_median,", ",sex_isced_country$ub_weighted_median,"]")
sex_isced_country$geography_level <- "country"
sex_isced_country$geography_name <- "Pa\u00eds"
sex_isced_country$geography_id <- "country"
sex_isced_country <- move_col(sex_isced_country, c("geography_level"=1))
sex_isced_country <- move_col(sex_isced_country, c("geography_name"=2))
sex_isced_country <- move_col(sex_isced_country, c("geography_id"=3))

sex_isco_country$ci_weighted_mean <- paste0("[",sex_isco_country$lb_weighted_mean,", ",sex_isco_country$ub_weighted_mean,"]")
sex_isco_country$ci_weighted_median <- paste0("[",sex_isco_country$lb_weighted_median,", ",sex_isco_country$ub_weighted_median,"]")
sex_isco_country$geography_level <- "country"
sex_isco_country$geography_name <- "Pa\u00eds"
sex_isco_country$geography_id <- "country"
sex_isco_country <- move_col(sex_isco_country, c("geography_level"=1))
sex_isco_country <- move_col(sex_isco_country, c("geography_name"=2))
sex_isco_country <- move_col(sex_isco_country, c("geography_id"=3))

sex_isic_country$ci_weighted_mean <- paste0("[",sex_isic_country$lb_weighted_mean,", ",sex_isic_country$ub_weighted_mean,"]")
sex_isic_country$ci_weighted_median <- paste0("[",sex_isic_country$lb_weighted_median,", ",sex_isic_country$ub_weighted_median,"]")
sex_isic_country$geography_level <- "country"
sex_isic_country$geography_name <- "Pa\u00eds"
sex_isic_country$geography_id <- "country"
sex_isic_country <- move_col(sex_isic_country, c("geography_level"=1))
sex_isic_country <- move_col(sex_isic_country, c("geography_name"=2))
sex_isic_country <- move_col(sex_isic_country, c("geography_id"=3))

sex_work_day_country$ci_weighted_mean <- paste0("[",sex_work_day_country$lb_weighted_mean,", ",sex_work_day_country$ub_weighted_mean,"]")
sex_work_day_country$ci_weighted_median <- paste0("[",sex_work_day_country$lb_weighted_median,", ",sex_work_day_country$ub_weighted_median,"]")
sex_work_day_country$geography_level <- "country"
sex_work_day_country$geography_name <- "Pa\u00eds"
sex_work_day_country$geography_id <- "country"
sex_work_day_country <- move_col(sex_work_day_country, c("geography_level"=1))
sex_work_day_country <- move_col(sex_work_day_country, c("geography_name"=2))
sex_work_day_country <- move_col(sex_work_day_country, c("geography_id"=3))

sex_company_size_country$ci_weighted_mean <- paste0("[",sex_company_size_country$lb_weighted_mean,", ",sex_company_size_country$ub_weighted_mean,"]")
sex_company_size_country$ci_weighted_median <- paste0("[",sex_company_size_country$lb_weighted_median,", ",sex_company_size_country$ub_weighted_median,"]")
sex_company_size_country$geography_level <- "country"
sex_company_size_country$geography_name <- "Pa\u00eds"
sex_company_size_country$geography_id <- "country"
sex_company_size_country <- move_col(sex_company_size_country, c("geography_level"=1))
sex_company_size_country <- move_col(sex_company_size_country, c("geography_name"=2))
sex_company_size_country <- move_col(sex_company_size_country, c("geography_id"=3))

drop <- c("lb_weighted_mean","ub_weighted_mean","lb_weighted_median","ub_weighted_median")
sex_country <- sex_country[,!(names(sex_country) %in% drop)]
sex_icse_country <- sex_icse_country[,!(names(sex_icse_country) %in% drop)]
sex_isced_country <- sex_isced_country[,!(names(sex_isced_country) %in% drop)]
sex_isco_country <- sex_isco_country[,!(names(sex_isco_country) %in% drop)]
sex_isic_country <- sex_isic_country[,!(names(sex_isic_country) %in% drop)]
sex_company_size_country <- sex_company_size_country[,!(names(sex_company_size_country) %in% drop)]

##########################
# save intermediate files
##########################

write.csv(weighted_mean_sex_country, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_country.csv")
write.csv(weighted_mean_sex_icse_country, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_icse_country.csv")
write.csv(weighted_mean_sex_isced_country, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_isced_country.csv")
write.csv(weighted_mean_sex_isco_country, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_isco_country.csv")
write.csv(weighted_mean_sex_isic_country, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_isic_country.csv")
write.csv(weighted_mean_sex_work_day_country, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_work_day_country.csv")
write.csv(weighted_mean_sex_company_size_country, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_company_size_country.csv")

write.csv(weighted_median_sex_country, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_country.csv")
write.csv(weighted_median_sex_icse_country, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_icse_country.csv")
write.csv(weighted_median_sex_isced_country, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_isced_country.csv")
write.csv(weighted_median_sex_isco_country, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_isco_country.csv")
write.csv(weighted_median_sex_isic_country, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_isic_country.csv")
write.csv(weighted_median_sex_work_day_country, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_work_day_country.csv")
write.csv(weighted_median_sex_company_size_country, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_company_size_country.csv")

write.csv(lb_weighted_median_sex_country, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_country.csv")
write.csv(lb_weighted_median_sex_icse_country, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_icse_country.csv")
write.csv(lb_weighted_median_sex_isced_country, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_isced_country.csv")
write.csv(lb_weighted_median_sex_isco_country, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_isco_country.csv")
write.csv(lb_weighted_median_sex_isic_country, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_isic_country.csv")
write.csv(lb_weighted_median_sex_work_day_country, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_work_day_country.csv")
write.csv(lb_weighted_median_sex_company_size_country, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_company_size_country.csv")

write.csv(ub_weighted_median_sex_country, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_country.csv")
write.csv(ub_weighted_median_sex_icse_country, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_icse_country.csv")
write.csv(ub_weighted_median_sex_isced_country, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_isced_country.csv")
write.csv(ub_weighted_median_sex_isco_country, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_isco_country.csv")
write.csv(ub_weighted_median_sex_isic_country, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_isic_country.csv")
write.csv(ub_weighted_median_sex_work_day_country, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_work_day_country.csv")
write.csv(ub_weighted_median_sex_company_size_country, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_company_size_country.csv")

write.csv(sex_country, file = "labour_situation/5_csv_intermediate_files/sex_country.csv")
write.csv(sex_icse_country, file = "labour_situation/5_csv_intermediate_files/sex_icse_country.csv")
write.csv(sex_isced_country, file = "labour_situation/5_csv_intermediate_files/sex_isced_country.csv")
write.csv(sex_isco_country, file = "labour_situation/5_csv_intermediate_files/sex_isco_country.csv")
write.csv(sex_isic_country, file = "labour_situation/5_csv_intermediate_files/sex_isic_country.csv")
write.csv(sex_work_day_country, file = "labour_situation/5_csv_intermediate_files/sex_work_day_country.csv")
write.csv(sex_company_size_country, file = "labour_situation/5_csv_intermediate_files/sex_company_size_country.csv")

save(sex_country, file = "labour_situation/7_rdata_intermediate_files/sex_country.RData")
save(sex_icse_country, file = "labour_situation/7_rdata_intermediate_files/sex_icse_country.RData")
save(sex_isced_country, file = "labour_situation/7_rdata_intermediate_files/sex_isced_country.RData")
save(sex_isco_country, file = "labour_situation/7_rdata_intermediate_files/sex_isco_country.RData")
save(sex_isic_country, file = "labour_situation/7_rdata_intermediate_files/sex_isic_country.RData")
save(sex_work_day_country, file = "labour_situation/7_rdata_intermediate_files/sex_work_day_country.RData")
save(sex_company_size_country, file = "labour_situation/7_rdata_intermediate_files/sex_company_size_country.RData")
