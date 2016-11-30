source("wage_by_gender_and_branch_with_weights/wage_by_gender_and_branch_with_weights_statistics_region/wage_by_gender_and_branch_with_weights_statistics_region.R")

###############
# join median #
###############

region <- unique(c(as.character(weighted_median_2011_region$region),
                   as.character(weighted_median_2013_region$region),
                   as.character(weighted_median_2015_region$region)))

weighted_median_income_region <- as.data.frame(region)
weighted_median_income_region <- join(weighted_median_income_region, weighted_median_2011_region, type = "left")
weighted_median_income_region <- join(weighted_median_income_region, weighted_median_2013_region, type = "left")
weighted_median_income_region <- join(weighted_median_income_region, weighted_median_2015_region, type = "left")

#############
# join mean #
#############

weighted_mean_income_region <- as.data.frame(region)
weighted_mean_income_region <- join(weighted_mean_income_region, weighted_mean_2011_region, type = "left")
weighted_mean_income_region <- join(weighted_mean_income_region, weighted_mean_2013_region, type = "left")
weighted_mean_income_region <- join(weighted_mean_income_region, weighted_mean_2015_region, type = "left")

##################################
# join lb_weighted_median_income #
##################################

lb_weighted_median_income_region <- as.data.frame(region)
lb_weighted_median_income_region <- join(lb_weighted_median_income_region, lb_weighted_median_2011_region, type = "left")
lb_weighted_median_income_region <- join(lb_weighted_median_income_region, lb_weighted_median_2013_region, type = "left")
lb_weighted_median_income_region <- join(lb_weighted_median_income_region, lb_weighted_median_2015_region, type = "left")

##################################
# join ub_weighted_median_income #
##################################

ub_weighted_median_income_region <- as.data.frame(region)
ub_weighted_median_income_region <- join(ub_weighted_median_income_region, ub_weighted_median_2011_region, type = "left")
ub_weighted_median_income_region <- join(ub_weighted_median_income_region, ub_weighted_median_2013_region, type = "left")
ub_weighted_median_income_region <- join(ub_weighted_median_income_region, ub_weighted_median_2015_region, type = "left")

################################
# join lb_weighted_mean_income #
################################

lb_weighted_mean_income_region <- as.data.frame(region)
lb_weighted_mean_income_region <- join(lb_weighted_mean_income_region, lb_weighted_mean_2011_region, type = "left")
lb_weighted_mean_income_region <- join(lb_weighted_mean_income_region, lb_weighted_mean_2013_region, type = "left")
lb_weighted_mean_income_region <- join(lb_weighted_mean_income_region, lb_weighted_mean_2015_region, type = "left")

################################
# join ub_weighted_mean_income #
################################

ub_weighted_mean_income_region <- as.data.frame(region)
ub_weighted_mean_income_region <- join(ub_weighted_mean_income_region, ub_weighted_mean_2011_region, type = "left")
ub_weighted_mean_income_region <- join(ub_weighted_mean_income_region, ub_weighted_mean_2013_region, type = "left")
ub_weighted_mean_income_region <- join(ub_weighted_mean_income_region, ub_weighted_mean_2015_region, type = "left")

###############
# tidy median #
###############

tidy_weighted_median_income_region <- weighted_median_income_region %>% gather(year, weighted_median_income, `2011`:`2015`)
tidy_lb_weighted_median_income_region <- lb_weighted_median_income_region %>% gather(year, lb_weighted_median_income, `2011`:`2015`)
tidy_ub_weighted_median_income_region <- ub_weighted_median_income_region %>% gather(year, ub_weighted_median_income, `2011`:`2015`)

#############
# tidy mean #
#############

tidy_weighted_mean_income_region <- weighted_mean_income_region %>% gather(year, weighted_mean_income, `2011`:`2015`)
tidy_lb_weighted_mean_income_region <- lb_weighted_mean_income_region %>% gather(year, lb_weighted_mean_income, `2011`:`2015`)
tidy_ub_weighted_mean_income_region <- ub_weighted_mean_income_region %>% gather(year, ub_weighted_mean_income, `2011`:`2015`)

