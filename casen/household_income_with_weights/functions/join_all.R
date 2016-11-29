if ((exists("tidy_all_comuna") & exists("tidy_all_provincia") & exists("tidy_all_region") & exists("tidy_all_country")) == TRUE) {
  tidy_all <- rbind(tidy_all_comuna, tidy_all_provincia, tidy_all_region)
  tidy_all <- rbind(tidy_all, tidy_all_country)
  tidy_all$geography_level <- as.factor(tidy_all$geography_level)
  tidy_all$geography_name <- as.factor(tidy_all$geography_name)
  tidy_all$geography_id <- as.factor(tidy_all$geography_id)
  tidy_all$year <- as.numeric(tidy_all$year)
  write.csv(tidy_all, file = "household_income_with_weights/csv_final_files/household_income_with_weights_tidy_all.csv")
} else {
  tidy_all_comuna <- read.csv("household_income_with_weights/csv_final_files/household_income_with_weights_tidy_all_comuna.csv")
  tidy_all_provincia <- read.csv("household_income_with_weights/csv_final_files/household_income_with_weights_tidy_all_provincia.csv")
  tidy_all_region <- read.csv("household_income_with_weights/csv_final_files/household_income_with_weights_tidy_all_region.csv")
  tidy_all_country <- read.csv("household_income_with_weights/csv_final_files/household_income_with_weights_tidy_all_country.csv")
  
  tidy_all_comuna <- tidy_all_comuna[,!(colnames(tidy_all_comuna) %in% "X")]
  tidy_all_provincia <- tidy_all_provincia[,!(colnames(tidy_all_provincia) %in% "X")]
  tidy_all_region <- tidy_all_region[,!(colnames(tidy_all_region) %in% "X")]
  tidy_all_country <- tidy_all_country[,!(colnames(tidy_all_country) %in% "X")]
  
  tidy_all <- rbind(tidy_all_comuna, tidy_all_provincia, tidy_all_region)
  tidy_all <- rbind(tidy_all, tidy_all_country)
  tidy_all$geography_level <- as.factor(tidy_all$geography_level)
  tidy_all$geography_name <- as.factor(tidy_all$geography_name)
  tidy_all$geography_id <- as.factor(tidy_all$geography_id)
  write.csv(tidy_all, file = "household_income_with_weights/csv_final_files/household_income_with_weights_tidy_all.csv")
}
