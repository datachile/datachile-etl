#uncomment lines 2-3 when running this file alone
#source("household_income/functions/normalization.R")
#source("household_income/process_household_income/process_household_income.R")
source("household_income/household_statistics_comuna/household_statistics_comuna.R")

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
rownames(median_income_comuna) <- c(seq(1:nrow(median_income_comuna)))

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
rownames(mean_income_comuna) <- c(seq(1:nrow(mean_income_comuna)))

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
rownames(gini_income_comuna) <- c(seq(1:nrow(gini_income_comuna)))

#########################
# join lb_median_income #
#########################

lb_median_income_comuna <- as.data.frame(unique(c(lb_median_1990_comuna$comuna, lb_median_2015_comuna$comuna)))
setnames(lb_median_income_comuna, colnames(lb_median_income_comuna), "comuna")

lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_1990_comuna, type = "left")
lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_1992_comuna, type = "left")
lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_1994_comuna, type = "left")
lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_1996_comuna, type = "left")
lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_1998_comuna, type = "left")
lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_2000_comuna, type = "left")
lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_2003_comuna, type = "left")
lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_2006_comuna, type = "left")
lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_2009_comuna, type = "left")
lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_2011_comuna, type = "left")
lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_2013_comuna, type = "left")
lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_2015_comuna, type = "left")

lb_median_income_comuna <- lb_median_income_comuna[order(gini_income_comuna$comuna),]
rownames(lb_median_income_comuna) <- c(seq(1:nrow(lb_median_income_comuna)))

#########################
# join ub_median_income #
#########################

ub_median_income_comuna <- as.data.frame(unique(c(ub_median_1990_comuna$comuna, ub_median_2015_comuna$comuna)))
setnames(ub_median_income_comuna, colnames(ub_median_income_comuna), "comuna")

ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_1990_comuna, type = "left")
ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_1992_comuna, type = "left")
ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_1994_comuna, type = "left")
ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_1996_comuna, type = "left")
ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_1998_comuna, type = "left")
ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_2000_comuna, type = "left")
ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_2003_comuna, type = "left")
ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_2006_comuna, type = "left")
ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_2009_comuna, type = "left")
ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_2011_comuna, type = "left")
ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_2013_comuna, type = "left")
ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_2015_comuna, type = "left")

ub_median_income_comuna <- ub_median_income_comuna[order(gini_income_comuna$comuna),]
rownames(ub_median_income_comuna) <- c(seq(1:nrow(ub_median_income_comuna)))

#########################
# join lb_mean_income #
#########################

lb_mean_income_comuna <- as.data.frame(unique(c(lb_mean_1990_comuna$comuna, lb_mean_2015_comuna$comuna)))
setnames(lb_mean_income_comuna, colnames(lb_mean_income_comuna), "comuna")

lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_1990_comuna, type = "left")
lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_1992_comuna, type = "left")
lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_1994_comuna, type = "left")
lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_1996_comuna, type = "left")
lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_1998_comuna, type = "left")
lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_2000_comuna, type = "left")
lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_2003_comuna, type = "left")
lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_2006_comuna, type = "left")
lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_2009_comuna, type = "left")
lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_2011_comuna, type = "left")
lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_2013_comuna, type = "left")
lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_2015_comuna, type = "left")

lb_mean_income_comuna <- lb_mean_income_comuna[order(gini_income_comuna$comuna),]
rownames(lb_mean_income_comuna) <- c(seq(1:nrow(lb_mean_income_comuna)))

#########################
# join ub_mean_income #
#########################

ub_mean_income_comuna <- as.data.frame(unique(c(ub_mean_1990_comuna$comuna, ub_mean_2015_comuna$comuna)))
setnames(ub_mean_income_comuna, colnames(ub_mean_income_comuna), "comuna")

ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_1990_comuna, type = "left")
ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_1992_comuna, type = "left")
ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_1994_comuna, type = "left")
ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_1996_comuna, type = "left")
ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_1998_comuna, type = "left")
ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_2000_comuna, type = "left")
ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_2003_comuna, type = "left")
ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_2006_comuna, type = "left")
ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_2009_comuna, type = "left")
ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_2011_comuna, type = "left")
ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_2013_comuna, type = "left")
ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_2015_comuna, type = "left")

