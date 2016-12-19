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
