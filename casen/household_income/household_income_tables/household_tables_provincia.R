#uncomment lines 2-3 when running this file alone
#source("household_income/functions/normalization.R")
#source("household_income/process_household_income/process_household_income.R")
source("household_income/household_income_statistics_provincia/household_income_statistics_provincia.R")

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
rownames(median_income_provincia) <- c(seq(1:nrow(median_income_provincia)))

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
rownames(mean_income_provincia) <- c(seq(1:nrow(mean_income_provincia)))

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
rownames(gini_income_provincia) <- c(seq(1:nrow(gini_income_provincia)))

#########################
# join lb_median_income #
#########################

lb_median_income_provincia <- as.data.frame(unique(c(lb_median_1990_provincia$provincia, lb_median_2015_provincia$provincia)))
setnames(lb_median_income_provincia, colnames(lb_median_income_provincia), "provincia")

lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_1990_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_1992_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_1994_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_1996_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_1998_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2000_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2003_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2006_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2009_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2011_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2013_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2015_provincia, type = "left")

lb_median_income_provincia <- lb_median_income_provincia[order(lb_median_income_provincia$provincia),]
rownames(lb_median_income_provincia) <- c(seq(1:nrow(lb_median_income_provincia)))

#########################
# join ub_median_income #
#########################

ub_median_income_provincia <- as.data.frame(unique(c(ub_median_1990_provincia$provincia, ub_median_2015_provincia$provincia)))
setnames(ub_median_income_provincia, colnames(ub_median_income_provincia), "provincia")

ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_1990_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_1992_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_1994_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_1996_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_1998_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2000_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2003_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2006_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2009_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2011_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2013_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2015_provincia, type = "left")

ub_median_income_provincia <- ub_median_income_provincia[order(ub_median_income_provincia$provincia),]
rownames(ub_median_income_provincia) <- c(seq(1:nrow(ub_median_income_provincia)))

#########################
# join lb_mean_income #
#########################

lb_mean_income_provincia <- as.data.frame(unique(c(lb_mean_1990_provincia$provincia, lb_mean_2015_provincia$provincia)))
setnames(lb_mean_income_provincia, colnames(lb_mean_income_provincia), "provincia")

lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_1990_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_1992_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_1994_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_1996_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_1998_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2000_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2003_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2006_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2009_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2011_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2013_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2015_provincia, type = "left")

lb_mean_income_provincia <- lb_mean_income_provincia[order(lb_mean_income_provincia$provincia),]
rownames(lb_mean_income_provincia) <- c(seq(1:nrow(lb_mean_income_provincia)))

#########################
# join ub_mean_income #
#########################

ub_mean_income_provincia <- as.data.frame(unique(c(ub_mean_1990_provincia$provincia, ub_mean_2015_provincia$provincia)))
setnames(ub_mean_income_provincia, colnames(ub_mean_income_provincia), "provincia")

ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_1990_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_1992_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_1994_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_1996_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_1998_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2000_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2003_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2006_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2009_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2011_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2013_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2015_provincia, type = "left")

ub_mean_income_provincia <- ub_mean_income_provincia[order(ub_mean_income_provincia$provincia),]
rownames(ub_mean_income_provincia) <- c(seq(1:nrow(ub_mean_income_provincia)))

#########################
# join lb_gini_income #
#########################

lb_gini_income_provincia <- as.data.frame(unique(c(lb_gini_1990_provincia$provincia, lb_gini_2015_provincia$provincia)))
setnames(lb_gini_income_provincia, colnames(lb_gini_income_provincia), "provincia")

lb_gini_income_provincia <- join(lb_gini_income_provincia, lb_gini_1990_provincia, type = "left")
lb_gini_income_provincia <- join(lb_gini_income_provincia, lb_gini_1992_provincia, type = "left")
lb_gini_income_provincia <- join(lb_gini_income_provincia, lb_gini_1994_provincia, type = "left")
lb_gini_income_provincia <- join(lb_gini_income_provincia, lb_gini_1996_provincia, type = "left")
lb_gini_income_provincia <- join(lb_gini_income_provincia, lb_gini_1998_provincia, type = "left")
lb_gini_income_provincia <- join(lb_gini_income_provincia, lb_gini_2000_provincia, type = "left")
lb_gini_income_provincia <- join(lb_gini_income_provincia, lb_gini_2003_provincia, type = "left")
lb_gini_income_provincia <- join(lb_gini_income_provincia, lb_gini_2006_provincia, type = "left")
lb_gini_income_provincia <- join(lb_gini_income_provincia, lb_gini_2009_provincia, type = "left")
lb_gini_income_provincia <- join(lb_gini_income_provincia, lb_gini_2011_provincia, type = "left")
lb_gini_income_provincia <- join(lb_gini_income_provincia, lb_gini_2013_provincia, type = "left")
lb_gini_income_provincia <- join(lb_gini_income_provincia, lb_gini_2015_provincia, type = "left")

