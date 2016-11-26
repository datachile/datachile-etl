#uncomment lines 2-3 when running this file alone
#source("household_income/functions/normalization.R")
#source("household_income/process_household_income/process_household_income.R")
source("household_income_with_weights/household_income_statistics_with_weights_provincia/household_income_statistics_with_weights_provincia.R")

########################
# join weighted_median #
########################

weighted_median_income_provincia <- as.data.frame(unique(c(weighted_median_1990_provincia$provincia, weighted_median_2015_provincia$provincia)))
setnames(weighted_median_income_provincia, colnames(weighted_median_income_provincia), "provincia")

weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_1990_provincia, type = "left")
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_1992_provincia, type = "left")
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_1994_provincia, type = "left")
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_1996_provincia, type = "left")
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_1998_provincia, type = "left")
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_2000_provincia, type = "left")
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_2003_provincia, type = "left")
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_2006_provincia, type = "left")
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_2009_provincia, type = "left")
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_2011_provincia, type = "left")
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_2013_provincia, type = "left")
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_2015_provincia, type = "left")

weighted_median_income_provincia <- weighted_median_income_provincia[order(weighted_median_income_provincia$provincia),]
rownames(weighted_median_income_provincia) <- c(seq(1:nrow(weighted_median_income_provincia)))

######################
# join weighted_mean #
######################

weighted_mean_income_provincia <- as.data.frame(unique(c(weighted_mean_1990_provincia$provincia, weighted_mean_2015_provincia$provincia)))
setnames(weighted_mean_income_provincia, colnames(weighted_mean_income_provincia), "provincia")

weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_1990_provincia, type = "left")
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_1992_provincia, type = "left")
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_1994_provincia, type = "left")
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_1996_provincia, type = "left")
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_1998_provincia, type = "left")
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_2000_provincia, type = "left")
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_2003_provincia, type = "left")
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_2006_provincia, type = "left")
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_2009_provincia, type = "left")
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_2011_provincia, type = "left")
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_2013_provincia, type = "left")
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_2015_provincia, type = "left")

weighted_mean_income_provincia <- weighted_mean_income_provincia[order(weighted_mean_income_provincia$provincia),]
rownames(weighted_mean_income_provincia) <- c(seq(1:nrow(weighted_mean_income_provincia)))

######################
# join weighted_gini #
######################

weighted_gini_income_provincia <- as.data.frame(unique(c(weighted_gini_1990_provincia$provincia, weighted_gini_2015_provincia$provincia)))
setnames(weighted_gini_income_provincia, colnames(weighted_gini_income_provincia), "provincia")

weighted_gini_income_provincia <- join(weighted_gini_income_provincia, weighted_gini_1990_provincia, type = "left")
weighted_gini_income_provincia <- join(weighted_gini_income_provincia, weighted_gini_1992_provincia, type = "left")
weighted_gini_income_provincia <- join(weighted_gini_income_provincia, weighted_gini_1994_provincia, type = "left")
weighted_gini_income_provincia <- join(weighted_gini_income_provincia, weighted_gini_1996_provincia, type = "left")
weighted_gini_income_provincia <- join(weighted_gini_income_provincia, weighted_gini_1998_provincia, type = "left")
weighted_gini_income_provincia <- join(weighted_gini_income_provincia, weighted_gini_2000_provincia, type = "left")
weighted_gini_income_provincia <- join(weighted_gini_income_provincia, weighted_gini_2003_provincia, type = "left")
weighted_gini_income_provincia <- join(weighted_gini_income_provincia, weighted_gini_2006_provincia, type = "left")
weighted_gini_income_provincia <- join(weighted_gini_income_provincia, weighted_gini_2009_provincia, type = "left")
weighted_gini_income_provincia <- join(weighted_gini_income_provincia, weighted_gini_2011_provincia, type = "left")
weighted_gini_income_provincia <- join(weighted_gini_income_provincia, weighted_gini_2013_provincia, type = "left")
weighted_gini_income_provincia <- join(weighted_gini_income_provincia, weighted_gini_2015_provincia, type = "left")

weighted_gini_income_provincia <- weighted_gini_income_provincia[order(weighted_gini_income_provincia$provincia),]
rownames(weighted_gini_income_provincia) <- c(seq(1:nrow(weighted_gini_income_provincia)))

##################################
# join lb_weighted_median_income #
##################################

lb_weighted_median_income_provincia <- as.data.frame(unique(c(lb_weighted_median_1990_provincia$provincia, lb_weighted_median_2015_provincia$provincia)))
setnames(lb_weighted_median_income_provincia, colnames(lb_weighted_median_income_provincia), "provincia")

lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_1990_provincia, type = "left")
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_1992_provincia, type = "left")
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_1994_provincia, type = "left")
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_1996_provincia, type = "left")
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_1998_provincia, type = "left")
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_2000_provincia, type = "left")
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_2003_provincia, type = "left")
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_2006_provincia, type = "left")
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_2009_provincia, type = "left")
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_2011_provincia, type = "left")
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_2013_provincia, type = "left")
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_2015_provincia, type = "left")

lb_weighted_median_income_provincia <- lb_weighted_median_income_provincia[order(lb_weighted_median_income_provincia$provincia),]
rownames(lb_weighted_median_income_provincia) <- c(seq(1:nrow(lb_weighted_median_income_provincia)))

##################################
# join ub_weighted_median_income #
##################################

ub_weighted_median_income_provincia <- as.data.frame(unique(c(ub_weighted_median_1990_provincia$provincia, ub_weighted_median_2015_provincia$provincia)))
setnames(ub_weighted_median_income_provincia, colnames(ub_weighted_median_income_provincia), "provincia")

ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_1990_provincia, type = "left")
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_1992_provincia, type = "left")
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_1994_provincia, type = "left")
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_1996_provincia, type = "left")
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_1998_provincia, type = "left")
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_2000_provincia, type = "left")
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_2003_provincia, type = "left")
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_2006_provincia, type = "left")
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_2009_provincia, type = "left")
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_2011_provincia, type = "left")
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_2013_provincia, type = "left")
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_2015_provincia, type = "left")

ub_weighted_median_income_provincia <- ub_weighted_median_income_provincia[order(ub_weighted_median_income_provincia$provincia),]
rownames(ub_weighted_median_income_provincia) <- c(seq(1:nrow(ub_weighted_median_income_provincia)))

################################
# join lb_weighted_mean_income #
################################

lb_weighted_mean_income_provincia <- as.data.frame(unique(c(lb_weighted_mean_1990_provincia$provincia, lb_weighted_mean_2015_provincia$provincia)))
setnames(lb_weighted_mean_income_provincia, colnames(lb_weighted_mean_income_provincia), "provincia")

lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_1990_provincia, type = "left")
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_1992_provincia, type = "left")
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_1994_provincia, type = "left")
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_1996_provincia, type = "left")
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_1998_provincia, type = "left")
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_2000_provincia, type = "left")
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_2003_provincia, type = "left")
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_2006_provincia, type = "left")
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_2009_provincia, type = "left")
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_2011_provincia, type = "left")
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_2013_provincia, type = "left")
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_2015_provincia, type = "left")

lb_weighted_mean_income_provincia <- lb_weighted_mean_income_provincia[order(lb_weighted_mean_income_provincia$provincia),]
rownames(lb_weighted_mean_income_provincia) <- c(seq(1:nrow(lb_weighted_mean_income_provincia)))

################################
# join ub_weighted_mean_income #
################################

ub_weighted_mean_income_provincia <- as.data.frame(unique(c(ub_weighted_mean_1990_provincia$provincia, ub_weighted_mean_2015_provincia$provincia)))
setnames(ub_weighted_mean_income_provincia, colnames(ub_weighted_mean_income_provincia), "provincia")

ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_1990_provincia, type = "left")
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_1992_provincia, type = "left")
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_1994_provincia, type = "left")
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_1996_provincia, type = "left")
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_1998_provincia, type = "left")
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_2000_provincia, type = "left")
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_2003_provincia, type = "left")
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_2006_provincia, type = "left")
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_2009_provincia, type = "left")
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_2011_provincia, type = "left")
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_2013_provincia, type = "left")
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_2015_provincia, type = "left")

ub_weighted_mean_income_provincia <- ub_weighted_mean_income_provincia[order(ub_weighted_mean_income_provincia$provincia),]
rownames(ub_weighted_mean_income_provincia) <- c(seq(1:nrow(ub_weighted_mean_income_provincia)))

################################
# join lb_weighted_gini_income #
################################

lb_weighted_gini_income_provincia <- as.data.frame(unique(c(lb_weighted_gini_1990_provincia$provincia, lb_weighted_gini_2015_provincia$provincia)))
setnames(lb_weighted_gini_income_provincia, colnames(lb_weighted_gini_income_provincia), "provincia")

