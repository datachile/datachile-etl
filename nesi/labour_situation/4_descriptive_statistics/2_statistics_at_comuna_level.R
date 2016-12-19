################
# weighted mean
################

weighted_mean_sex_comuna <- ddply(labour_description, .(sex,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_icse_comuna <- ddply(labour_description, .(sex,icse,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_isced_comuna <- ddply(labour_description, .(sex,isced,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_isco_comuna <- ddply(labour_description, .(sex,isco,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_isic_comuna <- ddply(labour_description, .(sex,isic,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_work_day_comuna <- ddply(labour_description, .(sex,work_day,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))
weighted_mean_sex_company_size_comuna <- ddply(labour_description, .(sex,company_size,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMean(wage, w = weight, na.rm = TRUE))

setnames(weighted_mean_sex_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(weighted_mean_sex_icse_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(weighted_mean_sex_isced_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(weighted_mean_sex_isco_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(weighted_mean_sex_isic_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(weighted_mean_sex_work_day_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(weighted_mean_sex_company_size_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))

setnames(weighted_mean_sex_comuna, c("FUN"), c("weighted_mean"))
setnames(weighted_mean_sex_icse_comuna, c("FUN"), c("weighted_mean"))
setnames(weighted_mean_sex_isced_comuna, c("FUN"), c("weighted_mean"))
setnames(weighted_mean_sex_isco_comuna, c("FUN"), c("weighted_mean"))
setnames(weighted_mean_sex_isic_comuna, c("FUN"), c("weighted_mean"))
setnames(weighted_mean_sex_work_day_comuna, c("FUN"), c("weighted_mean"))
setnames(weighted_mean_sex_company_size_comuna, c("FUN"), c("weighted_mean"))

##################
# weighted median
##################

weighted_median_sex_comuna <- ddply(labour_description, .(sex,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_icse_comuna <- ddply(labour_description, .(sex,icse,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_isced_comuna <- ddply(labour_description, .(sex,isced,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_isco_comuna <- ddply(labour_description, .(sex,isco,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_isic_comuna <- ddply(labour_description, .(sex,isic,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_work_day_comuna <- ddply(labour_description, .(sex,work_day,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))
weighted_median_sex_company_size_comuna <- ddply(labour_description, .(sex,company_size,comuna_name,comuna_datachile_id,year), summarise, FUN = matrixStats::weightedMedian(wage, w = weight, na.rm = TRUE))

setnames(weighted_median_sex_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(weighted_median_sex_icse_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(weighted_median_sex_isced_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(weighted_median_sex_isco_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(weighted_median_sex_isic_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(weighted_median_sex_work_day_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(weighted_median_sex_company_size_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))

setnames(weighted_median_sex_comuna, c("FUN"), c("weighted_median"))
setnames(weighted_median_sex_icse_comuna, c("FUN"), c("weighted_median"))
setnames(weighted_median_sex_isced_comuna, c("FUN"), c("weighted_median"))
setnames(weighted_median_sex_isco_comuna, c("FUN"), c("weighted_median"))
setnames(weighted_median_sex_isic_comuna, c("FUN"), c("weighted_median"))
setnames(weighted_median_sex_work_day_comuna, c("FUN"), c("weighted_median"))
setnames(weighted_median_sex_company_size_comuna, c("FUN"), c("weighted_median"))

###################################
# confidence interval for the mean
###################################

lb_weighted_mean_sex_comuna <- ddply(labour_description, .(sex,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_icse_comuna <- ddply(labour_description, .(sex,icse,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_isced_comuna <- ddply(labour_description, .(sex,isced,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_isco_comuna <- ddply(labour_description, .(sex,isco,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_isic_comuna <- ddply(labour_description, .(sex,isic,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_work_day_comuna <- ddply(labour_description, .(sex,work_day,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))
lb_weighted_mean_sex_company_size_comuna <- ddply(labour_description, .(sex,company_size,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_mean_plyr(wage, weight))

ub_weighted_mean_sex_comuna <- ddply(labour_description, .(sex,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_icse_comuna <- ddply(labour_description, .(sex,icse,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_isced_comuna <- ddply(labour_description, .(sex,isced,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_isco_comuna <- ddply(labour_description, .(sex,isco,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_isic_comuna <- ddply(labour_description, .(sex,isic,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_work_day_comuna <- ddply(labour_description, .(sex,work_day,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))
ub_weighted_mean_sex_company_size_comuna <- ddply(labour_description, .(sex,company_size,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_mean_plyr(wage, weight))

setnames(lb_weighted_mean_sex_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(lb_weighted_mean_sex_icse_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(lb_weighted_mean_sex_isced_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(lb_weighted_mean_sex_isco_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(lb_weighted_mean_sex_isic_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(lb_weighted_mean_sex_work_day_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(lb_weighted_mean_sex_company_size_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))

setnames(ub_weighted_mean_sex_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(ub_weighted_mean_sex_icse_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(ub_weighted_mean_sex_isced_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(ub_weighted_mean_sex_isco_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(ub_weighted_mean_sex_isic_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(ub_weighted_mean_sex_work_day_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(ub_weighted_mean_sex_company_size_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))

setnames(lb_weighted_mean_sex_comuna, c("FUN"), c("lb_weighted_mean"))
setnames(lb_weighted_mean_sex_icse_comuna, c("FUN"), c("lb_weighted_mean"))
setnames(lb_weighted_mean_sex_isced_comuna, c("FUN"), c("lb_weighted_mean"))
setnames(lb_weighted_mean_sex_isco_comuna, c("FUN"), c("lb_weighted_mean"))
setnames(lb_weighted_mean_sex_isic_comuna, c("FUN"), c("lb_weighted_mean"))
setnames(lb_weighted_mean_sex_work_day_comuna, c("FUN"), c("lb_weighted_mean"))
setnames(lb_weighted_mean_sex_company_size_comuna, c("FUN"), c("lb_weighted_mean"))

setnames(ub_weighted_mean_sex_comuna, c("FUN"), c("ub_weighted_mean"))
setnames(ub_weighted_mean_sex_icse_comuna, c("FUN"), c("ub_weighted_mean"))
setnames(ub_weighted_mean_sex_isced_comuna, c("FUN"), c("ub_weighted_mean"))
setnames(ub_weighted_mean_sex_isco_comuna, c("FUN"), c("ub_weighted_mean"))
setnames(ub_weighted_mean_sex_isic_comuna, c("FUN"), c("ub_weighted_mean"))
setnames(ub_weighted_mean_sex_work_day_comuna, c("FUN"), c("ub_weighted_mean"))
setnames(ub_weighted_mean_sex_company_size_comuna, c("FUN"), c("ub_weighted_mean"))

####################################
# confidence interval for the median
####################################

lb_weighted_median_sex_comuna <- ddply(labour_description, .(sex,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_icse_comuna <- ddply(labour_description, .(sex,icse,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_isced_comuna <- ddply(labour_description, .(sex,isced,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_isco_comuna <- ddply(labour_description, .(sex,isco,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_isic_comuna <- ddply(labour_description, .(sex,isic,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_work_day_comuna <- ddply(labour_description, .(sex,work_day,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))
lb_weighted_median_sex_company_size_comuna <- ddply(labour_description, .(sex,company_size,comuna_name,comuna_datachile_id,year), summarise, FUN = lb_weighted_median_plyr(wage, weight))

ub_weighted_median_sex_comuna <- ddply(labour_description, .(sex,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_icse_comuna <- ddply(labour_description, .(sex,icse,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_isced_comuna <- ddply(labour_description, .(sex,isced,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_isco_comuna <- ddply(labour_description, .(sex,isco,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_isic_comuna <- ddply(labour_description, .(sex,isic,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_work_day_comuna <- ddply(labour_description, .(sex,work_day,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))
ub_weighted_median_sex_company_size_comuna <- ddply(labour_description, .(sex,company_size,comuna_name,comuna_datachile_id,year), summarise, FUN = ub_weighted_median_plyr(wage, weight))

setnames(lb_weighted_median_sex_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(lb_weighted_median_sex_icse_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(lb_weighted_median_sex_isced_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(lb_weighted_median_sex_isco_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(lb_weighted_median_sex_isic_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(lb_weighted_median_sex_work_day_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(lb_weighted_median_sex_company_size_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))

setnames(ub_weighted_median_sex_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(ub_weighted_median_sex_icse_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(ub_weighted_median_sex_isced_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(ub_weighted_median_sex_isco_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(ub_weighted_median_sex_isic_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(ub_weighted_median_sex_work_day_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))
setnames(ub_weighted_median_sex_company_size_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))

setnames(lb_weighted_median_sex_comuna, c("FUN"), c("lb_weighted_median"))
setnames(lb_weighted_median_sex_icse_comuna, c("FUN"), c("lb_weighted_median"))
setnames(lb_weighted_median_sex_isced_comuna, c("FUN"), c("lb_weighted_median"))
setnames(lb_weighted_median_sex_isco_comuna, c("FUN"), c("lb_weighted_median"))
setnames(lb_weighted_median_sex_isic_comuna, c("FUN"), c("lb_weighted_median"))
setnames(lb_weighted_median_sex_work_day_comuna, c("FUN"), c("lb_weighted_median"))
setnames(lb_weighted_median_sex_company_size_comuna, c("FUN"), c("lb_weighted_median"))

setnames(ub_weighted_median_sex_comuna, c("FUN"), c("ub_weighted_median"))
setnames(ub_weighted_median_sex_icse_comuna, c("FUN"), c("ub_weighted_median"))
setnames(ub_weighted_median_sex_isced_comuna, c("FUN"), c("ub_weighted_median"))
setnames(ub_weighted_median_sex_isco_comuna, c("FUN"), c("ub_weighted_median"))
setnames(ub_weighted_median_sex_isic_comuna, c("FUN"), c("ub_weighted_median"))
setnames(ub_weighted_median_sex_work_day_comuna, c("FUN"), c("ub_weighted_median"))
setnames(ub_weighted_median_sex_company_size_comuna, c("FUN"), c("ub_weighted_median"))

##########################
# join at comuna level
##########################

sex_comuna <- inner_join(weighted_mean_sex_comuna,weighted_median_sex_comuna)
  sex_comuna <- inner_join(sex_comuna,lb_weighted_mean_sex_comuna)
  sex_comuna <- inner_join(sex_comuna,ub_weighted_mean_sex_comuna)
  sex_comuna <- inner_join(sex_comuna,lb_weighted_median_sex_comuna)
  sex_comuna <- inner_join(sex_comuna,ub_weighted_median_sex_comuna)

sex_icse_comuna <- inner_join(weighted_mean_sex_icse_comuna,weighted_median_sex_icse_comuna)
  sex_icse_comuna <- inner_join(sex_icse_comuna,lb_weighted_mean_sex_icse_comuna)
  sex_icse_comuna <- inner_join(sex_icse_comuna,ub_weighted_mean_sex_icse_comuna)
  sex_icse_comuna <- inner_join(sex_icse_comuna,lb_weighted_median_sex_icse_comuna)
  sex_icse_comuna <- inner_join(sex_icse_comuna,ub_weighted_median_sex_icse_comuna)

sex_isced_comuna <- inner_join(weighted_mean_sex_isced_comuna,weighted_median_sex_isced_comuna)
  sex_isced_comuna <- inner_join(sex_isced_comuna,lb_weighted_mean_sex_isced_comuna)
  sex_isced_comuna <- inner_join(sex_isced_comuna,ub_weighted_mean_sex_isced_comuna)
  sex_isced_comuna <- inner_join(sex_isced_comuna,lb_weighted_median_sex_isced_comuna)
  sex_isced_comuna <- inner_join(sex_isced_comuna,ub_weighted_median_sex_isced_comuna)  
  
sex_isco_comuna <- inner_join(weighted_mean_sex_isco_comuna,weighted_median_sex_isco_comuna)
  sex_isco_comuna <- inner_join(sex_isco_comuna,lb_weighted_mean_sex_isco_comuna)
  sex_isco_comuna <- inner_join(sex_isco_comuna,ub_weighted_mean_sex_isco_comuna)
  sex_isco_comuna <- inner_join(sex_isco_comuna,lb_weighted_median_sex_isco_comuna)
  sex_isco_comuna <- inner_join(sex_isco_comuna,ub_weighted_median_sex_isco_comuna)  
    
sex_isic_comuna <- inner_join(weighted_mean_sex_isic_comuna,weighted_median_sex_isic_comuna)
  sex_isic_comuna <- inner_join(sex_isic_comuna,lb_weighted_mean_sex_isic_comuna)
  sex_isic_comuna <- inner_join(sex_isic_comuna,ub_weighted_mean_sex_isic_comuna)
  sex_isic_comuna <- inner_join(sex_isic_comuna,lb_weighted_median_sex_isic_comuna)
  sex_isic_comuna <- inner_join(sex_isic_comuna,ub_weighted_median_sex_isic_comuna)
  
sex_work_day_comuna <- inner_join(weighted_mean_sex_work_day_comuna,weighted_median_sex_work_day_comuna)
  sex_work_day_comuna <- inner_join(sex_work_day_comuna,lb_weighted_mean_sex_work_day_comuna)
  sex_work_day_comuna <- inner_join(sex_work_day_comuna,ub_weighted_mean_sex_work_day_comuna)
  sex_work_day_comuna <- inner_join(sex_work_day_comuna,lb_weighted_median_sex_work_day_comuna)
  sex_work_day_comuna <- inner_join(sex_work_day_comuna,ub_weighted_median_sex_work_day_comuna)
 
sex_company_size_comuna <- inner_join(weighted_mean_sex_company_size_comuna,weighted_median_sex_company_size_comuna)
  sex_company_size_comuna <- inner_join(sex_company_size_comuna,lb_weighted_mean_sex_company_size_comuna)
  sex_company_size_comuna <- inner_join(sex_company_size_comuna,ub_weighted_mean_sex_company_size_comuna)
  sex_company_size_comuna <- inner_join(sex_company_size_comuna,lb_weighted_median_sex_company_size_comuna)
  sex_company_size_comuna <- inner_join(sex_company_size_comuna,ub_weighted_median_sex_company_size_comuna)
  
##########################
# save intermediate files
##########################

write.csv(weighted_mean_sex_comuna, file = "labour_situation/csv_intermediate_files/weighted_mean_sex_comuna.csv")
write.csv(weighted_mean_sex_icse_comuna, file = "labour_situation/csv_intermediate_files/weighted_mean_sex_icse_comuna.csv")
write.csv(weighted_mean_sex_isced_comuna, file = "labour_situation/csv_intermediate_files/weighted_mean_sex_isced_comuna.csv")
write.csv(weighted_mean_sex_isco_comuna, file = "labour_situation/csv_intermediate_files/weighted_mean_sex_isco_comuna.csv")
write.csv(weighted_mean_sex_isic_comuna, file = "labour_situation/csv_intermediate_files/weighted_mean_sex_isic_comuna.csv")
write.csv(weighted_mean_sex_work_day_comuna, file = "labour_situation/csv_intermediate_files/weighted_mean_sex_work_day_comuna.csv")
write.csv(weighted_mean_sex_company_size_comuna, file = "labour_situation/csv_intermediate_files/weighted_mean_sex_company_size_comuna.csv")

write.csv(weighted_median_sex_comuna, file = "labour_situation/csv_intermediate_files/weighted_median_sex_comuna.csv")
write.csv(weighted_median_sex_icse_comuna, file = "labour_situation/csv_intermediate_files/weighted_median_sex_icse_comuna.csv")
write.csv(weighted_median_sex_isced_comuna, file = "labour_situation/csv_intermediate_files/weighted_median_sex_isced_comuna.csv")
write.csv(weighted_median_sex_isco_comuna, file = "labour_situation/csv_intermediate_files/weighted_median_sex_isco_comuna.csv")
write.csv(weighted_median_sex_isic_comuna, file = "labour_situation/csv_intermediate_files/weighted_median_sex_isic_comuna.csv")
write.csv(weighted_median_sex_work_day_comuna, file = "labour_situation/csv_intermediate_files/weighted_median_sex_work_day_comuna.csv")
write.csv(weighted_median_sex_company_size_comuna, file = "labour_situation/csv_intermediate_files/weighted_median_sex_company_size_comuna.csv")

write.csv(lb_weighted_median_sex_comuna, file = "labour_situation/csv_intermediate_files/lb_weighted_median_sex_comuna.csv")
write.csv(lb_weighted_median_sex_icse_comuna, file = "labour_situation/csv_intermediate_files/lb_weighted_median_sex_icse_comuna.csv")
write.csv(lb_weighted_median_sex_isced_comuna, file = "labour_situation/csv_intermediate_files/lb_weighted_median_sex_isced_comuna.csv")
write.csv(lb_weighted_median_sex_isco_comuna, file = "labour_situation/csv_intermediate_files/lb_weighted_median_sex_isco_comuna.csv")
write.csv(lb_weighted_median_sex_isic_comuna, file = "labour_situation/csv_intermediate_files/lb_weighted_median_sex_isic_comuna.csv")
write.csv(lb_weighted_median_sex_work_day_comuna, file = "labour_situation/csv_intermediate_files/lb_weighted_median_sex_work_day_comuna.csv")
write.csv(lb_weighted_median_sex_company_size_comuna, file = "labour_situation/csv_intermediate_files/lb_weighted_median_sex_company_size_comuna.csv")

write.csv(ub_weighted_median_sex_comuna, file = "labour_situation/csv_intermediate_files/ub_weighted_median_sex_comuna.csv")
write.csv(ub_weighted_median_sex_icse_comuna, file = "labour_situation/csv_intermediate_files/ub_weighted_median_sex_icse_comuna.csv")
write.csv(ub_weighted_median_sex_isced_comuna, file = "labour_situation/csv_intermediate_files/ub_weighted_median_sex_isced_comuna.csv")
write.csv(ub_weighted_median_sex_isco_comuna, file = "labour_situation/csv_intermediate_files/ub_weighted_median_sex_isco_comuna.csv")
write.csv(ub_weighted_median_sex_isic_comuna, file = "labour_situation/csv_intermediate_files/ub_weighted_median_sex_isic_comuna.csv")
write.csv(ub_weighted_median_sex_work_day_comuna, file = "labour_situation/csv_intermediate_files/ub_weighted_median_sex_work_day_comuna.csv")
write.csv(ub_weighted_median_sex_company_size_comuna, file = "labour_situation/csv_intermediate_files/ub_weighted_median_sex_company_size_comuna.csv")

save(sex_comuna, file = "labour_situation/rdata_intermediate_files/sex_comuna.RData")
save(sex_icse_comuna, file = "labour_situation/rdata_intermediate_files/sex_icse_comuna.RData")
save(sex_isced_comuna, file = "labour_situation/rdata_intermediate_files/sex_isced_comuna.RData")
save(sex_isco_comuna, file = "labour_situation/rdata_intermediate_files/sex_isco_comuna.RData")
save(sex_isic_comuna, file = "labour_situation/rdata_intermediate_files/sex_isic_comuna.RData")
save(sex_work_day_comuna, file = "labour_situation/rdata_intermediate_files/sex_work_day_comuna.RData")
save(sex_company_size_comuna, file = "labour_situation/rdata_intermediate_files/sex_company_size_comuna.RData")