ub_mean_income_comuna <- ub_mean_income_comuna[order(gini_income_comuna$comuna),]
rownames(ub_mean_income_comuna) <- c(seq(1:nrow(ub_mean_income_comuna)))

#########################
# join lb_gini_income #
#########################

lb_gini_income_comuna <- as.data.frame(unique(c(lb_gini_1990_comuna$comuna, lb_gini_2015_comuna$comuna)))
setnames(lb_gini_income_comuna, colnames(lb_gini_income_comuna), "comuna")

lb_gini_income_comuna <- join(lb_gini_income_comuna, lb_gini_1990_comuna, type = "left")
lb_gini_income_comuna <- join(lb_gini_income_comuna, lb_gini_1992_comuna, type = "left")
lb_gini_income_comuna <- join(lb_gini_income_comuna, lb_gini_1994_comuna, type = "left")
lb_gini_income_comuna <- join(lb_gini_income_comuna, lb_gini_1996_comuna, type = "left")
lb_gini_income_comuna <- join(lb_gini_income_comuna, lb_gini_1998_comuna, type = "left")
lb_gini_income_comuna <- join(lb_gini_income_comuna, lb_gini_2000_comuna, type = "left")
lb_gini_income_comuna <- join(lb_gini_income_comuna, lb_gini_2003_comuna, type = "left")
lb_gini_income_comuna <- join(lb_gini_income_comuna, lb_gini_2006_comuna, type = "left")
lb_gini_income_comuna <- join(lb_gini_income_comuna, lb_gini_2009_comuna, type = "left")
lb_gini_income_comuna <- join(lb_gini_income_comuna, lb_gini_2011_comuna, type = "left")
lb_gini_income_comuna <- join(lb_gini_income_comuna, lb_gini_2013_comuna, type = "left")
lb_gini_income_comuna <- join(lb_gini_income_comuna, lb_gini_2015_comuna, type = "left")

lb_gini_income_comuna <- lb_gini_income_comuna[order(gini_income_comuna$comuna),]
rownames(lb_gini_income_comuna) <- c(seq(1:nrow(lb_gini_income_comuna)))

#########################
# join ub_gini_income #
#########################

ub_gini_income_comuna <- as.data.frame(unique(c(ub_gini_1990_comuna$comuna, ub_gini_2015_comuna$comuna)))
setnames(ub_gini_income_comuna, colnames(ub_gini_income_comuna), "comuna")

ub_gini_income_comuna <- join(ub_gini_income_comuna, ub_gini_1990_comuna, type = "left")
ub_gini_income_comuna <- join(ub_gini_income_comuna, ub_gini_1992_comuna, type = "left")
ub_gini_income_comuna <- join(ub_gini_income_comuna, ub_gini_1994_comuna, type = "left")
ub_gini_income_comuna <- join(ub_gini_income_comuna, ub_gini_1996_comuna, type = "left")
ub_gini_income_comuna <- join(ub_gini_income_comuna, ub_gini_1998_comuna, type = "left")
ub_gini_income_comuna <- join(ub_gini_income_comuna, ub_gini_2000_comuna, type = "left")
ub_gini_income_comuna <- join(ub_gini_income_comuna, ub_gini_2003_comuna, type = "left")
ub_gini_income_comuna <- join(ub_gini_income_comuna, ub_gini_2006_comuna, type = "left")
ub_gini_income_comuna <- join(ub_gini_income_comuna, ub_gini_2009_comuna, type = "left")
ub_gini_income_comuna <- join(ub_gini_income_comuna, ub_gini_2011_comuna, type = "left")
ub_gini_income_comuna <- join(ub_gini_income_comuna, ub_gini_2013_comuna, type = "left")
ub_gini_income_comuna <- join(ub_gini_income_comuna, ub_gini_2015_comuna, type = "left")

