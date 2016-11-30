source("wage_by_gender_and_occupation_with_weights/wage_by_gender_and_occupation_with_weights_statistics_provincia/wage_by_gender_and_occupation_with_weights_statistics_provincia.R")

###############
# join median #
###############

provincia <- unique(c(as.character(weighted_median_2011_provincia$provincia),
                      as.character(weighted_median_2013_provincia$provincia),
                      as.character(weighted_median_2015_provincia$provincia)))

weighted_median_income_provincia <- as.data.frame(provincia)
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_2011_provincia, type = "left")
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_2013_provincia, type = "left")
weighted_median_income_provincia <- join(weighted_median_income_provincia, weighted_median_2015_provincia, type = "left")

#############
# join mean #
#############

weighted_mean_income_provincia <- as.data.frame(provincia)
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_2011_provincia, type = "left")
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_2013_provincia, type = "left")
weighted_mean_income_provincia <- join(weighted_mean_income_provincia, weighted_mean_2015_provincia, type = "left")

##################################
# join lb_weighted_median_income #
##################################

lb_weighted_median_income_provincia <- as.data.frame(provincia)
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_2011_provincia, type = "left")
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_2013_provincia, type = "left")
lb_weighted_median_income_provincia <- join(lb_weighted_median_income_provincia, lb_weighted_median_2015_provincia, type = "left")

##################################
# join ub_weighted_median_income #
##################################

ub_weighted_median_income_provincia <- as.data.frame(provincia)
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_2011_provincia, type = "left")
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_2013_provincia, type = "left")
ub_weighted_median_income_provincia <- join(ub_weighted_median_income_provincia, ub_weighted_median_2015_provincia, type = "left")

################################
# join lb_weighted_mean_income #
################################

lb_weighted_mean_income_provincia <- as.data.frame(provincia)
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_2011_provincia, type = "left")
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_2013_provincia, type = "left")
lb_weighted_mean_income_provincia <- join(lb_weighted_mean_income_provincia, lb_weighted_mean_2015_provincia, type = "left")

################################
# join ub_weighted_mean_income #
################################

ub_weighted_mean_income_provincia <- as.data.frame(provincia)
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_2011_provincia, type = "left")
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_2013_provincia, type = "left")
ub_weighted_mean_income_provincia <- join(ub_weighted_mean_income_provincia, ub_weighted_mean_2015_provincia, type = "left")

###############
# tidy median #
###############

tidy_weighted_median_income_provincia <- weighted_median_income_provincia %>% gather(year, weighted_median_income, `2011`:`2015`)
tidy_lb_weighted_median_income_provincia <- lb_weighted_median_income_provincia %>% gather(year, lb_weighted_median_income, `2011`:`2015`)
tidy_ub_weighted_median_income_provincia <- ub_weighted_median_income_provincia %>% gather(year, ub_weighted_median_income, `2011`:`2015`)

#############
# tidy mean #
#############

tidy_weighted_mean_income_provincia <- weighted_mean_income_provincia %>% gather(year, weighted_mean_income, `2011`:`2015`)
tidy_lb_weighted_mean_income_provincia <- lb_weighted_mean_income_provincia %>% gather(year, lb_weighted_mean_income, `2011`:`2015`)
tidy_ub_weighted_mean_income_provincia <- ub_weighted_mean_income_provincia %>% gather(year, ub_weighted_mean_income, `2011`:`2015`)

############
# join all #
############

tidy_all_provincia <- join(tidy_weighted_mean_income_provincia, tidy_weighted_median_income_provincia, by = c("provincia","sex","occupation","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_lb_weighted_mean_income_provincia, by = c("provincia","sex","occupation","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_ub_weighted_mean_income_provincia, by = c("provincia","sex","occupation","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_lb_weighted_median_income_provincia, by = c("provincia","sex","occupation","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_ub_weighted_median_income_provincia, by = c("provincia","sex","occupation","year"))

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

tidy_all_provincia <- tidy_all_provincia[, !(colnames(tidy_all_provincia) %in% c("lb_weighted_mean_income","ub_weighted_mean_income","lb_weighted_median_income","ub_weighted_median_income"))]

tidy_all_provincia <- tidy_all_provincia[complete.cases(tidy_all_provincia),]

########
# save #
########

write.csv(weighted_median_income_provincia, file = "wage_by_gender_and_occupation_with_weights/csv_intermediate_files/wage_by_gender_and_occupation_with_weights_weighted_median_income_provincia.csv")
write.csv(weighted_mean_income_provincia, file = "wage_by_gender_and_occupation_with_weights/csv_intermediate_files/wage_by_gender_and_occupation_with_weights_weighted_mean_income_provincia.csv")
write.csv(tidy_all_provincia, file = "wage_by_gender_and_occupation_with_weights/csv_final_files/wage_by_gender_and_occupation_with_weights_tidy_all_provincia.csv")

##################
# free up memory #
##################

rm(weighted_median_income_provincia, weighted_mean_income_provincia,
   lb_weighted_median_income_provincia, lb_weighted_mean_income_provincia,
   ub_weighted_median_income_provincia, ub_weighted_mean_income_provincia)

rm(tidy_weighted_median_income_provincia, tidy_weighted_mean_income_provincia,
   tidy_lb_weighted_median_income_provincia, tidy_lb_weighted_mean_income_provincia,
   tidy_ub_weighted_median_income_provincia, tidy_ub_weighted_mean_income_provincia)

rm(weighted_median_2011_provincia, weighted_median_2013_provincia, weighted_median_2015_provincia)

rm(weighted_mean_2011_provincia, weighted_mean_2013_provincia, weighted_mean_2015_provincia)

rm(lb_weighted_median_2011_provincia, lb_weighted_median_2013_provincia, lb_weighted_median_2015_provincia)

rm(ub_weighted_median_2011_provincia, ub_weighted_median_2013_provincia, ub_weighted_median_2015_provincia)

rm(lb_weighted_mean_2011_provincia, lb_weighted_mean_2013_provincia, lb_weighted_mean_2015_provincia)

rm(ub_weighted_mean_2011_provincia, ub_weighted_mean_2013_provincia, ub_weighted_mean_2015_provincia)