lb_weighted_gini_income_provincia <- join(lb_weighted_gini_income_provincia, lb_weighted_gini_1990_provincia, type = "left")
lb_weighted_gini_income_provincia <- join(lb_weighted_gini_income_provincia, lb_weighted_gini_1992_provincia, type = "left")
lb_weighted_gini_income_provincia <- join(lb_weighted_gini_income_provincia, lb_weighted_gini_1994_provincia, type = "left")
lb_weighted_gini_income_provincia <- join(lb_weighted_gini_income_provincia, lb_weighted_gini_1996_provincia, type = "left")
lb_weighted_gini_income_provincia <- join(lb_weighted_gini_income_provincia, lb_weighted_gini_1998_provincia, type = "left")
lb_weighted_gini_income_provincia <- join(lb_weighted_gini_income_provincia, lb_weighted_gini_2000_provincia, type = "left")
lb_weighted_gini_income_provincia <- join(lb_weighted_gini_income_provincia, lb_weighted_gini_2003_provincia, type = "left")
lb_weighted_gini_income_provincia <- join(lb_weighted_gini_income_provincia, lb_weighted_gini_2006_provincia, type = "left")
lb_weighted_gini_income_provincia <- join(lb_weighted_gini_income_provincia, lb_weighted_gini_2009_provincia, type = "left")
lb_weighted_gini_income_provincia <- join(lb_weighted_gini_income_provincia, lb_weighted_gini_2011_provincia, type = "left")
lb_weighted_gini_income_provincia <- join(lb_weighted_gini_income_provincia, lb_weighted_gini_2013_provincia, type = "left")
lb_weighted_gini_income_provincia <- join(lb_weighted_gini_income_provincia, lb_weighted_gini_2015_provincia, type = "left")

lb_weighted_gini_income_provincia <- lb_weighted_gini_income_provincia[order(lb_weighted_gini_income_provincia$provincia),]
rownames(lb_weighted_gini_income_provincia) <- c(seq(1:nrow(lb_weighted_gini_income_provincia)))

################################
# join ub_weighted_gini_income #
################################

ub_weighted_gini_income_provincia <- as.data.frame(unique(c(ub_weighted_gini_1990_provincia$provincia, ub_weighted_gini_2015_provincia$provincia)))
setnames(ub_weighted_gini_income_provincia, colnames(ub_weighted_gini_income_provincia), "provincia")

ub_weighted_gini_income_provincia <- join(ub_weighted_gini_income_provincia, ub_weighted_gini_1990_provincia, type = "left")
ub_weighted_gini_income_provincia <- join(ub_weighted_gini_income_provincia, ub_weighted_gini_1992_provincia, type = "left")
ub_weighted_gini_income_provincia <- join(ub_weighted_gini_income_provincia, ub_weighted_gini_1994_provincia, type = "left")
ub_weighted_gini_income_provincia <- join(ub_weighted_gini_income_provincia, ub_weighted_gini_1996_provincia, type = "left")
ub_weighted_gini_income_provincia <- join(ub_weighted_gini_income_provincia, ub_weighted_gini_1998_provincia, type = "left")
ub_weighted_gini_income_provincia <- join(ub_weighted_gini_income_provincia, ub_weighted_gini_2000_provincia, type = "left")
ub_weighted_gini_income_provincia <- join(ub_weighted_gini_income_provincia, ub_weighted_gini_2003_provincia, type = "left")
ub_weighted_gini_income_provincia <- join(ub_weighted_gini_income_provincia, ub_weighted_gini_2006_provincia, type = "left")
ub_weighted_gini_income_provincia <- join(ub_weighted_gini_income_provincia, ub_weighted_gini_2009_provincia, type = "left")
ub_weighted_gini_income_provincia <- join(ub_weighted_gini_income_provincia, ub_weighted_gini_2011_provincia, type = "left")
ub_weighted_gini_income_provincia <- join(ub_weighted_gini_income_provincia, ub_weighted_gini_2013_provincia, type = "left")
ub_weighted_gini_income_provincia <- join(ub_weighted_gini_income_provincia, ub_weighted_gini_2015_provincia, type = "left")

ub_weighted_gini_income_provincia <- ub_weighted_gini_income_provincia[order(ub_weighted_gini_income_provincia$provincia),]
rownames(ub_weighted_gini_income_provincia) <- c(seq(1:nrow(ub_weighted_gini_income_provincia)))

########################
# tidy weighted_median #
########################

tidy_weighted_median_income_provincia <- weighted_median_income_provincia %>% gather(year, weighted_median_income, `1990`:`2015`)
tidy_lb_weighted_median_income_provincia <- lb_weighted_median_income_provincia %>% gather(year, lb_weighted_median_income, `1990`:`2015`)
tidy_ub_weighted_median_income_provincia <- ub_weighted_median_income_provincia %>% gather(year, ub_weighted_median_income, `1990`:`2015`)

