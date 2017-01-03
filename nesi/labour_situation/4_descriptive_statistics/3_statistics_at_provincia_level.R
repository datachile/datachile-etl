################
# weighted mean
################

weighted_mean_sex_provincia <- ddply(labour_description, .(sex,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_icse_provincia <- ddply(labour_description, .(sex,icse,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_isced_provincia <- ddply(labour_description, .(sex,isced,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_isco_provincia <- ddply(labour_description, .(sex,isco,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_isic_provincia <- ddply(labour_description, .(sex,isic,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_work_day_provincia <- ddply(labour_description, .(sex,work_day,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_company_size_provincia <- ddply(labour_description, .(sex,company_size,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))

setnames(weighted_mean_sex_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_mean"))
setnames(weighted_mean_sex_icse_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_mean"))
setnames(weighted_mean_sex_isced_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_mean"))
setnames(weighted_mean_sex_isco_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_mean"))
setnames(weighted_mean_sex_isic_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_mean"))
setnames(weighted_mean_sex_work_day_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_mean"))
setnames(weighted_mean_sex_company_size_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_mean"))

##################
# weighted median
##################

weighted_median_sex_provincia <- ddply(labour_description, .(sex,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_icse_provincia <- ddply(labour_description, .(sex,icse,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_isced_provincia <- ddply(labour_description, .(sex,isced,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_isco_provincia <- ddply(labour_description, .(sex,isco,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_isic_provincia <- ddply(labour_description, .(sex,isic,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_work_day_provincia <- ddply(labour_description, .(sex,work_day,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_company_size_provincia <- ddply(labour_description, .(sex,company_size,provincia_name,provincia_pacha_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))

setnames(weighted_median_sex_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_median"))
setnames(weighted_median_sex_icse_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_median"))
setnames(weighted_median_sex_isced_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_median"))
setnames(weighted_median_sex_isco_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_median"))
setnames(weighted_median_sex_isic_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_median"))
setnames(weighted_median_sex_work_day_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_median"))
setnames(weighted_median_sex_company_size_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","weighted_median"))

###################################
# confidence interval for the mean
###################################

lb_weighted_mean_sex_provincia <- ddply(labour_description, .(sex,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_icse_provincia <- ddply(labour_description, .(sex,icse,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_isced_provincia <- ddply(labour_description, .(sex,isced,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_isco_provincia <- ddply(labour_description, .(sex,isco,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_isic_provincia <- ddply(labour_description, .(sex,isic,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_work_day_provincia <- ddply(labour_description, .(sex,work_day,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_company_size_provincia <- ddply(labour_description, .(sex,company_size,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))

ub_weighted_mean_sex_provincia <- ddply(labour_description, .(sex,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_icse_provincia <- ddply(labour_description, .(sex,icse,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_isced_provincia <- ddply(labour_description, .(sex,isced,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_isco_provincia <- ddply(labour_description, .(sex,isco,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_isic_provincia <- ddply(labour_description, .(sex,isic,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_work_day_provincia <- ddply(labour_description, .(sex,work_day,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_company_size_provincia <- ddply(labour_description, .(sex,company_size,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))

setnames(lb_weighted_mean_sex_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))
setnames(lb_weighted_mean_sex_icse_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))
setnames(lb_weighted_mean_sex_isced_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))
setnames(lb_weighted_mean_sex_isco_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))
setnames(lb_weighted_mean_sex_isic_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))
setnames(lb_weighted_mean_sex_work_day_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))
setnames(lb_weighted_mean_sex_company_size_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))

setnames(ub_weighted_mean_sex_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))
setnames(ub_weighted_mean_sex_icse_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))
setnames(ub_weighted_mean_sex_isced_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))
setnames(ub_weighted_mean_sex_isco_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))
setnames(ub_weighted_mean_sex_isic_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))
setnames(ub_weighted_mean_sex_work_day_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))
setnames(ub_weighted_mean_sex_company_size_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))

####################################
# confidence interval for the median
####################################

lb_weighted_median_sex_provincia <- ddply(labour_description, .(sex,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_icse_provincia <- ddply(labour_description, .(sex,icse,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_isced_provincia <- ddply(labour_description, .(sex,isced,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_isco_provincia <- ddply(labour_description, .(sex,isco,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_isic_provincia <- ddply(labour_description, .(sex,isic,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_work_day_provincia <- ddply(labour_description, .(sex,work_day,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_company_size_provincia <- ddply(labour_description, .(sex,company_size,provincia_name,provincia_pacha_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))

ub_weighted_median_sex_provincia <- ddply(labour_description, .(sex,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_icse_provincia <- ddply(labour_description, .(sex,icse,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_isced_provincia <- ddply(labour_description, .(sex,isced,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_isco_provincia <- ddply(labour_description, .(sex,isco,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_isic_provincia <- ddply(labour_description, .(sex,isic,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_work_day_provincia <- ddply(labour_description, .(sex,work_day,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_company_size_provincia <- ddply(labour_description, .(sex,company_size,provincia_name,provincia_pacha_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))

setnames(lb_weighted_median_sex_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))
setnames(lb_weighted_median_sex_icse_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))
setnames(lb_weighted_median_sex_isced_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))
setnames(lb_weighted_median_sex_isco_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))
setnames(lb_weighted_median_sex_isic_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))
setnames(lb_weighted_median_sex_work_day_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))
setnames(lb_weighted_median_sex_company_size_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))

setnames(ub_weighted_median_sex_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))
setnames(ub_weighted_median_sex_icse_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))
setnames(ub_weighted_median_sex_isced_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))
setnames(ub_weighted_median_sex_isco_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))
setnames(ub_weighted_median_sex_isic_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))
setnames(ub_weighted_median_sex_work_day_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))
setnames(ub_weighted_median_sex_company_size_provincia, c("provincia_name","provincia_pacha_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))

##########################
# join at provincia level
##########################

sex_provincia <- inner_join(weighted_mean_sex_provincia,weighted_median_sex_provincia)
sex_provincia <- inner_join(sex_provincia,lb_weighted_mean_sex_provincia)
sex_provincia <- inner_join(sex_provincia,ub_weighted_mean_sex_provincia)
sex_provincia <- inner_join(sex_provincia,lb_weighted_median_sex_provincia)
sex_provincia <- inner_join(sex_provincia,ub_weighted_median_sex_provincia)

sex_icse_provincia <- inner_join(weighted_mean_sex_icse_provincia,weighted_median_sex_icse_provincia)
sex_icse_provincia <- inner_join(sex_icse_provincia,lb_weighted_mean_sex_icse_provincia)
sex_icse_provincia <- inner_join(sex_icse_provincia,ub_weighted_mean_sex_icse_provincia)
sex_icse_provincia <- inner_join(sex_icse_provincia,lb_weighted_median_sex_icse_provincia)
sex_icse_provincia <- inner_join(sex_icse_provincia,ub_weighted_median_sex_icse_provincia)

sex_isced_provincia <- inner_join(weighted_mean_sex_isced_provincia,weighted_median_sex_isced_provincia)
sex_isced_provincia <- inner_join(sex_isced_provincia,lb_weighted_mean_sex_isced_provincia)
sex_isced_provincia <- inner_join(sex_isced_provincia,ub_weighted_mean_sex_isced_provincia)
sex_isced_provincia <- inner_join(sex_isced_provincia,lb_weighted_median_sex_isced_provincia)
sex_isced_provincia <- inner_join(sex_isced_provincia,ub_weighted_median_sex_isced_provincia)  

sex_isco_provincia <- inner_join(weighted_mean_sex_isco_provincia,weighted_median_sex_isco_provincia)
sex_isco_provincia <- inner_join(sex_isco_provincia,lb_weighted_mean_sex_isco_provincia)
sex_isco_provincia <- inner_join(sex_isco_provincia,ub_weighted_mean_sex_isco_provincia)
sex_isco_provincia <- inner_join(sex_isco_provincia,lb_weighted_median_sex_isco_provincia)
sex_isco_provincia <- inner_join(sex_isco_provincia,ub_weighted_median_sex_isco_provincia)  

sex_isic_provincia <- inner_join(weighted_mean_sex_isic_provincia,weighted_median_sex_isic_provincia)
sex_isic_provincia <- inner_join(sex_isic_provincia,lb_weighted_mean_sex_isic_provincia)
sex_isic_provincia <- inner_join(sex_isic_provincia,ub_weighted_mean_sex_isic_provincia)
sex_isic_provincia <- inner_join(sex_isic_provincia,lb_weighted_median_sex_isic_provincia)
sex_isic_provincia <- inner_join(sex_isic_provincia,ub_weighted_median_sex_isic_provincia)

sex_work_day_provincia <- inner_join(weighted_mean_sex_work_day_provincia,weighted_median_sex_work_day_provincia)
sex_work_day_provincia <- inner_join(sex_work_day_provincia,lb_weighted_mean_sex_work_day_provincia)
sex_work_day_provincia <- inner_join(sex_work_day_provincia,ub_weighted_mean_sex_work_day_provincia)
sex_work_day_provincia <- inner_join(sex_work_day_provincia,lb_weighted_median_sex_work_day_provincia)
sex_work_day_provincia <- inner_join(sex_work_day_provincia,ub_weighted_median_sex_work_day_provincia)

sex_company_size_provincia <- inner_join(weighted_mean_sex_company_size_provincia,weighted_median_sex_company_size_provincia)
sex_company_size_provincia <- inner_join(sex_company_size_provincia,lb_weighted_mean_sex_company_size_provincia)
sex_company_size_provincia <- inner_join(sex_company_size_provincia,ub_weighted_mean_sex_company_size_provincia)
sex_company_size_provincia <- inner_join(sex_company_size_provincia,lb_weighted_median_sex_company_size_provincia)
sex_company_size_provincia <- inner_join(sex_company_size_provincia,ub_weighted_median_sex_company_size_provincia)

##############################
# prepare final files
##############################    

sex_provincia$ci_weighted_mean <- paste0("[",sex_provincia$lb_weighted_mean,", ",sex_provincia$ub_weighted_mean,"]")
sex_provincia$ci_weighted_median <- paste0("[",sex_provincia$lb_weighted_median,", ",sex_provincia$ub_weighted_median,"]")
sex_provincia$geography_level <- "provincia"
sex_provincia <- move_col(sex_provincia, c("geography_level"=1))
sex_provincia <- move_col(sex_provincia, c("geography_name"=2))
sex_provincia <- move_col(sex_provincia, c("geography_id"=3))

sex_icse_provincia$ci_weighted_mean <- paste0("[",sex_icse_provincia$lb_weighted_mean,", ",sex_icse_provincia$ub_weighted_mean,"]")
sex_icse_provincia$ci_weighted_median <- paste0("[",sex_icse_provincia$lb_weighted_median,", ",sex_icse_provincia$ub_weighted_median,"]")
sex_icse_provincia$geography_level <- "provincia"
sex_icse_provincia <- move_col(sex_icse_provincia, c("geography_level"=1))
sex_icse_provincia <- move_col(sex_icse_provincia, c("geography_name"=2))
sex_icse_provincia <- move_col(sex_icse_provincia, c("geography_id"=3))

sex_isced_provincia$ci_weighted_mean <- paste0("[",sex_isced_provincia$lb_weighted_mean,", ",sex_isced_provincia$ub_weighted_mean,"]")
sex_isced_provincia$ci_weighted_median <- paste0("[",sex_isced_provincia$lb_weighted_median,", ",sex_isced_provincia$ub_weighted_median,"]")
sex_isced_provincia$geography_level <- "provincia"
sex_isced_provincia <- move_col(sex_isced_provincia, c("geography_level"=1))
sex_isced_provincia <- move_col(sex_isced_provincia, c("geography_name"=2))
sex_isced_provincia <- move_col(sex_isced_provincia, c("geography_id"=3))

sex_isco_provincia$ci_weighted_mean <- paste0("[",sex_isco_provincia$lb_weighted_mean,", ",sex_isco_provincia$ub_weighted_mean,"]")
sex_isco_provincia$ci_weighted_median <- paste0("[",sex_isco_provincia$lb_weighted_median,", ",sex_isco_provincia$ub_weighted_median,"]")
sex_isco_provincia$geography_level <- "provincia"
sex_isco_provincia <- move_col(sex_isco_provincia, c("geography_level"=1))
sex_isco_provincia <- move_col(sex_isco_provincia, c("geography_name"=2))
sex_isco_provincia <- move_col(sex_isco_provincia, c("geography_id"=3))

sex_isic_provincia$ci_weighted_mean <- paste0("[",sex_isic_provincia$lb_weighted_mean,", ",sex_isic_provincia$ub_weighted_mean,"]")
sex_isic_provincia$ci_weighted_median <- paste0("[",sex_isic_provincia$lb_weighted_median,", ",sex_isic_provincia$ub_weighted_median,"]")
sex_isic_provincia$geography_level <- "provincia"
sex_isic_provincia <- move_col(sex_isic_provincia, c("geography_level"=1))
sex_isic_provincia <- move_col(sex_isic_provincia, c("geography_name"=2))
sex_isic_provincia <- move_col(sex_isic_provincia, c("geography_id"=3))

sex_work_day_provincia$ci_weighted_mean <- paste0("[",sex_work_day_provincia$lb_weighted_mean,", ",sex_work_day_provincia$ub_weighted_mean,"]")
sex_work_day_provincia$ci_weighted_median <- paste0("[",sex_work_day_provincia$lb_weighted_median,", ",sex_work_day_provincia$ub_weighted_median,"]")
sex_work_day_provincia$geography_level <- "provincia"
sex_work_day_provincia <- move_col(sex_work_day_provincia, c("geography_level"=1))
sex_work_day_provincia <- move_col(sex_work_day_provincia, c("geography_name"=2))
sex_work_day_provincia <- move_col(sex_work_day_provincia, c("geography_id"=3))

sex_company_size_provincia$ci_weighted_mean <- paste0("[",sex_company_size_provincia$lb_weighted_mean,", ",sex_company_size_provincia$ub_weighted_mean,"]")
sex_company_size_provincia$ci_weighted_median <- paste0("[",sex_company_size_provincia$lb_weighted_median,", ",sex_company_size_provincia$ub_weighted_median,"]")
sex_company_size_provincia$geography_level <- "provincia"
sex_company_size_provincia <- move_col(sex_company_size_provincia, c("geography_level"=1))
sex_company_size_provincia <- move_col(sex_company_size_provincia, c("geography_name"=2))
sex_company_size_provincia <- move_col(sex_company_size_provincia, c("geography_id"=3))

drop <- c("lb_weighted_mean","ub_weighted_mean","lb_weighted_median","ub_weighted_median")
sex_provincia <- sex_provincia[,!(names(sex_provincia) %in% drop)]
sex_icse_provincia <- sex_icse_provincia[,!(names(sex_icse_provincia) %in% drop)]
sex_isced_provincia <- sex_isced_provincia[,!(names(sex_isced_provincia) %in% drop)]
sex_isco_provincia <- sex_isco_provincia[,!(names(sex_isco_provincia) %in% drop)]
sex_isic_provincia <- sex_isic_provincia[,!(names(sex_isic_provincia) %in% drop)]
sex_company_size_provincia <- sex_company_size_provincia[,!(names(sex_company_size_provincia) %in% drop)]

##########################
# save intermediate files
##########################

write.csv(weighted_mean_sex_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_provincia.csv")
write.csv(weighted_mean_sex_icse_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_icse_provincia.csv")
write.csv(weighted_mean_sex_isced_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_isced_provincia.csv")
write.csv(weighted_mean_sex_isco_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_isco_provincia.csv")
write.csv(weighted_mean_sex_isic_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_isic_provincia.csv")
write.csv(weighted_mean_sex_work_day_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_work_day_provincia.csv")
write.csv(weighted_mean_sex_company_size_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_company_size_provincia.csv")

write.csv(weighted_median_sex_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_provincia.csv")
write.csv(weighted_median_sex_icse_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_icse_provincia.csv")
write.csv(weighted_median_sex_isced_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_isced_provincia.csv")
write.csv(weighted_median_sex_isco_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_isco_provincia.csv")
write.csv(weighted_median_sex_isic_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_isic_provincia.csv")
write.csv(weighted_median_sex_work_day_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_work_day_provincia.csv")
write.csv(weighted_median_sex_company_size_provincia, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_company_size_provincia.csv")

write.csv(lb_weighted_median_sex_provincia, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_provincia.csv")
write.csv(lb_weighted_median_sex_icse_provincia, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_icse_provincia.csv")
write.csv(lb_weighted_median_sex_isced_provincia, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_isced_provincia.csv")
write.csv(lb_weighted_median_sex_isco_provincia, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_isco_provincia.csv")
write.csv(lb_weighted_median_sex_isic_provincia, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_isic_provincia.csv")
write.csv(lb_weighted_median_sex_work_day_provincia, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_work_day_provincia.csv")
write.csv(lb_weighted_median_sex_company_size_provincia, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_company_size_provincia.csv")

write.csv(ub_weighted_median_sex_provincia, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_provincia.csv")
write.csv(ub_weighted_median_sex_icse_provincia, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_icse_provincia.csv")
write.csv(ub_weighted_median_sex_isced_provincia, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_isced_provincia.csv")
write.csv(ub_weighted_median_sex_isco_provincia, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_isco_provincia.csv")
write.csv(ub_weighted_median_sex_isic_provincia, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_isic_provincia.csv")
write.csv(ub_weighted_median_sex_work_day_provincia, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_work_day_provincia.csv")
write.csv(ub_weighted_median_sex_company_size_provincia, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_company_size_provincia.csv")

write.csv(sex_provincia, file = "labour_situation/5_csv_intermediate_files/sex_provincia.csv")
write.csv(sex_icse_provincia, file = "labour_situation/5_csv_intermediate_files/sex_icse_provincia.csv")
write.csv(sex_isced_provincia, file = "labour_situation/5_csv_intermediate_files/sex_isced_provincia.csv")
write.csv(sex_isco_provincia, file = "labour_situation/5_csv_intermediate_files/sex_isco_provincia.csv")
write.csv(sex_isic_provincia, file = "labour_situation/5_csv_intermediate_files/sex_isic_provincia.csv")
write.csv(sex_work_day_provincia, file = "labour_situation/5_csv_intermediate_files/sex_work_day_provincia.csv")
write.csv(sex_company_size_provincia, file = "labour_situation/5_csv_intermediate_files/sex_company_size_provincia.csv")

save(sex_provincia, file = "labour_situation/7_rdata_intermediate_files/sex_provincia.RData")
save(sex_icse_provincia, file = "labour_situation/7_rdata_intermediate_files/sex_icse_provincia.RData")
save(sex_isced_provincia, file = "labour_situation/7_rdata_intermediate_files/sex_isced_provincia.RData")
save(sex_isco_provincia, file = "labour_situation/7_rdata_intermediate_files/sex_isco_provincia.RData")
save(sex_isic_provincia, file = "labour_situation/7_rdata_intermediate_files/sex_isic_provincia.RData")
save(sex_work_day_provincia, file = "labour_situation/7_rdata_intermediate_files/sex_work_day_provincia.RData")
save(sex_company_size_provincia, file = "labour_situation/7_rdata_intermediate_files/sex_company_size_provincia.RData")
