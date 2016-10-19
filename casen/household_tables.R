source("household_statistics.R")

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

median_income <- as.data.frame(unique(c(median_1990$region, median_2015$region)))
setnames(median_income, colnames(median_income), "region")

median_income <- join(median_income, median_1990, type = "left")
median_income <- join(median_income, median_1992, type = "left")
median_income <- join(median_income, median_1994, type = "left")
median_income <- join(median_income, median_1996, type = "left")
median_income <- join(median_income, median_1998, type = "left")
median_income <- join(median_income, median_2000, type = "left")
median_income <- join(median_income, median_2003, type = "left")
median_income <- join(median_income, median_2006, type = "left")
median_income <- join(median_income, median_2009, type = "left")
median_income <- join(median_income, median_2011, type = "left")
median_income <- join(median_income, median_2013, type = "left")
median_income <- join(median_income, median_2015, type = "left")

median_income <- rbind(median_income[!median_income$region %in% c("Pa\u00eds"), ], median_income[median_income$region %in% c("Pa\u00eds"), ])
rownames(median_income) <- c(seq(1:nrow(median_income)))
median_income[,-1] <- lapply(median_income[,-1], function (x) as.numeric(x))

#############
# join mean #
#############

mean_income <- as.data.frame(unique(c(mean_1990$region, mean_2015$region)))
setnames(mean_income, colnames(mean_income), "region")

mean_income <- join(mean_income, mean_1990, type = "left")
mean_income <- join(mean_income, mean_1992, type = "left")
mean_income <- join(mean_income, mean_1994, type = "left")
mean_income <- join(mean_income, mean_1996, type = "left")
mean_income <- join(mean_income, mean_1998, type = "left")
mean_income <- join(mean_income, mean_2000, type = "left")
mean_income <- join(mean_income, mean_2003, type = "left")
mean_income <- join(mean_income, mean_2006, type = "left")
mean_income <- join(mean_income, mean_2009, type = "left")
mean_income <- join(mean_income, mean_2011, type = "left")
mean_income <- join(mean_income, mean_2013, type = "left")
mean_income <- join(mean_income, mean_2015, type = "left")

mean_income <- rbind(mean_income[!mean_income$region %in% c("Pa\u00eds"), ], mean_income[mean_income$region %in% c("Pa\u00eds"), ])
rownames(mean_income) <- c(seq(1:nrow(mean_income)))
mean_income[,-1] <- lapply(mean_income[,-1], function (x) as.numeric(x))

#############
# join gini #
#############

gini <- as.data.frame(unique(c(gini_1990$region, gini_2015$region)))
setnames(gini, colnames(gini), "region")

gini <- join(gini, gini_1990, type = "left")
gini <- join(gini, gini_1992, type = "left")
gini <- join(gini, gini_1994, type = "left")
gini <- join(gini, gini_1996, type = "left")
gini <- join(gini, gini_1998, type = "left")
gini <- join(gini, gini_2000, type = "left")
gini <- join(gini, gini_2003, type = "left")
gini <- join(gini, gini_2006, type = "left")
gini <- join(gini, gini_2009, type = "left")
gini <- join(gini, gini_2011, type = "left")
gini <- join(gini, gini_2013, type = "left")
gini <- join(gini, gini_2015, type = "left")

gini <- rbind(gini[!gini$region %in% c("Pa\u00eds"), ], gini[gini$region %in% c("Pa\u00eds"), ])
rownames(gini) <- c(seq(1:nrow(gini)))
gini[,-1] <- lapply(gini[,-1], function (x) as.numeric(x))

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

tidy_gini_income <- gini %>% gather(year, gini, `1990`:`2015`)

############
# join all #
############

tidy_all <- join(tidy_mean_income, tidy_median_income, by = c("region", "year"))
tidy_all <- join(tidy_all, tidy_gini_income, by = c("region", "year"))
setnames(tidy_all, "region", "region_name")
tidy_all <- join(tidy_all, region_codes, type = "left")
tidy_all <- tidy_all[,c("region_name","region_id","year","mean","median","gini")]
tidy_all <- tidy_all[order(tidy_all$region_id),]

########
# save #
########

write.csv(median_income, file = "median_income.csv")
write.csv(mean_income, file = "mean_income.csv")
write.csv(gini, file = "gini.csv")

write.csv(tidy_all, file = "tidy_all.csv")