######################
# tidy weighted_mean #
######################

tidy_weighted_mean_income_provincia <- weighted_mean_income_provincia %>% gather(year, weighted_mean_income, `1990`:`2015`)
tidy_lb_weighted_mean_income_provincia <- lb_weighted_mean_income_provincia %>% gather(year, lb_weighted_mean_income, `1990`:`2015`)
tidy_ub_weighted_mean_income_provincia <- ub_weighted_mean_income_provincia %>% gather(year, ub_weighted_mean_income, `1990`:`2015`)

######################
# tidy weighted_gini #
######################

tidy_weighted_gini_income_provincia <- weighted_gini_income_provincia %>% gather(year, weighted_gini_income, `1990`:`2015`)
tidy_lb_weighted_gini_income_provincia <- lb_weighted_gini_income_provincia %>% gather(year, lb_weighted_gini_income, `1990`:`2015`)
tidy_ub_weighted_gini_income_provincia <- ub_weighted_gini_income_provincia %>% gather(year, ub_weighted_gini_income, `1990`:`2015`)

############
# join all #
############

tidy_all_provincia <- join(tidy_weighted_mean_income_provincia, tidy_weighted_median_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_weighted_gini_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_lb_weighted_mean_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_ub_weighted_mean_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_lb_weighted_median_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_ub_weighted_median_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_lb_weighted_gini_income_provincia, by = c("provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_ub_weighted_gini_income_provincia, by = c("provincia","year"))

setnames(tidy_all_provincia, "provincia", "provincia_name")
tidy_all_provincia <- join(tidy_all_provincia, unique(provincia_codes_pacha[,c("provincia_name","provincia_pacha_id")]), by = "provincia_name")
tidy_all_provincia$geography_level <- "provincia"
tidy_all_provincia <- move_col(tidy_all_provincia, c("geography_level"=1, "provincia_name"=2, "provincia_pacha_id"=3, "year"=4))
setnames(tidy_all_provincia, c("provincia_name","provincia_pacha_id"), c("geography_name","geography_id"))

tidy_all_provincia$geography_level <- as.character(tidy_all_provincia$geography_level)
tidy_all_provincia$geography_name <- as.character(tidy_all_provincia$geography_name)
tidy_all_provincia$geography_id <- as.character(tidy_all_provincia$geography_id)

tidy_all_provincia$ci_weighted_mean_income <- paste0("[",tidy_all_provincia$lb_weighted_mean_income,", ",tidy_all_provincia$ub_weighted_mean_income,"]")
tidy_all_provincia$ci_weighted_median_income <- paste0("[",tidy_all_provincia$lb_weighted_median_income,", ",tidy_all_provincia$ub_weighted_median_income,"]")
tidy_all_provincia$ci_weighted_gini_income <- paste0("[",tidy_all_provincia$lb_weighted_gini_income,", ",tidy_all_provincia$ub_weighted_gini_income,"]")

tidy_all_provincia <- tidy_all_provincia[, !(colnames(tidy_all_provincia) %in% c("lb_weighted_mean_income","ub_weighted_mean_income","lb_weighted_median_income","ub_weighted_median_income",
                                                                        "lb_weighted_gini_income","ub_weighted_gini_income"))]

tidy_all_provincia <- tidy_all_provincia[complete.cases(tidy_all_provincia),]

########
# save #
########

write.csv(weighted_median_income_provincia, file = "household_income_with_weights/csv_intermediate_files/household_income_with_weights_median_income_provincia.csv")
write.csv(weighted_mean_income_provincia, file = "household_income_with_weights/csv_intermediate_files/household_income_with_weights_mean_income_provincia.csv")
write.csv(weighted_gini_income_provincia, file = "household_income_with_weights/csv_intermediate_files/household_income_with_weights_gini_income_provincia.csv")
write.csv(tidy_all_provincia, file = "household_income_with_weights/csv_final_files/household_income_with_weights_tidy_all_provincia.csv")

##################
# free up memory #
##################

rm(weighted_median_income_provincia, weighted_mean_income_provincia, weighted_gini_income_provincia,
   lb_weighted_median_income_provincia, lb_weighted_mean_income_provincia, lb_weighted_gini_income_provincia,
   ub_weighted_median_income_provincia, ub_weighted_mean_income_provincia, ub_weighted_gini_income_provincia)

rm(tidy_weighted_median_income_provincia, tidy_weighted_mean_income_provincia, tidy_weighted_gini_income_provincia,
   tidy_lb_weighted_median_income_provincia, tidy_lb_weighted_mean_income_provincia, tidy_lb_weighted_gini_income_provincia,
   tidy_ub_weighted_median_income_provincia, tidy_ub_weighted_mean_income_provincia, tidy_ub_weighted_gini_income_provincia)

rm(weighted_median_1990_provincia, weighted_median_1992_provincia, weighted_median_1994_provincia, weighted_median_1996_provincia, weighted_median_1998_provincia,
   weighted_median_2000_provincia, weighted_median_2003_provincia, weighted_median_2006_provincia, weighted_median_2009_provincia, 
   weighted_median_2011_provincia, weighted_median_2013_provincia, weighted_median_2015_provincia)

rm(weighted_mean_1990_provincia, weighted_mean_1992_provincia, weighted_mean_1994_provincia, weighted_mean_1996_provincia, weighted_mean_1998_provincia,
   weighted_mean_2000_provincia, weighted_mean_2003_provincia, weighted_mean_2006_provincia, weighted_mean_2009_provincia, 
   weighted_mean_2011_provincia, weighted_mean_2013_provincia, weighted_mean_2015_provincia)

rm(weighted_gini_1990_provincia, weighted_gini_1992_provincia, weighted_gini_1994_provincia, weighted_gini_1996_provincia, weighted_gini_1998_provincia,
   weighted_gini_2000_provincia, weighted_gini_2003_provincia, weighted_gini_2006_provincia, weighted_gini_2009_provincia, 
   weighted_gini_2011_provincia, weighted_gini_2013_provincia, weighted_gini_2015_provincia)

rm(lb_weighted_median_1990_provincia, lb_weighted_median_1992_provincia, lb_weighted_median_1994_provincia, lb_weighted_median_1996_provincia, lb_weighted_median_1998_provincia,
   lb_weighted_median_2000_provincia, lb_weighted_median_2003_provincia, lb_weighted_median_2006_provincia, lb_weighted_median_2009_provincia, 
   lb_weighted_median_2011_provincia, lb_weighted_median_2013_provincia, lb_weighted_median_2015_provincia)

rm(ub_weighted_median_1990_provincia, ub_weighted_median_1992_provincia, ub_weighted_median_1994_provincia, ub_weighted_median_1996_provincia, ub_weighted_median_1998_provincia,
   ub_weighted_median_2000_provincia, ub_weighted_median_2003_provincia, ub_weighted_median_2006_provincia, ub_weighted_median_2009_provincia, 
   ub_weighted_median_2011_provincia, ub_weighted_median_2013_provincia, ub_weighted_median_2015_provincia)

rm(lb_weighted_mean_1990_provincia, lb_weighted_mean_1992_provincia, lb_weighted_mean_1994_provincia, lb_weighted_mean_1996_provincia, lb_weighted_mean_1998_provincia,
   lb_weighted_mean_2000_provincia, lb_weighted_mean_2003_provincia, lb_weighted_mean_2006_provincia, lb_weighted_mean_2009_provincia, 
   lb_weighted_mean_2011_provincia, lb_weighted_mean_2013_provincia, lb_weighted_mean_2015_provincia)

rm(ub_weighted_mean_1990_provincia, ub_weighted_mean_1992_provincia, ub_weighted_mean_1994_provincia, ub_weighted_mean_1996_provincia, ub_weighted_mean_1998_provincia,
   ub_weighted_mean_2000_provincia, ub_weighted_mean_2003_provincia, ub_weighted_mean_2006_provincia, ub_weighted_mean_2009_provincia, 
   ub_weighted_mean_2011_provincia, ub_weighted_mean_2013_provincia, ub_weighted_mean_2015_provincia)

rm(lb_weighted_gini_1990_provincia, lb_weighted_gini_1992_provincia, lb_weighted_gini_1994_provincia, lb_weighted_gini_1996_provincia, lb_weighted_gini_1998_provincia,
   lb_weighted_gini_2000_provincia, lb_weighted_gini_2003_provincia, lb_weighted_gini_2006_provincia, lb_weighted_gini_2009_provincia, 
   lb_weighted_gini_2011_provincia, lb_weighted_gini_2013_provincia, lb_weighted_gini_2015_provincia)

rm(ub_weighted_gini_1990_provincia, ub_weighted_gini_1992_provincia, ub_weighted_gini_1994_provincia, ub_weighted_gini_1996_provincia, ub_weighted_gini_1998_provincia,
   ub_weighted_gini_2000_provincia, ub_weighted_gini_2003_provincia, ub_weighted_gini_2006_provincia, ub_weighted_gini_2009_provincia, 
   ub_weighted_gini_2011_provincia, ub_weighted_gini_2013_provincia, ub_weighted_gini_2015_provincia)
