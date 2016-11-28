########
# 1994 #
########

# Median Wage by Gender by provincia
weighted_median_1994_provincia <- ddply(wage_by_gender_with_weights_1994, .(sex,provincia), summarise, FUN = matrixStats::weightedMedian(individual_income, w = exp_region, na.rm = TRUE))
setnames(weighted_median_1994_provincia, colnames(weighted_median_1994_provincia), c("sex","provincia","1994"))
#weighted_median_1994_provincia <- insert_row(weighted_median_1994_provincia, c("Pa\u00eds", median(wage_by_gender_with_weights_1994$individual_income, na.rm = TRUE)), nrow(weighted_median_1994_provincia)+1)
weighted_median_1994_provincia$`1994` <- as.numeric(weighted_median_1994_provincia$`1994`)
weighted_median_1994_provincia$`1994` <- round(weighted_median_1994_provincia$`1994`, 0)
weighted_median_1994_provincia$`1994` <- as.numeric(weighted_median_1994_provincia$`1994`)
weighted_median_1994_provincia$`1994` <- round(weighted_median_1994_provincia$`1994`, 0)

# Average Wage by Gender by provincia
weighted_mean_1994_provincia <- ddply(wage_by_gender_with_weights_1994, .(sex,provincia), summarise, FUN = matrixStats::weightedMean(individual_income, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_1994_provincia, colnames(weighted_mean_1994_provincia), c("sex","provincia","1994"))
weighted_mean_1994_provincia$`1994` <- as.numeric(weighted_mean_1994_provincia$`1994`)
weighted_mean_1994_provincia$`1994` <- round(weighted_mean_1994_provincia$`1994`, 0)
weighted_mean_1994_provincia$`1994` <- as.numeric(weighted_mean_1994_provincia$`1994`)
weighted_mean_1994_provincia$`1994` <- round(weighted_mean_1994_provincia$`1994`, 0)

# Lower Bound for Median Wage by Gender by provincia
lb_weighted_median_1994_provincia <- ddply(wage_by_gender_with_weights_1994, .(sex,provincia), summarise, FUN = lb_weighted_median_plyr(individual_income, exp_region))
setnames(lb_weighted_median_1994_provincia, colnames(lb_weighted_median_1994_provincia), c("sex","provincia","1994"))
lb_weighted_median_1994_provincia$`1994` <- as.numeric(lb_weighted_median_1994_provincia$`1994`)
lb_weighted_median_1994_provincia$`1994` <- round(lb_weighted_median_1994_provincia$`1994`, 0)
lb_weighted_median_1994_provincia$`1994` <- as.numeric(lb_weighted_median_1994_provincia$`1994`)
lb_weighted_median_1994_provincia$`1994` <- round(lb_weighted_median_1994_provincia$`1994`, 0)

# Upper Bound for Median Wage by Gender by provincia
ub_weighted_median_1994_provincia <- ddply(wage_by_gender_with_weights_1994, .(sex,provincia), summarise, FUN = ub_weighted_median_plyr(individual_income, exp_region))
setnames(ub_weighted_median_1994_provincia, colnames(ub_weighted_median_1994_provincia), c("sex","provincia","1994"))
ub_weighted_median_1994_provincia$`1994` <- as.numeric(ub_weighted_median_1994_provincia$`1994`)
ub_weighted_median_1994_provincia$`1994` <- round(ub_weighted_median_1994_provincia$`1994`, 0)

# Lower Bound for Mean Wage by Gender by provincia
lb_weighted_mean_1994_provincia <- ddply(wage_by_gender_with_weights_1994, .(sex,provincia), summarise, FUN = lb_weighted_mean_plyr(individual_income, exp_region))
setnames(lb_weighted_mean_1994_provincia, colnames(lb_weighted_mean_1994_provincia), c("sex","provincia","1994"))
lb_weighted_mean_1994_provincia$`1994` <- as.numeric(lb_weighted_mean_1994_provincia$`1994`)
lb_weighted_mean_1994_provincia$`1994` <- round(lb_weighted_mean_1994_provincia$`1994`, 0)

# Upper Bound for Mean Wage by Gender by provincia
ub_weighted_mean_1994_provincia <- ddply(wage_by_gender_with_weights_1994, .(sex,provincia), summarise, FUN = ub_weighted_mean_plyr(individual_income, exp_region))
setnames(ub_weighted_mean_1994_provincia, colnames(ub_weighted_mean_1994_provincia), c("sex","provincia","1994"))
ub_weighted_mean_1994_provincia$`1994` <- as.numeric(ub_weighted_mean_1994_provincia$`1994`)
ub_weighted_mean_1994_provincia$`1994` <- round(ub_weighted_mean_1994_provincia$`1994`, 0)
