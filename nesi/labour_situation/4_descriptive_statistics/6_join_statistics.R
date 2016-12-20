#############
# load files
#############

load(file = "labour_situation/rdata_intermediate_files/sex_comuna.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_icse_comuna.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_isced_comuna.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_isco_comuna.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_isic_comuna.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_work_day_comuna.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_company_size_comuna.RData")

load(file = "labour_situation/rdata_intermediate_files/sex_provincia.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_icse_provincia.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_isced_provincia.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_isco_provincia.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_isic_provincia.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_work_day_provincia.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_company_size_provincia.RData")

load(file = "labour_situation/rdata_intermediate_files/sex_region.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_icse_region.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_isced_region.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_isco_region.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_isic_region.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_work_day_region.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_company_size_region.RData")

load(file = "labour_situation/rdata_intermediate_files/sex_country.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_icse_country.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_isced_country.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_isco_country.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_isic_country.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_work_day_country.RData")
load(file = "labour_situation/rdata_intermediate_files/sex_company_size_country.RData")

#################
# append by rows
#################

sex <- rbind(sex_comuna, sex_provincia, sex_region, sex_country)
rm(sex_comuna, sex_provincia, sex_region, sex_country)

sex_icse <- rbind(sex_icse_comuna, sex_icse_provincia, sex_icse_region, sex_icse_country)
rm(sex_icse_comuna, sex_icse_provincia, sex_icse_region, sex_icse_country)

sex_isced <- rbind(sex_isced_comuna, sex_isced_provincia, sex_isced_region, sex_isced_country)
rm(sex_isced_comuna, sex_isced_provincia, sex_isced_region, sex_isced_country)

sex_isco <- rbind(sex_isco_comuna, sex_isco_provincia, sex_isco_region, sex_isco_country)
rm(sex_isco_comuna, sex_isco_provincia, sex_isco_region, sex_isco_country)

sex_isic <- rbind(sex_isic_comuna, sex_isic_provincia, sex_isic_region, sex_isic_country)
rm(sex_isic_comuna, sex_isic_provincia, sex_isic_region, sex_isic_country)

sex_work_day <- rbind(sex_work_day_comuna, sex_work_day_provincia, sex_work_day_region, sex_work_day_country)
rm(sex_work_day_comuna, sex_work_day_provincia, sex_work_day_region, sex_work_day_country)

sex_company_size <- rbind(sex_company_size_comuna, sex_company_size_provincia, sex_company_size_region, sex_company_size_country)
rm(sex_company_size_comuna, sex_company_size_provincia, sex_company_size_region, sex_company_size_country)

#######
# save
#######

write.csv(sex, file = "labour_situation/csv_final_files/sex.csv")
write.csv(sex_icse, file = "labour_situation/csv_final_files/sex_icse.csv")
write.csv(sex_isced, file = "labour_situation/csv_final_files/sex_isced.csv")
write.csv(sex_isic, file = "labour_situation/csv_final_files/sex_isic.csv")
write.csv(sex_work_day, file = "labour_situation/csv_final_files/sex_work_day.csv")
write.csv(sex_company_size, file = "labour_situation/csv_final_files/sex_company_size.csv")

save(sex, file = "labour_situation/rdata_final_files/sex.RData")
save(sex_icse, file = "labour_situation/rdata_final_files/sex_icse.RData")
save(sex_isced, file = "labour_situation/rdata_final_files/sex_isced.RData")
save(sex_isic, file = "labour_situation/rdata_final_files/sex_isic.RData")
save(sex_work_day, file = "labour_situation/rdata_final_files/sex_work_day.RData")
save(sex_company_size, file = "labour_situation/rdata_final_files/sex_company_size.RData")
