#uncomment lines 2-3 when running this file alone
#source("functions/normalization.R")
#source("process_household_income/process_household_income.R")
source("household_statistics_country/household_statistics_country.R")

###############
# join median #
###############

median_income_country <- as.data.frame(t(c("Pa\u00eds", median_country)))
setnames(median_income_country, colnames(median_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
median_income_country[,-c(1)] <- lapply(median_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

#############
# join mean #
#############

mean_income_country <- as.data.frame(t(c("Pa\u00eds", mean_country)))
setnames(mean_income_country, colnames(mean_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
mean_income_country[,-c(1)] <- lapply(mean_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

#############
# join gini #
#############

gini_income_country <- as.data.frame(t(c("Pa\u00eds", gini_country)))
setnames(gini_income_country, colnames(gini_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
gini_income_country[,-c(1)] <- lapply(gini_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

######################
# join median_bounds #
######################

lb_median_income_country <- as.data.frame(t(c("Pa\u00eds", lb_median_country)))
setnames(lb_median_income_country, colnames(lb_median_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
lb_median_income_country[,-c(1)] <- lapply(lb_median_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

ub_median_income_country <- as.data.frame(t(c("Pa\u00eds", ub_median_country)))
setnames(ub_median_income_country, colnames(ub_median_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
ub_median_income_country[,-c(1)] <- lapply(ub_median_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

######################
# join mean_bounds #
######################

lb_mean_income_country <- as.data.frame(t(c("Pa\u00eds", lb_mean_country)))
setnames(lb_mean_income_country, colnames(lb_mean_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
lb_mean_income_country[,-c(1)] <- lapply(lb_mean_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

ub_mean_income_country <- as.data.frame(t(c("Pa\u00eds", ub_mean_country)))
setnames(ub_mean_income_country, colnames(ub_mean_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
ub_mean_income_country[,-c(1)] <- lapply(ub_mean_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

######################
# join gini_bounds #
######################

lb_gini_income_country <- as.data.frame(t(c("Pa\u00eds", lb_gini_country)))
setnames(lb_gini_income_country, colnames(lb_gini_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
lb_gini_income_country[,-c(1)] <- lapply(lb_gini_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

ub_gini_income_country <- as.data.frame(t(c("Pa\u00eds", ub_gini_country)))
setnames(ub_gini_income_country, colnames(ub_gini_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
ub_gini_income_country[,-c(1)] <- lapply(ub_gini_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

###############
# tidy median #
###############

tidy_median_income_country <- median_income_country %>% gather(year, median_income, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_mean_income_country <- mean_income_country %>% gather(year, mean_income, `1990`:`2015`)

#############
# tidy gini #
#############

tidy_gini_income_country <- gini_income_country %>% gather(year, gini_income, `1990`:`2015`)

######################
# tidy median_bounds #
######################

tidy_lb_median_income_country <- lb_median_income_country %>% gather(year, lb_median_income, `1990`:`2015`)
tidy_ub_median_income_country <- ub_median_income_country %>% gather(year, ub_median_income, `1990`:`2015`)

####################
# tidy mean_bounds #
####################

tidy_lb_mean_income_country <- lb_mean_income_country %>% gather(year, lb_mean_income, `1990`:`2015`)
tidy_ub_mean_income_country <- ub_mean_income_country %>% gather(year, ub_mean_income, `1990`:`2015`)

####################
# tidy gini_bounds #
####################

tidy_lb_gini_income_country <- lb_gini_income_country %>% gather(year, lb_gini_income, `1990`:`2015`)
tidy_ub_gini_income_country <- ub_gini_income_country %>% gather(year, ub_gini_income, `1990`:`2015`)

############
# join all #
############

tidy_all_country <- join(tidy_mean_income_country, tidy_median_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_gini_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_lb_median_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_ub_median_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_lb_mean_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_ub_mean_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_lb_gini_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_ub_gini_income_country, by = c("geography_name","year"))

tidy_all_country$geography_level <- "pais"
tidy_all_country$geography_id <- "pais"
tidy_all_country <- move_col(tidy_all_country, c("geography_level"=1, "geography_name"=2, "geography_id"=3, "year"=4))

tidy_all_country$geography_level <- as.character(tidy_all_country$geography_level)
tidy_all_country$geography_name <- as.character(tidy_all_country$geography_name)
tidy_all_country$geography_id <- as.character(tidy_all_country$geography_id)

tidy_all_country$ci_mean_income <- paste0("[",tidy_all_country$lb_mean_income,", ",tidy_all_country$ub_mean_income,"]")
tidy_all_country$ci_median_income <- paste0("[",tidy_all_country$lb_median_income,", ",tidy_all_country$ub_median_income,"]")
tidy_all_country$ci_gini_income <- paste0("[",tidy_all_country$lb_gini_income,", ",tidy_all_country$ub_gini_income,"]")

tidy_all_country <- tidy_all_country[, !(colnames(tidy_all_country) %in% c("lb_mean_income","ub_mean_income","lb_median_income","ub_median_income",
                                                                           "lb_gini_income","ub_gini_income"))]

tidy_all_country <- tidy_all_country[complete.cases(tidy_all_country),]

########
# save #
########

write.csv(median_income_country, file = "csv_intermediate_files/median_income_country.csv")
write.csv(mean_income_country, file = "csv_intermediate_files/mean_income_country.csv")
write.csv(gini_income_country, file = "csv_intermediate_files/gini_income_country.csv")
write.csv(tidy_all_country, file = "csv_final_files/tidy_all_country.csv")

##################
# free up memory #
##################

rm(median_country, mean_country, gini_country,
   lb_median_country, ub_median_country,
   lb_mean_country, ub_mean_country,
   lb_gini_country, ub_gini_country)

rm(tidy_median_income_country, tidy_mean_income_country, tidy_gini_income_country,
   tidy_lb_median_income_country, tidy_ub_median_income_country,
   tidy_lb_mean_income_country, tidy_ub_mean_income_country,
   tidy_lb_gini_income_country, tidy_ub_gini_income_country)

rm(median_income_country, mean_income_country, gini_income_country, 
   lb_median_income_country, ub_median_income_country,
   lb_mean_income_country, ub_mean_income_country,
   lb_gini_income_country, ub_gini_income_country) 