ub_gini_income_comuna <- ub_gini_income_comuna[order(gini_income_comuna$comuna),]
rownames(ub_gini_income_comuna) <- c(seq(1:nrow(ub_gini_income_comuna)))

###############
# tidy median #
###############

tidy_median_income_comuna <- median_income_comuna %>% gather(year, median_income, `1990`:`2015`)
tidy_lb_median_income_comuna <- lb_median_income_comuna %>% gather(year, lb_median_income, `1990`:`2015`)
tidy_ub_median_income_comuna <- ub_median_income_comuna %>% gather(year, ub_median_income, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_mean_income_comuna <- mean_income_comuna %>% gather(year, mean_income, `1990`:`2015`)
tidy_lb_mean_income_comuna <- lb_mean_income_comuna %>% gather(year, lb_mean_income, `1990`:`2015`)
tidy_ub_mean_income_comuna <- ub_mean_income_comuna %>% gather(year, ub_mean_income, `1990`:`2015`)

#############
# tidy gini #
#############

tidy_gini_income_comuna <- gini_income_comuna %>% gather(year, gini_income, `1990`:`2015`)
tidy_lb_gini_income_comuna <- lb_gini_income_comuna %>% gather(year, lb_gini_income, `1990`:`2015`)
tidy_ub_gini_income_comuna <- ub_gini_income_comuna %>% gather(year, ub_gini_income, `1990`:`2015`)

############
# join all #
############

tidy_all_comuna <- join(tidy_mean_income_comuna, tidy_median_income_comuna, by = c("comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_gini_income_comuna, by = c("comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_lb_mean_income_comuna, by = c("comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_ub_mean_income_comuna, by = c("comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_lb_median_income_comuna, by = c("comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_ub_median_income_comuna, by = c("comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_lb_gini_income_comuna, by = c("comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_ub_gini_income_comuna, by = c("comuna","year"))

setnames(tidy_all_comuna, "comuna", "comuna_name")
tidy_all_comuna <- join(tidy_all_comuna, region_codes_datachile[,c("comuna_name","comuna_datachile_id")], by = "comuna_name")
tidy_all_comuna$geography_level <- "comuna"
tidy_all_comuna <- move_col(tidy_all_comuna, c("geography_level"=1, "comuna_name"=2, "comuna_datachile_id"=3, "year"=4))
setnames(tidy_all_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))

tidy_all_comuna$geography_level <- as.character(tidy_all_comuna$geography_level)
tidy_all_comuna$geography_name <- as.character(tidy_all_comuna$geography_name)
tidy_all_comuna$geography_id <- as.character(tidy_all_comuna$geography_id)

tidy_all_comuna$ci_mean_income <- paste0("[",tidy_all_comuna$lb_mean_income,", ",tidy_all_comuna$ub_mean_income,"]")
tidy_all_comuna$ci_median_income <- paste0("[",tidy_all_comuna$lb_median_income,", ",tidy_all_comuna$ub_median_income,"]")
tidy_all_comuna$ci_gini_income <- paste0("[",tidy_all_comuna$lb_gini_income,", ",tidy_all_comuna$ub_gini_income,"]")

tidy_all_comuna <- tidy_all_comuna[, !(colnames(tidy_all_comuna) %in% c("lb_mean_income","ub_mean_income","lb_median_income","ub_median_income",
                                                                        "lb_gini_income","ub_gini_income"))]

tidy_all_comuna <- tidy_all_comuna[complete.cases(tidy_all_comuna),]

########
# save #
########

write.csv(median_income_comuna, file = "household_income/csv_intermediate_files/median_income_comuna.csv")
write.csv(mean_income_comuna, file = "household_income/csv_intermediate_files/mean_income_comuna.csv")
write.csv(gini_income_comuna, file = "household_income/csv_intermediate_files/gini_income_comuna.csv")
write.csv(tidy_all_comuna, file = "household_income/csv_final_files/tidy_all_comuna.csv")

##################
# free up memory #
##################

rm(median_income_comuna, mean_income_comuna, gini_income_comuna,
   lb_median_income_comuna, lb_mean_income_comuna, lb_gini_income_comuna,
   ub_median_income_comuna, ub_mean_income_comuna, ub_gini_income_comuna)

rm(tidy_median_income_comuna, tidy_mean_income_comuna, tidy_gini_income_comuna,
   tidy_lb_median_income_comuna, tidy_lb_mean_income_comuna, tidy_lb_gini_income_comuna,
   tidy_ub_median_income_comuna, tidy_ub_mean_income_comuna, tidy_ub_gini_income_comuna)

rm(median_1990_comuna, median_1992_comuna, median_1994_comuna, median_1996_comuna, median_1998_comuna,
   median_2000_comuna, median_2003_comuna, median_2006_comuna, median_2009_comuna, 
   median_2011_comuna, median_2013_comuna, median_2015_comuna)

rm(mean_1990_comuna, mean_1992_comuna, mean_1994_comuna, mean_1996_comuna, mean_1998_comuna,
   mean_2000_comuna, mean_2003_comuna, mean_2006_comuna, mean_2009_comuna, 
   mean_2011_comuna, mean_2013_comuna, mean_2015_comuna)

rm(gini_1990_comuna, gini_1992_comuna, gini_1994_comuna, gini_1996_comuna, gini_1998_comuna,
   gini_2000_comuna, gini_2003_comuna, gini_2006_comuna, gini_2009_comuna, 
   gini_2011_comuna, gini_2013_comuna, gini_2015_comuna)

rm(lb_median_1990_comuna, lb_median_1992_comuna, lb_median_1994_comuna, lb_median_1996_comuna, lb_median_1998_comuna,
   lb_median_2000_comuna, lb_median_2003_comuna, lb_median_2006_comuna, lb_median_2009_comuna, 
   lb_median_2011_comuna, lb_median_2013_comuna, lb_median_2015_comuna)

rm(ub_median_1990_comuna, ub_median_1992_comuna, ub_median_1994_comuna, ub_median_1996_comuna, ub_median_1998_comuna,
   ub_median_2000_comuna, ub_median_2003_comuna, ub_median_2006_comuna, ub_median_2009_comuna, 
   ub_median_2011_comuna, ub_median_2013_comuna, ub_median_2015_comuna)

rm(lb_mean_1990_comuna, lb_mean_1992_comuna, lb_mean_1994_comuna, lb_mean_1996_comuna, lb_mean_1998_comuna,
   lb_mean_2000_comuna, lb_mean_2003_comuna, lb_mean_2006_comuna, lb_mean_2009_comuna, 
   lb_mean_2011_comuna, lb_mean_2013_comuna, lb_mean_2015_comuna)

rm(ub_mean_1990_comuna, ub_mean_1992_comuna, ub_mean_1994_comuna, ub_mean_1996_comuna, ub_mean_1998_comuna,
   ub_mean_2000_comuna, ub_mean_2003_comuna, ub_mean_2006_comuna, ub_mean_2009_comuna, 
   ub_mean_2011_comuna, ub_mean_2013_comuna, ub_mean_2015_comuna)

rm(lb_gini_1990_comuna, lb_gini_1992_comuna, lb_gini_1994_comuna, lb_gini_1996_comuna, lb_gini_1998_comuna,
   lb_gini_2000_comuna, lb_gini_2003_comuna, lb_gini_2006_comuna, lb_gini_2009_comuna, 
   lb_gini_2011_comuna, lb_gini_2013_comuna, lb_gini_2015_comuna)

rm(ub_gini_1990_comuna, ub_gini_1992_comuna, ub_gini_1994_comuna, ub_gini_1996_comuna, ub_gini_1998_comuna,
   ub_gini_2000_comuna, ub_gini_2003_comuna, ub_gini_2006_comuna, ub_gini_2009_comuna, 
   ub_gini_2011_comuna, ub_gini_2013_comuna, ub_gini_2015_comuna)
