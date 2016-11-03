if ((exists("tidy_all_comuna") & exists("tidy_all_provincia") & exists("tidy_all_region")) == TRUE) {
  tidy_all <- rbind(tidy_all_comuna, tidy_all_provincia, tidy_all_region)
  tidy_all <- rbind(tidy_all, tidy_all_country)
  tidy_all$geography_level <- as.factor(tidy_all$geography_level)
  tidy_all$geography_name <- as.factor(tidy_all$geography_name)
  tidy_all$geography_id <- as.factor(tidy_all$geography_id)
  tidy_all$year <- as.numeric(tidy_all$year)
  write.csv(tidy_all, file = "csv_final_files/tidy_all.csv")
} else {
  tidy_all_comuna <- read.csv("csv_final_files/tidy_all_comuna.csv")
  tidy_all_provincia <- read.csv("csv_final_files/tidy_all_provincia.csv")
  tidy_all_region <- read.csv("csv_final_files/tidy_all_region.csv")
  
  tidy_all_comuna <- tidy_all_comuna[,!(colnames(tidy_all_comuna) %in% "X")]
  tidy_all_provincia <- tidy_all_provincia[,!(colnames(tidy_all_provincia) %in% "X")]
  tidy_all_region <- tidy_all_region[,!(colnames(tidy_all_region) %in% "X")]
  
  tidy_all <- rbind(tidy_all_comuna, tidy_all_provincia, tidy_all_region)
  tidy_all <- rbind(tidy_all, tidy_all_country)
  tidy_all$geography_level <- as.factor(tidy_all$geography_level)
  tidy_all$geography_name <- as.factor(tidy_all$geography_name)
  tidy_all$geography_id <- as.factor(tidy_all$geography_id)
  write.csv(tidy_all, file = "csv_final_files/tidy_all.csv")
}
