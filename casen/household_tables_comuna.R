#uncomment lines 2-3 when running this file alone
#source("normalization.R")
#source("process_household_income.R")
source("household_statistics_comuna.R")

###############
# join median #
###############

median_income_comuna <- as.data.frame(unique(c(median_1990_comuna$comuna, median_2015_comuna$comuna)))
setnames(median_income_comuna, colnames(median_income_comuna), "comuna")

median_income_comuna <- join(median_income_comuna, median_1990_comuna, type = "left")
median_income_comuna <- join(median_income_comuna, median_1992_comuna, type = "left")
median_income_comuna <- join(median_income_comuna, median_1994_comuna, type = "left")
median_income_comuna <- join(median_income_comuna, median_1996_comuna, type = "left")
median_income_comuna <- join(median_income_comuna, median_1998_comuna, type = "left")
median_income_comuna <- join(median_income_comuna, median_2000_comuna, type = "left")
median_income_comuna <- join(median_income_comuna, median_2003_comuna, type = "left")
median_income_comuna <- join(median_income_comuna, median_2006_comuna, type = "left")
median_income_comuna <- join(median_income_comuna, median_2009_comuna, type = "left")
median_income_comuna <- join(median_income_comuna, median_2011_comuna, type = "left")
median_income_comuna <- join(median_income_comuna, median_2013_comuna, type = "left")
median_income_comuna <- join(median_income_comuna, median_2015_comuna, type = "left")

median_income_comuna <- median_income_comuna[order(median_income_comuna$comuna),]
median_income_comuna <- rbind(median_income_comuna[!median_income_comuna$comuna %in% c("Pa\u00eds"), ], median_income_comuna[median_income_comuna$comuna %in% c("Pa\u00eds"), ])
rownames(median_income_comuna) <- c(seq(1:nrow(median_income_comuna)))
median_income_comuna[,-c(1)] <- lapply(median_income_comuna[,-c(1)], function (x) as.numeric(x))

#############
# join mean #
#############

mean_income_comuna <- as.data.frame(unique(c(mean_1990_comuna$comuna, mean_2015_comuna$comuna)))
setnames(mean_income_comuna, colnames(mean_income_comuna), "comuna")

mean_income_comuna <- join(mean_income_comuna, mean_1990_comuna, type = "left")
mean_income_comuna <- join(mean_income_comuna, mean_1992_comuna, type = "left")
mean_income_comuna <- join(mean_income_comuna, mean_1994_comuna, type = "left")
mean_income_comuna <- join(mean_income_comuna, mean_1996_comuna, type = "left")
mean_income_comuna <- join(mean_income_comuna, mean_1998_comuna, type = "left")
mean_income_comuna <- join(mean_income_comuna, mean_2000_comuna, type = "left")
mean_income_comuna <- join(mean_income_comuna, mean_2003_comuna, type = "left")
mean_income_comuna <- join(mean_income_comuna, mean_2006_comuna, type = "left")
mean_income_comuna <- join(mean_income_comuna, mean_2009_comuna, type = "left")
mean_income_comuna <- join(mean_income_comuna, mean_2011_comuna, type = "left")
mean_income_comuna <- join(mean_income_comuna, mean_2013_comuna, type = "left")
mean_income_comuna <- join(mean_income_comuna, mean_2015_comuna, type = "left")

mean_income_comuna <- mean_income_comuna[order(mean_income_comuna$comuna),]
mean_income_comuna <- rbind(mean_income_comuna[!mean_income_comuna$comuna %in% c("Pa\u00eds"), ], mean_income_comuna[mean_income_comuna$comuna %in% c("Pa\u00eds"), ])
rownames(mean_income_comuna) <- c(seq(1:nrow(mean_income_comuna)))
mean_income_comuna[,-c(1)] <- lapply(mean_income_comuna[,-c(1)], function (x) as.numeric(x))

#############
# join gini #
#############

gini_income_comuna <- as.data.frame(unique(c(gini_1990_comuna$comuna, gini_2015_comuna$comuna)))
setnames(gini_income_comuna, colnames(gini_income_comuna), "comuna")

gini_income_comuna <- join(gini_income_comuna, gini_1990_comuna, type = "left")
gini_income_comuna <- join(gini_income_comuna, gini_1992_comuna, type = "left")
gini_income_comuna <- join(gini_income_comuna, gini_1994_comuna, type = "left")
gini_income_comuna <- join(gini_income_comuna, gini_1996_comuna, type = "left")
gini_income_comuna <- join(gini_income_comuna, gini_1998_comuna, type = "left")
gini_income_comuna <- join(gini_income_comuna, gini_2000_comuna, type = "left")
gini_income_comuna <- join(gini_income_comuna, gini_2003_comuna, type = "left")
gini_income_comuna <- join(gini_income_comuna, gini_2006_comuna, type = "left")
gini_income_comuna <- join(gini_income_comuna, gini_2009_comuna, type = "left")
gini_income_comuna <- join(gini_income_comuna, gini_2011_comuna, type = "left")
gini_income_comuna <- join(gini_income_comuna, gini_2013_comuna, type = "left")
gini_income_comuna <- join(gini_income_comuna, gini_2015_comuna, type = "left")

gini_income_comuna <- gini_income_comuna[order(gini_income_comuna$comuna),]
gini_income_comuna <- rbind(gini_income_comuna[!gini_income_comuna$comuna %in% c("Pa\u00eds"), ], gini_income_comuna[gini_income_comuna$comuna %in% c("Pa\u00eds"), ])
rownames(gini_income_comuna) <- c(seq(1:nrow(gini_income_comuna)))
gini_income_comuna[,-c(1)] <- lapply(gini_income_comuna[,-c(1)], function (x) as.numeric(x))

###############
# tidy median #
###############

tidy_median_income_comuna <- median_income_comuna %>% gather(year, median, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_mean_income_comuna <- mean_income_comuna %>% gather(year, mean, `1990`:`2015`)

#############
# tidy gini #
#############

tidy_gini_income_comuna <- gini_income_comuna %>% gather(year, gini, `1990`:`2015`)

############
# join all #
############

tidy_all_comuna <- join(tidy_mean_income_comuna, tidy_median_income_comuna, by = c("comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_gini_income_comuna, by = c("comuna","year"))

setnames(tidy_all_comuna, c("comuna","mean","median","gini"), c("comuna_name","mean_income","median_income","gini_income"))
tidy_all_comuna <- join(tidy_all_comuna, region_codes_datachile[,c("comuna_name","comuna_datachile_id")], by = "comuna_name")
tidy_all_comuna$geography_level <- "comuna"
tidy_all_comuna <- move_col(tidy_all_comuna, c("geography_level"=1, "comuna_name"=2, "comuna_datachile_id"=3, "year"=4))

tidy_all_comuna <- tidy_all_comuna[,c("geography_level","comuna_name","comuna_datachile_id","year","mean_income","median_income","gini_income")]
setnames(tidy_all_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))

tidy_all_comuna$geography_level <- as.character(tidy_all_comuna$geography_level)
tidy_all_comuna$geography_name <- as.character(tidy_all_comuna$geography_name)
tidy_all_comuna$geography_id <- as.character(tidy_all_comuna$geography_id)

########
# save #
########

write.csv(median_income_comuna, file = "median_income_comuna.csv")
write.csv(mean_income_comuna, file = "mean_income_comuna.csv")
write.csv(gini_income_comuna, file = "gini_income_comuna.csv")
write.csv(tidy_all_comuna, file = "tidy_all_comuna.csv")
