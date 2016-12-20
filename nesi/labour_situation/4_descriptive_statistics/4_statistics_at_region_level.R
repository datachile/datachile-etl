################
# weighted mean
################

weighted_mean_sex_region <- ddply(labour_description, .(sex,region_name,region_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_icse_region <- ddply(labour_description, .(sex,icse,region_name,region_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_isced_region <- ddply(labour_description, .(sex,isced,region_name,region_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_isco_region <- ddply(labour_description, .(sex,isco,region_name,region_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_isic_region <- ddply(labour_description, .(sex,isic,region_name,region_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_work_day_region <- ddply(labour_description, .(sex,work_day,region_name,region_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_company_size_region <- ddply(labour_description, .(sex,company_size,region_name,region_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))

setnames(weighted_mean_sex_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_mean"))
setnames(weighted_mean_sex_icse_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_mean"))
setnames(weighted_mean_sex_isced_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_mean"))
setnames(weighted_mean_sex_isco_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_mean"))
setnames(weighted_mean_sex_isic_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_mean"))
setnames(weighted_mean_sex_work_day_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_mean"))
setnames(weighted_mean_sex_company_size_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_mean"))

##################
# weighted median
##################

weighted_median_sex_region <- ddply(labour_description, .(sex,region_name,region_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_icse_region <- ddply(labour_description, .(sex,icse,region_name,region_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_isced_region <- ddply(labour_description, .(sex,isced,region_name,region_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_isco_region <- ddply(labour_description, .(sex,isco,region_name,region_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_isic_region <- ddply(labour_description, .(sex,isic,region_name,region_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_work_day_region <- ddply(labour_description, .(sex,work_day,region_name,region_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_company_size_region <- ddply(labour_description, .(sex,company_size,region_name,region_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))

setnames(weighted_median_sex_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_median"))
setnames(weighted_median_sex_icse_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_median"))
setnames(weighted_median_sex_isced_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_median"))
setnames(weighted_median_sex_isco_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_median"))
setnames(weighted_median_sex_isic_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_median"))
setnames(weighted_median_sex_work_day_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_median"))
setnames(weighted_median_sex_company_size_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","weighted_median"))

###################################
# confidence interval for the mean
###################################

lb_weighted_mean_sex_region <- ddply(labour_description, .(sex,region_name,region_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_icse_region <- ddply(labour_description, .(sex,icse,region_name,region_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_isced_region <- ddply(labour_description, .(sex,isced,region_name,region_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_isco_region <- ddply(labour_description, .(sex,isco,region_name,region_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_isic_region <- ddply(labour_description, .(sex,isic,region_name,region_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_work_day_region <- ddply(labour_description, .(sex,work_day,region_name,region_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_company_size_region <- ddply(labour_description, .(sex,company_size,region_name,region_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))

ub_weighted_mean_sex_region <- ddply(labour_description, .(sex,region_name,region_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_icse_region <- ddply(labour_description, .(sex,icse,region_name,region_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_isced_region <- ddply(labour_description, .(sex,isced,region_name,region_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_isco_region <- ddply(labour_description, .(sex,isco,region_name,region_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_isic_region <- ddply(labour_description, .(sex,isic,region_name,region_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_work_day_region <- ddply(labour_description, .(sex,work_day,region_name,region_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_company_size_region <- ddply(labour_description, .(sex,company_size,region_name,region_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))

setnames(lb_weighted_mean_sex_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))
setnames(lb_weighted_mean_sex_icse_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))
setnames(lb_weighted_mean_sex_isced_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))
setnames(lb_weighted_mean_sex_isco_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))
setnames(lb_weighted_mean_sex_isic_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))
setnames(lb_weighted_mean_sex_work_day_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))
setnames(lb_weighted_mean_sex_company_size_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_mean"))

setnames(ub_weighted_mean_sex_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))
setnames(ub_weighted_mean_sex_icse_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))
setnames(ub_weighted_mean_sex_isced_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))
setnames(ub_weighted_mean_sex_isco_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))
setnames(ub_weighted_mean_sex_isic_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))
setnames(ub_weighted_mean_sex_work_day_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))
setnames(ub_weighted_mean_sex_company_size_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_mean"))

####################################
# confidence interval for the median
####################################

lb_weighted_median_sex_region <- ddply(labour_description, .(sex,region_name,region_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_icse_region <- ddply(labour_description, .(sex,icse,region_name,region_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_isced_region <- ddply(labour_description, .(sex,isced,region_name,region_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_isco_region <- ddply(labour_description, .(sex,isco,region_name,region_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_isic_region <- ddply(labour_description, .(sex,isic,region_name,region_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_work_day_region <- ddply(labour_description, .(sex,work_day,region_name,region_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_company_size_region <- ddply(labour_description, .(sex,company_size,region_name,region_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))

ub_weighted_median_sex_region <- ddply(labour_description, .(sex,region_name,region_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_icse_region <- ddply(labour_description, .(sex,icse,region_name,region_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_isced_region <- ddply(labour_description, .(sex,isced,region_name,region_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_isco_region <- ddply(labour_description, .(sex,isco,region_name,region_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_isic_region <- ddply(labour_description, .(sex,isic,region_name,region_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_work_day_region <- ddply(labour_description, .(sex,work_day,region_name,region_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_company_size_region <- ddply(labour_description, .(sex,company_size,region_name,region_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))

setnames(lb_weighted_median_sex_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))
setnames(lb_weighted_median_sex_icse_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))
setnames(lb_weighted_median_sex_isced_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))
setnames(lb_weighted_median_sex_isco_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))
setnames(lb_weighted_median_sex_isic_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))
setnames(lb_weighted_median_sex_work_day_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))
setnames(lb_weighted_median_sex_company_size_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","lb_weighted_median"))

setnames(ub_weighted_median_sex_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))
setnames(ub_weighted_median_sex_icse_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))
setnames(ub_weighted_median_sex_isced_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))
setnames(ub_weighted_median_sex_isco_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))
setnames(ub_weighted_median_sex_isic_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))
setnames(ub_weighted_median_sex_work_day_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))
setnames(ub_weighted_median_sex_company_size_region, c("region_name","region_id","FUN"), c("geography_name","geography_id","ub_weighted_median"))

##########################
# join at region level
##########################

sex_region <- inner_join(weighted_mean_sex_region,weighted_median_sex_region)
sex_region <- inner_join(sex_region,lb_weighted_mean_sex_region)
sex_region <- inner_join(sex_region,ub_weighted_mean_sex_region)
sex_region <- inner_join(sex_region,lb_weighted_median_sex_region)
sex_region <- inner_join(sex_region,ub_weighted_median_sex_region)

sex_icse_region <- inner_join(weighted_mean_sex_icse_region,weighted_median_sex_icse_region)
sex_icse_region <- inner_join(sex_icse_region,lb_weighted_mean_sex_icse_region)
sex_icse_region <- inner_join(sex_icse_region,ub_weighted_mean_sex_icse_region)
sex_icse_region <- inner_join(sex_icse_region,lb_weighted_median_sex_icse_region)
sex_icse_region <- inner_join(sex_icse_region,ub_weighted_median_sex_icse_region)

sex_isced_region <- inner_join(weighted_mean_sex_isced_region,weighted_median_sex_isced_region)
sex_isced_region <- inner_join(sex_isced_region,lb_weighted_mean_sex_isced_region)
sex_isced_region <- inner_join(sex_isced_region,ub_weighted_mean_sex_isced_region)
sex_isced_region <- inner_join(sex_isced_region,lb_weighted_median_sex_isced_region)
sex_isced_region <- inner_join(sex_isced_region,ub_weighted_median_sex_isced_region)  

sex_isco_region <- inner_join(weighted_mean_sex_isco_region,weighted_median_sex_isco_region)
sex_isco_region <- inner_join(sex_isco_region,lb_weighted_mean_sex_isco_region)
sex_isco_region <- inner_join(sex_isco_region,ub_weighted_mean_sex_isco_region)
sex_isco_region <- inner_join(sex_isco_region,lb_weighted_median_sex_isco_region)
sex_isco_region <- inner_join(sex_isco_region,ub_weighted_median_sex_isco_region)  

sex_isic_region <- inner_join(weighted_mean_sex_isic_region,weighted_median_sex_isic_region)
sex_isic_region <- inner_join(sex_isic_region,lb_weighted_mean_sex_isic_region)
sex_isic_region <- inner_join(sex_isic_region,ub_weighted_mean_sex_isic_region)
sex_isic_region <- inner_join(sex_isic_region,lb_weighted_median_sex_isic_region)
sex_isic_region <- inner_join(sex_isic_region,ub_weighted_median_sex_isic_region)

sex_work_day_region <- inner_join(weighted_mean_sex_work_day_region,weighted_median_sex_work_day_region)
sex_work_day_region <- inner_join(sex_work_day_region,lb_weighted_mean_sex_work_day_region)
sex_work_day_region <- inner_join(sex_work_day_region,ub_weighted_mean_sex_work_day_region)
sex_work_day_region <- inner_join(sex_work_day_region,lb_weighted_median_sex_work_day_region)
sex_work_day_region <- inner_join(sex_work_day_region,ub_weighted_median_sex_work_day_region)

sex_company_size_region <- inner_join(weighted_mean_sex_company_size_region,weighted_median_sex_company_size_region)
sex_company_size_region <- inner_join(sex_company_size_region,lb_weighted_mean_sex_company_size_region)
sex_company_size_region <- inner_join(sex_company_size_region,ub_weighted_mean_sex_company_size_region)
sex_company_size_region <- inner_join(sex_company_size_region,lb_weighted_median_sex_company_size_region)
sex_company_size_region <- inner_join(sex_company_size_region,ub_weighted_median_sex_company_size_region)

##############################
# prepare final files
##############################    

sex_region$ci_weighted_mean <- paste0("[",sex_region$lb_weighted_mean,", ",sex_region$ub_weighted_mean,"]")
sex_region$ci_weighted_median <- paste0("[",sex_region$lb_weighted_median,", ",sex_region$ub_weighted_median,"]")
sex_region$geography_level <- "region"
sex_region <- move_col(sex_region, c("geography_level"=1))
sex_region <- move_col(sex_region, c("geography_name"=2))
sex_region <- move_col(sex_region, c("geography_id"=3))

sex_icse_region$ci_weighted_mean <- paste0("[",sex_icse_region$lb_weighted_mean,", ",sex_icse_region$ub_weighted_mean,"]")
sex_icse_region$ci_weighted_median <- paste0("[",sex_icse_region$lb_weighted_median,", ",sex_icse_region$ub_weighted_median,"]")
sex_icse_region <- move_col(sex_icse_region, c("geography_level"=1))
sex_icse_region <- move_col(sex_icse_region, c("geography_name"=2))
sex_icse_region <- move_col(sex_icse_region, c("geography_id"=3))

sex_isced_region$ci_weighted_mean <- paste0("[",sex_isced_region$lb_weighted_mean,", ",sex_isced_region$ub_weighted_mean,"]")
sex_isced_region$ci_weighted_median <- paste0("[",sex_isced_region$lb_weighted_median,", ",sex_isced_region$ub_weighted_median,"]")
sex_isced_region <- move_col(sex_isced_region, c("geography_level"=1))
sex_isced_region <- move_col(sex_isced_region, c("geography_name"=2))
sex_isced_region <- move_col(sex_isced_region, c("geography_id"=3))

sex_isco_region$ci_weighted_mean <- paste0("[",sex_isco_region$lb_weighted_mean,", ",sex_isco_region$ub_weighted_mean,"]")
sex_isco_region$ci_weighted_median <- paste0("[",sex_isco_region$lb_weighted_median,", ",sex_isco_region$ub_weighted_median,"]")
sex_isco_region <- move_col(sex_isco_region, c("geography_level"=1))
sex_isco_region <- move_col(sex_isco_region, c("geography_name"=2))
sex_isco_region <- move_col(sex_isco_region, c("geography_id"=3))

sex_isic_region$ci_weighted_mean <- paste0("[",sex_isic_region$lb_weighted_mean,", ",sex_isic_region$ub_weighted_mean,"]")
sex_isic_region$ci_weighted_median <- paste0("[",sex_isic_region$lb_weighted_median,", ",sex_isic_region$ub_weighted_median,"]")
sex_isic_region <- move_col(sex_isic_region, c("geography_level"=1))
sex_isic_region <- move_col(sex_isic_region, c("geography_name"=2))
sex_isic_region <- move_col(sex_isic_region, c("geography_id"=3))

sex_work_day_region$ci_weighted_mean <- paste0("[",sex_work_day_region$lb_weighted_mean,", ",sex_work_day_region$ub_weighted_mean,"]")
sex_work_day_region$ci_weighted_median <- paste0("[",sex_work_day_region$lb_weighted_median,", ",sex_work_day_region$ub_weighted_median,"]")
sex_work_day_region <- move_col(sex_work_day_region, c("geography_level"=1))
sex_work_day_region <- move_col(sex_work_day_region, c("geography_name"=2))
sex_work_day_region <- move_col(sex_work_day_region, c("geography_id"=3))

sex_company_size_region$ci_weighted_mean <- paste0("[",sex_company_size_region$lb_weighted_mean,", ",sex_company_size_region$ub_weighted_mean,"]")
sex_company_size_region$ci_weighted_median <- paste0("[",sex_company_size_region$lb_weighted_median,", ",sex_company_size_region$ub_weighted_median,"]")
sex_company_size_region <- move_col(sex_company_size_region, c("geography_level"=1))
sex_company_size_region <- move_col(sex_company_size_region, c("geography_name"=2))
sex_company_size_region <- move_col(sex_company_size_region, c("geography_id"=3))

drop <- c("lb_weighted_mean","ub_weighted_mean","lb_weighted_median","ub_weighted_median")
sex_region <- sex_region[,!(names(sex_region) %in% drop)]
sex_icse_region <- sex_icse_region[,!(names(sex_icse_region) %in% drop)]
sex_isced_region <- sex_isced_region[,!(names(sex_isced_region) %in% drop)]
sex_isco_region <- sex_isco_region[,!(names(sex_isco_region) %in% drop)]
sex_isic_region <- sex_isic_region[,!(names(sex_isic_region) %in% drop)]
sex_company_size_region <- sex_company_size_region[,!(names(sex_company_size_region) %in% drop)]

##########################
# save intermediate files
##########################

write.csv(weighted_mean_sex_region, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_region.csv")
write.csv(weighted_mean_sex_icse_region, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_icse_region.csv")
write.csv(weighted_mean_sex_isced_region, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_isced_region.csv")
write.csv(weighted_mean_sex_isco_region, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_isco_region.csv")
write.csv(weighted_mean_sex_isic_region, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_isic_region.csv")
write.csv(weighted_mean_sex_work_day_region, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_work_day_region.csv")
write.csv(weighted_mean_sex_company_size_region, file = "labour_situation/5_csv_intermediate_files/weighted_mean_sex_company_size_region.csv")

write.csv(weighted_median_sex_region, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_region.csv")
write.csv(weighted_median_sex_icse_region, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_icse_region.csv")
write.csv(weighted_median_sex_isced_region, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_isced_region.csv")
write.csv(weighted_median_sex_isco_region, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_isco_region.csv")
write.csv(weighted_median_sex_isic_region, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_isic_region.csv")
write.csv(weighted_median_sex_work_day_region, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_work_day_region.csv")
write.csv(weighted_median_sex_company_size_region, file = "labour_situation/5_csv_intermediate_files/weighted_median_sex_company_size_region.csv")

write.csv(lb_weighted_median_sex_region, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_region.csv")
write.csv(lb_weighted_median_sex_icse_region, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_icse_region.csv")
write.csv(lb_weighted_median_sex_isced_region, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_isced_region.csv")
write.csv(lb_weighted_median_sex_isco_region, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_isco_region.csv")
write.csv(lb_weighted_median_sex_isic_region, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_isic_region.csv")
write.csv(lb_weighted_median_sex_work_day_region, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_work_day_region.csv")
write.csv(lb_weighted_median_sex_company_size_region, file = "labour_situation/5_csv_intermediate_files/lb_weighted_median_sex_company_size_region.csv")

write.csv(ub_weighted_median_sex_region, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_region.csv")
write.csv(ub_weighted_median_sex_icse_region, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_icse_region.csv")
write.csv(ub_weighted_median_sex_isced_region, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_isced_region.csv")
write.csv(ub_weighted_median_sex_isco_region, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_isco_region.csv")
write.csv(ub_weighted_median_sex_isic_region, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_isic_region.csv")
write.csv(ub_weighted_median_sex_work_day_region, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_work_day_region.csv")
write.csv(ub_weighted_median_sex_company_size_region, file = "labour_situation/5_csv_intermediate_files/ub_weighted_median_sex_company_size_region.csv")

write.csv(sex_region, file = "labour_situation/5_csv_intermediate_files/sex_region.csv")
write.csv(sex_icse_region, file = "labour_situation/5_csv_intermediate_files/sex_icse_region.csv")
write.csv(sex_isced_region, file = "labour_situation/5_csv_intermediate_files/sex_isced_region.csv")
write.csv(sex_isco_region, file = "labour_situation/5_csv_intermediate_files/sex_isco_region.csv")
write.csv(sex_isic_region, file = "labour_situation/5_csv_intermediate_files/sex_isic_region.csv")
write.csv(sex_work_day_region, file = "labour_situation/5_csv_intermediate_files/sex_work_day_region.csv")
write.csv(sex_company_size_region, file = "labour_situation/5_csv_intermediate_files/sex_company_size_region.csv")

save(sex_region, file = "labour_situation/7_rdata_intermediate_files/sex_region.RData")
save(sex_icse_region, file = "labour_situation/7_rdata_intermediate_files/sex_icse_region.RData")
save(sex_isced_region, file = "labour_situation/7_rdata_intermediate_files/sex_isced_region.RData")
save(sex_isco_region, file = "labour_situation/7_rdata_intermediate_files/sex_isco_region.RData")
save(sex_isic_region, file = "labour_situation/7_rdata_intermediate_files/sex_isic_region.RData")
save(sex_work_day_region, file = "labour_situation/7_rdata_intermediate_files/sex_work_day_region.RData")
save(sex_company_size_region, file = "labour_situation/7_rdata_intermediate_files/sex_company_size_region.RData")