lb_gini_income_provincia <- lb_gini_income_provincia[order(lb_gini_income_provincia$provincia),]
rownames(lb_gini_income_provincia) <- c(seq(1:nrow(lb_gini_income_provincia)))

#########################
# join ub_gini_income #
#########################

ub_gini_income_provincia <- as.data.frame(unique(c(ub_gini_1990_provincia$provincia, ub_gini_2015_provincia$provincia)))
setnames(ub_gini_income_provincia, colnames(ub_gini_income_provincia), "provincia")

ub_gini_income_provincia <- join(ub_gini_income_provincia, ub_gini_1990_provincia, type = "left")
ub_gini_income_provincia <- join(ub_gini_income_provincia, ub_gini_1992_provincia, type = "left")
ub_gini_income_provincia <- join(ub_gini_income_provincia, ub_gini_1994_provincia, type = "left")
ub_gini_income_provincia <- join(ub_gini_income_provincia, ub_gini_1996_provincia, type = "left")
ub_gini_income_provincia <- join(ub_gini_income_provincia, ub_gini_1998_provincia, type = "left")
ub_gini_income_provincia <- join(ub_gini_income_provincia, ub_gini_2000_provincia, type = "left")
ub_gini_income_provincia <- join(ub_gini_income_provincia, ub_gini_2003_provincia, type = "left")
ub_gini_income_provincia <- join(ub_gini_income_provincia, ub_gini_2006_provincia, type = "left")
ub_gini_income_provincia <- join(ub_gini_income_provincia, ub_gini_2009_provincia, type = "left")
ub_gini_income_provincia <- join(ub_gini_income_provincia, ub_gini_2011_provincia, type = "left")
ub_gini_income_provincia <- join(ub_gini_income_provincia, ub_gini_2013_provincia, type = "left")
ub_gini_income_provincia <- join(ub_gini_income_provincia, ub_gini_2015_provincia, type = "left")

ub_gini_income_provincia <- ub_gini_income_provincia[order(ub_gini_income_provincia$provincia),]
rownames(ub_gini_income_provincia) <- c(seq(1:nrow(ub_gini_income_provincia)))

###############
# tidy median #
###############

