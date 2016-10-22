source("process_household_income.R")
source("household_statistics_region.R")
source("household_statistics_provincia.R")
source("household_statistics_comuna.R")

###########################
# names for normalization #
###########################

normalization <- read.csv("dim_comunas.csv")
region_codes <- normalization
region_codes <- region_codes[,c("region_name","region_id")]
region_codes <- unique(region_codes)
region_codes <- region_codes[order(region_codes$region_id),]
region_codes <- as.data.frame(lapply(region_codes, function(x) gsub("Region Metropolitana Santiago", "Metropolitana", x)))
region_codes <- as.data.frame(lapply(region_codes, function(x) gsub("Arica ha Parinacota", "Arica y Parinacota", x)))
rownames(region_codes) <- c(seq(1:nrow(region_codes)))

###############
# join median #
###############

median_income <- as.data.frame(unique(c(median_1990_comuna$comuna, median_2015_comuna$comuna)))
setnames(median_income, colnames(median_income), "comuna")

median_income <- join(median_income, median_1990_comuna, type = "left")
median_income <- join(median_income, median_1992_comuna, type = "left")
median_income <- join(median_income, median_1994_comuna, type = "left")
median_income <- join(median_income, median_1996_comuna, type = "left")
median_income <- join(median_income, median_1998_comuna, type = "left")
median_income <- join(median_income, median_2000_comuna, type = "left")
median_income <- join(median_income, median_2003_comuna, type = "left")
median_income <- join(median_income, median_2006_comuna, type = "left")
median_income <- join(median_income, median_2009_comuna, type = "left")
median_income <- join(median_income, median_2011_comuna, type = "left")
median_income <- join(median_income, median_2013_comuna, type = "left")
median_income <- join(median_income, median_2015_comuna, type = "left")

median_income <- join(median_income, provincias_2015[,c("region","provincia","comuna")], type = "left")
median_income <- move_col(median_income, c("region"=1,"provincia"=2, "comuna"=3))

median_income <- median_income[order(median_income$region, median_income$provincia, median_income$comuna),]
median_income <- rbind(median_income[!median_income$comuna %in% c("Pa\u00eds"), ], median_income[median_income$comuna %in% c("Pa\u00eds"), ])
rownames(median_income) <- c(seq(1:nrow(median_income)))
median_income[,-c(1,2,3)] <- lapply(median_income[,-c(1,2,3)], function (x) as.numeric(x))
median_income$region <- ifelse(median_income$comuna == "Pa\u00eds", "Pa\u00eds", median_income$region)
median_income$provincia <- ifelse(median_income$comuna == "Pa\u00eds", "Pa\u00eds", median_income$provincia)

#############
# join mean #
#############

mean_income <- as.data.frame(unique(c(mean_1990_comuna$comuna, mean_2015_comuna$comuna)))
setnames(mean_income, colnames(mean_income), "comuna")

mean_income <- join(mean_income, mean_1990_comuna, type = "left")
mean_income <- join(mean_income, mean_1992_comuna, type = "left")
mean_income <- join(mean_income, mean_1994_comuna, type = "left")
mean_income <- join(mean_income, mean_1996_comuna, type = "left")
mean_income <- join(mean_income, mean_1998_comuna, type = "left")
mean_income <- join(mean_income, mean_2000_comuna, type = "left")
mean_income <- join(mean_income, mean_2003_comuna, type = "left")
mean_income <- join(mean_income, mean_2006_comuna, type = "left")
mean_income <- join(mean_income, mean_2009_comuna, type = "left")
mean_income <- join(mean_income, mean_2011_comuna, type = "left")
mean_income <- join(mean_income, mean_2013_comuna, type = "left")
mean_income <- join(mean_income, mean_2015_comuna, type = "left")

mean_income <- join(mean_income, provincias_2015[,c("region","provincia","comuna")], type = "left")
mean_income <- move_col(mean_income, c("region"=1,"provincia"=2, "comuna"=3))

mean_income <- mean_income[order(mean_income$region, mean_income$provincia, mean_income$comuna),]
mean_income <- rbind(mean_income[!mean_income$comuna %in% c("Pa\u00eds"), ], mean_income[mean_income$comuna %in% c("Pa\u00eds"), ])
rownames(mean_income) <- c(seq(1:nrow(mean_income)))
mean_income[,-c(1,2,3)] <- lapply(mean_income[,-c(1,2,3)], function (x) as.numeric(x))
mean_income$region <- ifelse(mean_income$comuna == "Pa\u00eds", "Pa\u00eds", mean_income$region)
mean_income$provincia <- ifelse(mean_income$comuna == "Pa\u00eds", "Pa\u00eds", mean_income$provincia)

#############
# join gini #
#############

gini_income <- as.data.frame(unique(c(gini_1990_comuna$comuna, gini_2015_comuna$comuna)))
setnames(gini_income, colnames(gini_income), "comuna")

gini_income <- join(gini_income, gini_1990_comuna, type = "left")
gini_income <- join(gini_income, gini_1992_comuna, type = "left")
gini_income <- join(gini_income, gini_1994_comuna, type = "left")
gini_income <- join(gini_income, gini_1996_comuna, type = "left")
gini_income <- join(gini_income, gini_1998_comuna, type = "left")
gini_income <- join(gini_income, gini_2000_comuna, type = "left")
gini_income <- join(gini_income, gini_2003_comuna, type = "left")
gini_income <- join(gini_income, gini_2006_comuna, type = "left")
gini_income <- join(gini_income, gini_2009_comuna, type = "left")
gini_income <- join(gini_income, gini_2011_comuna, type = "left")
gini_income <- join(gini_income, gini_2013_comuna, type = "left")
gini_income <- join(gini_income, gini_2015_comuna, type = "left")

gini_income <- join(gini_income, provincias_2015[,c("region","provincia","comuna")], type = "left")
gini_income <- move_col(gini_income, c("region"=1,"provincia"=2, "comuna"=3))

gini_income <- gini_income[order(gini_income$region, gini_income$provincia, gini_income$comuna),]
gini_income <- rbind(gini_income[!gini_income$comuna %in% c("Pa\u00eds"), ], gini_income[gini_income$comuna %in% c("Pa\u00eds"), ])
rownames(gini_income) <- c(seq(1:nrow(gini_income)))
gini_income[,-c(1,2,3)] <- lapply(gini_income[,-c(1,2,3)], function (x) as.numeric(x))
gini_income$region <- ifelse(gini_income$comuna == "Pa\u00eds", "Pa\u00eds", gini_income$region)
gini_income$provincia <- ifelse(gini_income$comuna == "Pa\u00eds", "Pa\u00eds", gini_income$provincia)

###############
# tidy median #
###############

tidy_median_income <- median_income %>% gather(year, median, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_mean_income <- mean_income %>% gather(year, mean, `1990`:`2015`)

#############
# tidy gini #
#############

tidy_gini_income <- gini_income %>% gather(year, gini, `1990`:`2015`)

############
# join all #
############

tidy_all <- join(tidy_mean_income, tidy_median_income, by = c("region","provincia","comuna","year"))
tidy_all <- join(tidy_all, tidy_gini_income, by = c("region","provincia","comuna","year"))

########
# save #
########

write.csv(median_income, file = "median_income.csv")
write.csv(mean_income, file = "mean_income.csv")
write.csv(gini_income, file = "gini.csv")

write.csv(tidy_all, file = "tidy_all.csv")