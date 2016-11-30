source("wage_by_gender_and_branch_with_weights/wage_by_gender_and_branch_with_weights_statistics_country/wage_by_gender_and_branch_with_weights_statistics_country.R")

###############
# join median #
###############

branch <- unique(c(as.character(weighted_median_2015_country$branch),
                   as.character(weighted_median_2013_country$branch),
                   as.character(weighted_median_2011_country$branch)))

weighted_median_income_country <- as.data.frame(branch)
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_2011_country, type = "left")
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_2013_country, type = "left")
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_2015_country, type = "left")

#############
# join mean #
#############

weighted_mean_income_country <- as.data.frame(branch)
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_2011_country, type = "left")
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_2013_country, type = "left")
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_2015_country, type = "left")

##################################
# join lb_weighted_median_income #
##################################

lb_weighted_median_income_country <- as.data.frame(branch)
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_2011_country, type = "left")
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_2013_country, type = "left")
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_2015_country, type = "left")

##################################
# join ub_weighted_median_income #
##################################

ub_weighted_median_income_country <- as.data.frame(branch)
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_2011_country, type = "left")
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_2013_country, type = "left")
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_2015_country, type = "left")

################################
# join lb_weighted_mean_income #
################################

lb_weighted_mean_income_country <- as.data.frame(branch)
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_2011_country, type = "left")
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_2013_country, type = "left")
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_2015_country, type = "left")

################################
# join ub_weighted_mean_income #
################################

ub_weighted_mean_income_country <- as.data.frame(branch)
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_2011_country, type = "left")
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_2013_country, type = "left")
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_2015_country, type = "left")

###############
# tidy median #
###############

tidy_weighted_median_income_country <- weighted_median_income_country %>% gather(year, weighted_median_income, `2011`:`2015`)
tidy_lb_weighted_median_income_country <- lb_weighted_median_income_country %>% gather(year, lb_weighted_median_income, `2011`:`2015`)
tidy_ub_weighted_median_income_country <- ub_weighted_median_income_country %>% gather(year, ub_weighted_median_income, `2011`:`2015`)

#############
# tidy mean #
#############

tidy_weighted_mean_income_country <- weighted_mean_income_country %>% gather(year, weighted_mean_income, `2011`:`2015`)
tidy_lb_weighted_mean_income_country <- lb_weighted_mean_income_country %>% gather(year, lb_weighted_mean_income, `2011`:`2015`)
tidy_ub_weighted_mean_income_country <- ub_weighted_mean_income_country %>% gather(year, ub_weighted_mean_income, `2011`:`2015`)

############
# join all #
############

tidy_all_country <- join(tidy_weighted_mean_income_country, tidy_weighted_median_income_country, by = c("sex","branch","year"))
tidy_all_country <- join(tidy_all_country, tidy_lb_weighted_mean_income_country, by = c("sex","branch","year"))
tidy_all_country <- join(tidy_all_country, tidy_ub_weighted_mean_income_country, by = c("sex","branch","year"))
tidy_all_country <- join(tidy_all_country, tidy_lb_weighted_median_income_country, by = c("sex","branch","year"))
tidy_all_country <- join(tidy_all_country, tidy_ub_weighted_median_income_country, by = c("sex","branch","year"))

tidy_all_country$geography_level <- "pais"
tidy_all_country$geography_name <- "Pa\u00eds"
tidy_all_country$geography_id <- "pais"
tidy_all_country <- move_col(tidy_all_country, c("geography_level"=1, "geography_name"=2, "geography_id"=3, "year"=4))

tidy_all_country$geography_level <- as.character(tidy_all_country$geography_level)
tidy_all_country$geography_name <- as.character(tidy_all_country$geography_name)
tidy_all_country$geography_id <- as.character(tidy_all_country$geography_id)

tidy_all_country$ci_weighted_mean_income <- paste0("[",tidy_all_country$lb_weighted_mean_income,", ",tidy_all_country$ub_weighted_mean_income,"]")
tidy_all_country$ci_weighted_median_income <- paste0("[",tidy_all_country$lb_weighted_median_income,", ",tidy_all_country$ub_weighted_median_income,"]")

tidy_all_country <- tidy_all_country[, !(colnames(tidy_all_country) %in% c("lb_weighted_mean_income","ub_weighted_mean_income","lb_weighted_median_income","ub_weighted_median_income"))]

tidy_all_country <- tidy_all_country[complete.cases(tidy_all_country),]

########
# save #
########

write.csv(weighted_median_income_country, file = "wage_by_gender_and_branch_with_weights/csv_intermediate_files/wage_by_gender_and_branch_with_weights_weighted_median_income_country.csv")
write.csv(weighted_mean_income_country, file = "wage_by_gender_and_branch_with_weights/csv_intermediate_files/wage_by_gender_and_branch_with_weights_weighted_mean_income_country.csv")
write.csv(tidy_all_country, file = "wage_by_gender_and_branch_with_weights/csv_final_files/wage_by_gender_and_branch_with_weights_tidy_all_country.csv")

##################
# free up memory #
##################

rm(weighted_median_income_country, weighted_mean_income_country,
   lb_weighted_median_income_country, lb_weighted_mean_income_country,
   ub_weighted_median_income_country, ub_weighted_mean_income_country)

rm(tidy_weighted_median_income_country, tidy_weighted_mean_income_country,
   tidy_lb_weighted_median_income_country, tidy_lb_weighted_mean_income_country,
   tidy_ub_weighted_median_income_country, tidy_ub_weighted_mean_income_country)

rm(weighted_median_2011_country, weighted_median_2013_country, weighted_median_2015_country)

rm(weighted_mean_2011_country, weighted_mean_2013_country, weighted_mean_2015_country)

rm(lb_weighted_median_2011_country, lb_weighted_median_2013_country, lb_weighted_median_2015_country)

rm(ub_weighted_median_2011_country, ub_weighted_median_2013_country, ub_weighted_median_2015_country)

rm(lb_weighted_mean_2011_country, lb_weighted_mean_2013_country, lb_weighted_mean_2015_country)

rm(ub_weighted_mean_2011_country, ub_weighted_mean_2013_country, ub_weighted_mean_2015_country)