tidy_median_income_provincia <- median_income_provincia %>% gather(year, median_income, `1990`:`2015`)
tidy_lb_median_income_provincia <- lb_median_income_provincia %>% gather(year, lb_median_income, `1990`:`2015`)
tidy_ub_median_income_provincia <- ub_median_income_provincia %>% gather(year, ub_median_income, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_mean_income_provincia <- mean_income_provincia %>% gather(year, mean_income, `1990`:`2015`)
tidy_lb_mean_income_provincia <- lb_mean_income_provincia %>% gather(year, lb_mean_income, `1990`:`2015`)
tidy_ub_mean_income_provincia <- ub_mean_income_provincia %>% gather(year, ub_mean_income, `1990`:`2015`)

#############
# tidy gini #
#############

tidy_gini_income_provincia <- gini_income_provincia %>% gather(year, gini_income, `1990`:`2015`)
tidy_lb_gini_income_provincia <- lb_gini_income_provincia %>% gather(year, lb_gini_income, `1990`:`2015`)
tidy_ub_gini_income_provincia <- ub_gini_income_provincia %>% gather(year, ub_gini_income, `1990`:`2015`)

############
# join all #
############

tidy_all_provincia <- join(tidy_mean_income_provincia, tidy_median_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_gini_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_lb_mean_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_ub_mean_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_lb_median_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_ub_median_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_lb_gini_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_ub_gini_income_provincia, by = c("provincia","year"))

setnames(tidy_all_provincia, "provincia", "provincia_name")
tidy_all_provincia <- join(tidy_all_provincia, provincia_codes_pacha[,c("provincia_name","provincia_pacha_id")], by = "provincia_name")
tidy_all_provincia$geography_level <- "provincia"
tidy_all_provincia <- move_col(tidy_all_provincia, c("geography_level"=1, "provincia_name"=2, "provincia_pacha_id"=3, "year"=4))
# please check that the geography_id starts with "p" ... p is for Pach\'a
setnames(tidy_all_provincia, c("provincia_name","provincia_pacha_id"), c("geography_name","geography_id"))

tidy_all_provincia$geography_level <- as.character(tidy_all_provincia$geography_level)
tidy_all_provincia$geography_name <- as.character(tidy_all_provincia$geography_name)
tidy_all_provincia$geography_id <- as.character(tidy_all_provincia$geography_id)

tidy_all_provincia$ci_mean_income <- paste0("[",tidy_all_provincia$lb_mean_income,", ",tidy_all_provincia$ub_mean_income,"]")
tidy_all_provincia$ci_median_income <- paste0("[",tidy_all_provincia$lb_median_income,", ",tidy_all_provincia$ub_median_income,"]")
tidy_all_provincia$ci_gini_income <- paste0("[",tidy_all_provincia$lb_gini_income,", ",tidy_all_provincia$ub_gini_income,"]")

tidy_all_provincia <- tidy_all_provincia[, !(colnames(tidy_all_provincia) %in% c("lb_mean_income","ub_mean_income","lb_median_income","ub_median_income",
                                                                                 "lb_gini_income","ub_gini_income"))]

tidy_all_provincia <- tidy_all_provincia[complete.cases(tidy_all_provincia),]

########
# save #
########

write.csv(median_income_provincia, file = "household_income/csv_intermediate_files/household_income_median_income_provincia.csv")
write.csv(mean_income_provincia, file = "household_income/csv_intermediate_files/household_income_mean_income_provincia.csv")
write.csv(gini_income_provincia, file = "household_income/csv_intermediate_files/household_income_gini_income_provincia.csv")
write.csv(tidy_all_provincia, file = "household_income/csv_final_files/household_income_tidy_all_provincia.csv")

##################
# free up memory #
##################

rm(median_income_provincia, mean_income_provincia, gini_income_provincia,
   lb_median_income_provincia, lb_mean_income_provincia, lb_gini_income_provincia,
   ub_median_income_provincia, ub_mean_income_provincia, ub_gini_income_provincia)

rm(tidy_median_income_provincia, tidy_mean_income_provincia, tidy_gini_income_provincia,
   tidy_lb_median_income_provincia, tidy_lb_mean_income_provincia, tidy_lb_gini_income_provincia,
   tidy_ub_median_income_provincia, tidy_ub_mean_income_provincia, tidy_ub_gini_income_provincia)

rm(median_1990_provincia, median_1992_provincia, median_1994_provincia, median_1996_provincia, median_1998_provincia,
   median_2000_provincia, median_2003_provincia, median_2006_provincia, median_2009_provincia, 
   median_2011_provincia, median_2013_provincia, median_2015_provincia)

rm(mean_1990_provincia, mean_1992_provincia, mean_1994_provincia, mean_1996_provincia, mean_1998_provincia,
   mean_2000_provincia, mean_2003_provincia, mean_2006_provincia, mean_2009_provincia, 
   mean_2011_provincia, mean_2013_provincia, mean_2015_provincia)

rm(gini_1990_provincia, gini_1992_provincia, gini_1994_provincia, gini_1996_provincia, gini_1998_provincia,
   gini_2000_provincia, gini_2003_provincia, gini_2006_provincia, gini_2009_provincia, 
   gini_2011_provincia, gini_2013_provincia, gini_2015_provincia)

rm(lb_median_1990_provincia, lb_median_1992_provincia, lb_median_1994_provincia, lb_median_1996_provincia, lb_median_1998_provincia,
   lb_median_2000_provincia, lb_median_2003_provincia, lb_median_2006_provincia, lb_median_2009_provincia, 
   lb_median_2011_provincia, lb_median_2013_provincia, lb_median_2015_provincia)

rm(ub_median_1990_provincia, ub_median_1992_provincia, ub_median_1994_provincia, ub_median_1996_provincia, ub_median_1998_provincia,
   ub_median_2000_provincia, ub_median_2003_provincia, ub_median_2006_provincia, ub_median_2009_provincia, 
   ub_median_2011_provincia, ub_median_2013_provincia, ub_median_2015_provincia)

rm(lb_mean_1990_provincia, lb_mean_1992_provincia, lb_mean_1994_provincia, lb_mean_1996_provincia, lb_mean_1998_provincia,
   lb_mean_2000_provincia, lb_mean_2003_provincia, lb_mean_2006_provincia, lb_mean_2009_provincia, 
   lb_mean_2011_provincia, lb_mean_2013_provincia, lb_mean_2015_provincia)

rm(ub_mean_1990_provincia, ub_mean_1992_provincia, ub_mean_1994_provincia, ub_mean_1996_provincia, ub_mean_1998_provincia,
   ub_mean_2000_provincia, ub_mean_2003_provincia, ub_mean_2006_provincia, ub_mean_2009_provincia, 
   ub_mean_2011_provincia, ub_mean_2013_provincia, ub_mean_2015_provincia)

rm(lb_gini_1990_provincia, lb_gini_1992_provincia, lb_gini_1994_provincia, lb_gini_1996_provincia, lb_gini_1998_provincia,
   lb_gini_2000_provincia, lb_gini_2003_provincia, lb_gini_2006_provincia, lb_gini_2009_provincia, 
   lb_gini_2011_provincia, lb_gini_2013_provincia, lb_gini_2015_provincia)

rm(ub_gini_1990_provincia, ub_gini_1992_provincia, ub_gini_1994_provincia, ub_gini_1996_provincia, ub_gini_1998_provincia,
   ub_gini_2000_provincia, ub_gini_2003_provincia, ub_gini_2006_provincia, ub_gini_2009_provincia, 
   ub_gini_2011_provincia, ub_gini_2013_provincia, ub_gini_2015_provincia)
