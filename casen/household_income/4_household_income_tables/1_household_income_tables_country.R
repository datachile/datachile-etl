source("household_income/5_household_income_statistics_country/1_household_income_statistics_country.R")

###############
# join median #
###############

weighted_median_income_country <- as.data.frame(t(c("Pa\u00eds", weighted_median_country)))
setnames(weighted_median_income_country, colnames(weighted_median_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
weighted_median_income_country[,-c(1)] <- lapply(weighted_median_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

#############
# join mean #
#############

weighted_mean_income_country <- as.data.frame(t(c("Pa\u00eds", weighted_mean_country)))
setnames(weighted_mean_income_country, colnames(weighted_mean_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
weighted_mean_income_country[,-c(1)] <- lapply(weighted_mean_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

#############
# join gini #
#############

weighted_gini_income_country <- as.data.frame(t(c("Pa\u00eds", weighted_gini_country)))
setnames(weighted_gini_income_country, colnames(weighted_gini_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
weighted_gini_income_country[,-c(1)] <- lapply(weighted_gini_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

######################
# join median_bounds #
######################

lb_weighted_median_income_country <- as.data.frame(t(c("Pa\u00eds", lb_weighted_median_country)))
setnames(lb_weighted_median_income_country, colnames(lb_weighted_median_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
lb_weighted_median_income_country[,-c(1)] <- lapply(lb_weighted_median_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

ub_weighted_median_income_country <- as.data.frame(t(c("Pa\u00eds", ub_weighted_median_country)))
setnames(ub_weighted_median_income_country, colnames(ub_weighted_median_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
ub_weighted_median_income_country[,-c(1)] <- lapply(ub_weighted_median_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

######################
# join mean_bounds #
######################

lb_weighted_mean_income_country <- as.data.frame(t(c("Pa\u00eds", lb_weighted_mean_country)))
setnames(lb_weighted_mean_income_country, colnames(lb_weighted_mean_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
lb_weighted_mean_income_country[,-c(1)] <- lapply(lb_weighted_mean_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

ub_weighted_mean_income_country <- as.data.frame(t(c("Pa\u00eds", ub_weighted_mean_country)))
setnames(ub_weighted_mean_income_country, colnames(ub_weighted_mean_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
ub_weighted_mean_income_country[,-c(1)] <- lapply(ub_weighted_mean_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

######################
# join gini_bounds #
######################

lb_weighted_gini_income_country <- as.data.frame(t(c("Pa\u00eds", lb_weighted_gini_country)))
setnames(lb_weighted_gini_income_country, colnames(lb_weighted_gini_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
lb_weighted_gini_income_country[,-c(1)] <- lapply(lb_weighted_gini_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

ub_weighted_gini_income_country <- as.data.frame(t(c("Pa\u00eds", ub_weighted_gini_country)))
setnames(ub_weighted_gini_income_country, colnames(ub_weighted_gini_income_country), c("geography_name", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
ub_weighted_gini_income_country[,-c(1)] <- lapply(ub_weighted_gini_income_country[,-c(1)], function (x) as.numeric(as.character(x)))

###############
# tidy median #
###############

tidy_weighted_median_income_country <- weighted_median_income_country %>% gather(year, weighted_median_income, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_weighted_mean_income_country <- weighted_mean_income_country %>% gather(year, weighted_mean_income, `1990`:`2015`)

#############
# tidy gini #
#############

tidy_weighted_gini_income_country <- weighted_gini_income_country %>% gather(year, weighted_gini_income, `1990`:`2015`)

######################
# tidy median_bounds #
######################

tidy_lb_weighted_median_income_country <- lb_weighted_median_income_country %>% gather(year, lb_weighted_median_income, `1990`:`2015`)
tidy_ub_weighted_median_income_country <- ub_weighted_median_income_country %>% gather(year, ub_weighted_median_income, `1990`:`2015`)

####################
# tidy mean_bounds #
####################

tidy_lb_weighted_mean_income_country <- lb_weighted_mean_income_country %>% gather(year, lb_weighted_mean_income, `1990`:`2015`)
tidy_ub_weighted_mean_income_country <- ub_weighted_mean_income_country %>% gather(year, ub_weighted_mean_income, `1990`:`2015`)

####################
# tidy gini_bounds #
####################

tidy_lb_weighted_gini_income_country <- lb_weighted_gini_income_country %>% gather(year, lb_weighted_gini_income, `1990`:`2015`)
tidy_ub_weighted_gini_income_country <- ub_weighted_gini_income_country %>% gather(year, ub_weighted_gini_income, `1990`:`2015`)

############
# join all #
############

tidy_all_country <- join(tidy_weighted_mean_income_country, tidy_weighted_median_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_weighted_gini_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_lb_weighted_median_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_ub_weighted_median_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_lb_weighted_mean_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_ub_weighted_mean_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_lb_weighted_gini_income_country, by = c("geography_name","year"))
tidy_all_country <- join(tidy_all_country, tidy_ub_weighted_gini_income_country, by = c("geography_name","year"))

tidy_all_country$geography_level <- "pais"
tidy_all_country$geography_id <- "pais"
tidy_all_country <- move_col(tidy_all_country, c("geography_level"=1, "geography_name"=2, "geography_id"=3, "year"=4))

tidy_all_country$geography_level <- as.character(tidy_all_country$geography_level)
tidy_all_country$geography_name <- as.character(tidy_all_country$geography_name)
tidy_all_country$geography_id <- as.character(tidy_all_country$geography_id)

tidy_all_country$ci_weighted_mean_income <- paste0("[",tidy_all_country$lb_weighted_mean_income,", ",tidy_all_country$ub_weighted_mean_income,"]")
tidy_all_country$ci_weighted_median_income <- paste0("[",tidy_all_country$lb_weighted_median_income,", ",tidy_all_country$ub_weighted_median_income,"]")
tidy_all_country$ci_weighted_gini_income <- paste0("[",tidy_all_country$lb_weighted_gini_income,", ",tidy_all_country$ub_weighted_gini_income,"]")

tidy_all_country <- tidy_all_country[, !(colnames(tidy_all_country) %in% c("lb_weighted_mean_income","ub_weighted_mean_income","lb_weighted_median_income","ub_weighted_median_income",
                                                                           "lb_weighted_gini_income","ub_weighted_gini_income"))]

tidy_all_country <- tidy_all_country[complete.cases(tidy_all_country),]

########
# save #
########

write.csv(weighted_median_income_country, file = "household_income/9_csv_intermediate_files/household_income_median_income_country.csv")
write.csv(weighted_mean_income_country, file = "household_income/9_csv_intermediate_files/household_income_mean_income_country.csv")
write.csv(weighted_gini_income_country, file = "household_income/9_csv_intermediate_files/household_income_gini_income_country.csv")
write.csv(tidy_all_country, file = "household_income/10_csv_final_files/household_income_tidy_all_country.csv")

##################
# free up memory #
##################

rm(weighted_median_country, weighted_mean_country, weighted_gini_country,
   lb_weighted_median_country, ub_weighted_median_country,
   lb_weighted_mean_country, ub_weighted_mean_country,
   lb_weighted_gini_country, ub_weighted_gini_country)

rm(tidy_weighted_median_income_country, tidy_weighted_mean_income_country, tidy_weighted_gini_income_country,
   tidy_lb_weighted_median_income_country, tidy_ub_weighted_median_income_country,
   tidy_lb_weighted_mean_income_country, tidy_ub_weighted_mean_income_country,
   tidy_lb_weighted_gini_income_country, tidy_ub_weighted_gini_income_country)

rm(weighted_median_income_country, weighted_mean_income_country, weighted_gini_income_country, 
   lb_weighted_median_income_country, ub_weighted_median_income_country,
   lb_weighted_mean_income_country, ub_weighted_mean_income_country,
   lb_weighted_gini_income_country, ub_weighted_gini_income_country) 
