#uncomment lines 2-3 when running this file alone
#source("normalization.R")
#source("process_household_income.R")
source("household_statistics_region.R")

###############
# join median #
###############

median_income_region <- as.data.frame(unique(c(median_1990_region$region, median_2015_region$region)))
setnames(median_income_region, colnames(median_income_region), "region")

median_income_region <- join(median_income_region, median_1990_region, type = "left")
median_income_region <- join(median_income_region, median_1992_region, type = "left")
median_income_region <- join(median_income_region, median_1994_region, type = "left")
median_income_region <- join(median_income_region, median_1996_region, type = "left")
median_income_region <- join(median_income_region, median_1998_region, type = "left")
median_income_region <- join(median_income_region, median_2000_region, type = "left")
median_income_region <- join(median_income_region, median_2003_region, type = "left")
median_income_region <- join(median_income_region, median_2006_region, type = "left")
median_income_region <- join(median_income_region, median_2009_region, type = "left")
median_income_region <- join(median_income_region, median_2011_region, type = "left")
median_income_region <- join(median_income_region, median_2013_region, type = "left")
median_income_region <- join(median_income_region, median_2015_region, type = "left")

median_income_region <- median_income_region[order(median_income_region$region),]
median_income_region <- rbind(median_income_region[!median_income_region$region %in% c("Pa\u00eds"), ], median_income_region[median_income_region$region %in% c("Pa\u00eds"), ])
rownames(median_income_region) <- c(seq(1:nrow(median_income_region)))
median_income_region[,-c(1)] <- lapply(median_income_region[,-c(1)], function (x) as.numeric(x))

#############
# join mean #
#############

mean_income_region <- as.data.frame(unique(c(mean_1990_region$region, mean_2015_region$region)))
setnames(mean_income_region, colnames(mean_income_region), "region")

mean_income_region <- join(mean_income_region, mean_1990_region, type = "left")
mean_income_region <- join(mean_income_region, mean_1992_region, type = "left")
mean_income_region <- join(mean_income_region, mean_1994_region, type = "left")
mean_income_region <- join(mean_income_region, mean_1996_region, type = "left")
mean_income_region <- join(mean_income_region, mean_1998_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2000_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2003_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2006_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2009_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2011_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2013_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2015_region, type = "left")

mean_income_region <- mean_income_region[order(mean_income_region$region),]
mean_income_region <- rbind(mean_income_region[!mean_income_region$region %in% c("Pa\u00eds"), ], mean_income_region[mean_income_region$region %in% c("Pa\u00eds"), ])
rownames(mean_income_region) <- c(seq(1:nrow(mean_income_region)))
mean_income_region[,-c(1)] <- lapply(mean_income_region[,-c(1)], function (x) as.numeric(x))

#############
# join gini #
#############

gini_income_region <- as.data.frame(unique(c(gini_1990_region$region, gini_2015_region$region)))
setnames(gini_income_region, colnames(gini_income_region), "region")

gini_income_region <- join(gini_income_region, gini_1990_region, type = "left")
gini_income_region <- join(gini_income_region, gini_1992_region, type = "left")
gini_income_region <- join(gini_income_region, gini_1994_region, type = "left")
gini_income_region <- join(gini_income_region, gini_1996_region, type = "left")
gini_income_region <- join(gini_income_region, gini_1998_region, type = "left")
gini_income_region <- join(gini_income_region, gini_2000_region, type = "left")
gini_income_region <- join(gini_income_region, gini_2003_region, type = "left")
gini_income_region <- join(gini_income_region, gini_2006_region, type = "left")
gini_income_region <- join(gini_income_region, gini_2009_region, type = "left")
gini_income_region <- join(gini_income_region, gini_2011_region, type = "left")
gini_income_region <- join(gini_income_region, gini_2013_region, type = "left")
gini_income_region <- join(gini_income_region, gini_2015_region, type = "left")

gini_income_region <- gini_income_region[order(gini_income_region$region),]
gini_income_region <- rbind(gini_income_region[!gini_income_region$region %in% c("Pa\u00eds"), ], gini_income_region[gini_income_region$region %in% c("Pa\u00eds"), ])
rownames(gini_income_region) <- c(seq(1:nrow(gini_income_region)))
gini_income_region[,-c(1)] <- lapply(gini_income_region[,-c(1)], function (x) as.numeric(x))

###############
# tidy median #
###############

tidy_median_income_region <- median_income_region %>% gather(year, median, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_mean_income_region <- mean_income_region %>% gather(year, mean, `1990`:`2015`)

#############
# tidy gini #
#############

tidy_gini_income_region <- gini_income_region %>% gather(year, gini, `1990`:`2015`)

############
# join all #
############

tidy_all_region <- join(tidy_mean_income_region, tidy_median_income_region, by = c("region","year"))
tidy_all_region <- join(tidy_all_region, tidy_gini_income_region, by = c("region","year"))

setnames(tidy_all_region, c("region","mean","median","gini"), c("region_name","mean_income","median_income","gini_income"))
tidy_all_region <- join(tidy_all_region, region_codes_datachile[,c("region_name","region_id")], by = "region_name")
tidy_all_region$geography_level <- "region"
tidy_all_region <- move_col(tidy_all_region, c("geography_level"=1, "region_name"=2, "region_id"=3, "year"=4))

tidy_all_region <- tidy_all_region[,c("geography_level","region_name","region_id","year","mean_income","median_income","gini_income")]
setnames(tidy_all_region, c("region_name","region_id"), c("geography_name","geography_id"))

tidy_all_region$geography_level <- as.character(tidy_all_region$geography_level)
tidy_all_region$geography_name <- as.character(tidy_all_region$geography_name)
tidy_all_region$geography_id <- as.character(tidy_all_region$geography_id)

########
# save #
########

write.csv(median_income_region, file = "median_income_region.csv")
write.csv(mean_income_region, file = "mean_income_region.csv")
write.csv(gini_income_region, file = "gini_income_region.csv")
write.csv(tidy_all_region, file = "tidy_all_region.csv")
