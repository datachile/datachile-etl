source("process_household_income.R")
source("household_statistics_provincia.R")
source("normalization.R")

###############
# join median #
###############

median_income_provincia <- as.data.frame(unique(c(median_1990_provincia$provincia, median_2015_provincia$provincia)))
setnames(median_income_provincia, colnames(median_income_provincia), "provincia")

median_income_provincia <- join(median_income_provincia, median_1990_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_1992_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_1994_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_1996_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_1998_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2000_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2003_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2006_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2009_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2011_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2013_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2015_provincia, type = "left")

median_income_provincia <- median_income_provincia[order(median_income_provincia$provincia),]
median_income_provincia <- rbind(median_income_provincia[!median_income_provincia$provincia %in% c("Pa\u00eds"), ], median_income_provincia[median_income_provincia$provincia %in% c("Pa\u00eds"), ])
rownames(median_income_provincia) <- c(seq(1:nrow(median_income_provincia)))
median_income_provincia[,-c(1)] <- lapply(median_income_provincia[,-c(1)], function (x) as.numeric(x))

#############
# join mean #
#############

mean_income_provincia <- as.data.frame(unique(c(mean_1990_provincia$provincia, mean_2015_provincia$provincia)))
setnames(mean_income_provincia, colnames(mean_income_provincia), "provincia")

mean_income_provincia <- join(mean_income_provincia, mean_1990_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_1992_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_1994_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_1996_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_1998_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2000_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2003_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2006_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2009_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2011_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2013_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2015_provincia, type = "left")

mean_income_provincia <- mean_income_provincia[order(mean_income_provincia$provincia),]
mean_income_provincia <- rbind(mean_income_provincia[!mean_income_provincia$provincia %in% c("Pa\u00eds"), ], mean_income_provincia[mean_income_provincia$provincia %in% c("Pa\u00eds"), ])
rownames(mean_income_provincia) <- c(seq(1:nrow(mean_income_provincia)))
mean_income_provincia[,-c(1)] <- lapply(mean_income_provincia[,-c(1)], function (x) as.numeric(x))

#############
# join gini #
#############

gini_income_provincia <- as.data.frame(unique(c(gini_1990_provincia$provincia, gini_2015_provincia$provincia)))
setnames(gini_income_provincia, colnames(gini_income_provincia), "provincia")

gini_income_provincia <- join(gini_income_provincia, gini_1990_provincia, type = "left")
gini_income_provincia <- join(gini_income_provincia, gini_1992_provincia, type = "left")
gini_income_provincia <- join(gini_income_provincia, gini_1994_provincia, type = "left")
gini_income_provincia <- join(gini_income_provincia, gini_1996_provincia, type = "left")
gini_income_provincia <- join(gini_income_provincia, gini_1998_provincia, type = "left")
gini_income_provincia <- join(gini_income_provincia, gini_2000_provincia, type = "left")
gini_income_provincia <- join(gini_income_provincia, gini_2003_provincia, type = "left")
gini_income_provincia <- join(gini_income_provincia, gini_2006_provincia, type = "left")
gini_income_provincia <- join(gini_income_provincia, gini_2009_provincia, type = "left")
gini_income_provincia <- join(gini_income_provincia, gini_2011_provincia, type = "left")
gini_income_provincia <- join(gini_income_provincia, gini_2013_provincia, type = "left")
gini_income_provincia <- join(gini_income_provincia, gini_2015_provincia, type = "left")

gini_income_provincia <- gini_income_provincia[order(gini_income_provincia$provincia),]
gini_income_provincia <- rbind(gini_income_provincia[!gini_income_provincia$provincia %in% c("Pa\u00eds"), ], gini_income_provincia[gini_income_provincia$provincia %in% c("Pa\u00eds"), ])
rownames(gini_income_provincia) <- c(seq(1:nrow(gini_income_provincia)))
gini_income_provincia[,-c(1)] <- lapply(gini_income_provincia[,-c(1)], function (x) as.numeric(x))

###############
# tidy median #
###############

tidy_median_income_provincia <- median_income_provincia %>% gather(year, median, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_mean_income_provincia <- mean_income_provincia %>% gather(year, mean, `1990`:`2015`)

#############
# tidy gini #
#############

tidy_gini_income_provincia <- gini_income_provincia %>% gather(year, gini, `1990`:`2015`)

############
# join all #
############

tidy_all_provincia <- join(tidy_mean_income_provincia, tidy_median_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_gini_income_provincia, by = c("provincia","year"))

setnames(tidy_all_provincia, c("provincia","mean","median","gini"), c("provincia_name","mean_income","median_income","gini_income"))
tidy_all_provincia <- join(tidy_all_provincia, unique(provincias_codes[,c("provincia_name","provincia_pacha_id")]), by = "provincia_name")
tidy_all_provincia$geography_level <- "provincia"
tidy_all_provincia <- move_col(tidy_all_provincia, c("geography_level"=1, "year"=2, "provincia_name"=3, "provincia_pacha_id"=4))

tidy_all_provincia <- tidy_all_provincia[,c("geography_level","provincia_name","provincia_pacha_id","year","mean_income","median_income","gini_income")]
setnames(tidy_all_provincia, c("provincia_name","provincia_pacha_id"), c("geography_name","geography_id"))

########
# save #
########

write.csv(median_income_provincia, file = "median_income_provincia.csv")
write.csv(mean_income_provincia, file = "mean_income_provincia.csv")
write.csv(gini_income_provincia, file = "gini_income_provincia.csv")
write.csv(tidy_all_provincia, file = "tidy_all_provincia.csv")
