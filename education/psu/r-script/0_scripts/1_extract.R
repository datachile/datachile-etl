raw_data <- list.files("1_raw_data", full.names = T)

dirs <- paste0("1_raw_data/", c("registered/", "enrollment/", "applications/", "socioeconomic_condition/"))

for (j in 1:length(raw_data)) {
  system(paste("unrar x", raw_data[[j]], dirs[[j]]))
}