############
# join all #
############

tidy_all_region <- join(tidy_weighted_mean_income_region, tidy_weighted_median_income_region, by = c("region","sex","branch","year"))
tidy_all_region <- join(tidy_all_region, tidy_lb_weighted_mean_income_region, by = c("region","sex","branch","year"))
tidy_all_region <- join(tidy_all_region, tidy_ub_weighted_mean_income_region, by = c("region","sex","branch","year"))
tidy_all_region <- join(tidy_all_region, tidy_lb_weighted_median_income_region, by = c("region","sex","branch","year"))
tidy_all_region <- join(tidy_all_region, tidy_ub_weighted_median_income_region, by = c("region","sex","branch","year"))

setnames(tidy_all_region, "region", "region_name")
tidy_all_region <- join(tidy_all_region, unique(region_codes_datachile[,c("region_name","region_id")]), by = "region_name")
tidy_all_region$geography_level <- "region"
tidy_all_region <- move_col(tidy_all_region, c("geography_level"=1, "region_name"=2, "region_id"=3, "year"=4))
setnames(tidy_all_region, c("region_name","region_id"), c("geography_name","geography_id"))

tidy_all_region$geography_level <- as.character(tidy_all_region$geography_level)
tidy_all_region$geography_name <- as.character(tidy_all_region$geography_name)
tidy_all_region$geography_id <- as.character(tidy_all_region$geography_id)

tidy_all_region$ci_weighted_mean_income <- paste0("[",tidy_all_region$lb_weighted_mean_income,", ",tidy_all_region$ub_weighted_mean_income,"]")
tidy_all_region$ci_weighted_median_income <- paste0("[",tidy_all_region$lb_weighted_median_income,", ",tidy_all_region$ub_weighted_median_income,"]")

tidy_all_region <- tidy_all_region[, !(colnames(tidy_all_region) %in% c("lb_weighted_mean_income","ub_weighted_mean_income","lb_weighted_median_income","ub_weighted_median_income"))]

tidy_all_region <- tidy_all_region[complete.cases(tidy_all_region),]

########
# save #
########

write.csv(weighted_median_income_region, file = "wage_by_gender_and_branch_with_weights/csv_intermediate_files/wage_by_gender_and_branch_with_weights_weighted_median_income_region.csv")
write.csv(weighted_mean_income_region, file = "wage_by_gender_and_branch_with_weights/csv_intermediate_files/wage_by_gender_and_branch_with_weights_weighted_mean_income_region.csv")
write.csv(tidy_all_region, file = "wage_by_gender_and_branch_with_weights/csv_final_files/wage_by_gender_and_branch_with_weights_tidy_all_region.csv")

##################
# free up memory #
##################

rm(weighted_median_income_region, weighted_mean_income_region,
   lb_weighted_median_income_region, lb_weighted_mean_income_region,
   ub_weighted_median_income_region, ub_weighted_mean_income_region)

rm(tidy_weighted_median_income_region, tidy_weighted_mean_income_region,
   tidy_lb_weighted_median_income_region, tidy_lb_weighted_mean_income_region,
   tidy_ub_weighted_median_income_region, tidy_ub_weighted_mean_income_region)

rm(weighted_median_2011_region, weighted_median_2013_region, weighted_median_2015_region)

rm(weighted_mean_2011_region, weighted_mean_2013_region, weighted_mean_2015_region)

rm(lb_weighted_median_2011_region, lb_weighted_median_2013_region, lb_weighted_median_2015_region)

rm(ub_weighted_median_2011_region, ub_weighted_median_2013_region, ub_weighted_median_2015_region)

rm(lb_weighted_mean_2011_region, lb_weighted_mean_2013_region, lb_weighted_mean_2015_region)

rm(ub_weighted_mean_2011_region, ub_weighted_mean_2013_region, ub_weighted_mean_2015_region)
