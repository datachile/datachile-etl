tidy_all_comuna <- read.csv("tidy_all_comuna.csv")
tidy_all_provincia <- read.csv("tidy_all_provincia.csv")
tidy_all_region <- read.csv("tidy_all_region.csv")

tidy_all <- rbind(tidy_all_comuna, tidy_all_provincia, tidy_all_region)
tidy_all <- tidy_all[!(tidy_all$geography_name == "Pa\u00eds"),]
write.csv(tidy_all, file = "tidy_all.csv")
