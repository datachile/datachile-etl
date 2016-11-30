########
# 2011 #
########

# Median Wage by Gender by provincia
weighted_median_2011_provincia <- ddply(wage_by_gender_and_occupation_with_weights_2011, .(sex,occupation,provincia), summarise, FUN = matrixStats::weightedMedian(individual_income, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2011_provincia, colnames(weighted_median_2011_provincia), c("sex","occupation","provincia","2011"))
#weighted_median_2011_provincia <- insert_row(weighted_median_2011_provincia, c("Pa\u00eds", median(wage_by_gender_and_occupation_with_weights_2011$individual_income, na.rm = TRUE)), nrow(weighted_median_2011_provincia)+1)
weighted_median_2011_provincia$`2011` <- as.numeric(weighted_median_2011_provincia$`2011`)
weighted_median_2011_provincia$`2011` <- round(weighted_median_2011_provincia$`2011`, 0)
weighted_median_2011_provincia$`2011` <- as.numeric(weighted_median_2011_provincia$`2011`)
weighted_median_2011_provincia$`2011` <- round(weighted_median_2011_provincia$`2011`, 0)

# Average Wage by Gender by provincia
weighted_mean_2011_provincia <- ddply(wage_by_gender_and_occupation_with_weights_2011, .(sex,occupation,provincia), summarise, FUN = matrixStats::weightedMean(individual_income, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2011_provincia, colnames(weighted_mean_2011_provincia), c("sex","occupation","provincia","2011"))
weighted_mean_2011_provincia$`2011` <- as.numeric(weighted_mean_2011_provincia$`2011`)
weighted_mean_2011_provincia$`2011` <- round(weighted_mean_2011_provincia$`2011`, 0)
weighted_mean_2011_provincia$`2011` <- as.numeric(weighted_mean_2011_provincia$`2011`)
weighted_mean_2011_provincia$`2011` <- round(weighted_mean_2011_provincia$`2011`, 0)

# Lower Bound for Median Wage by Gender by provincia
lb_weighted_median_2011_provincia <- ddply(wage_by_gender_and_occupation_with_weights_2011, .(sex,occupation,provincia), summarise, FUN = lb_weighted_median_plyr(individual_income, exp_region))
setnames(lb_weighted_median_2011_provincia, colnames(lb_weighted_median_2011_provincia), c("sex","occupation","provincia","2011"))
lb_weighted_median_2011_provincia$`2011` <- as.numeric(lb_weighted_median_2011_provincia$`2011`)
lb_weighted_median_2011_provincia$`2011` <- round(lb_weighted_median_2011_provincia$`2011`, 0)
lb_weighted_median_2011_provincia$`2011` <- as.numeric(lb_weighted_median_2011_provincia$`2011`)
lb_weighted_median_2011_provincia$`2011` <- round(lb_weighted_median_2011_provincia$`2011`, 0)

# Upper Bound for Median Wage by Gender by provincia
ub_weighted_median_2011_provincia <- ddply(wage_by_gender_and_occupation_with_weights_2011, .(sex,occupation,provincia), summarise, FUN = ub_weighted_median_plyr(individual_income, exp_region))
setnames(ub_weighted_median_2011_provincia, colnames(ub_weighted_median_2011_provincia), c("sex","occupation","provincia","2011"))
ub_weighted_median_2011_provincia$`2011` <- as.numeric(ub_weighted_median_2011_provincia$`2011`)
ub_weighted_median_2011_provincia$`2011` <- round(ub_weighted_median_2011_provincia$`2011`, 0)

# Lower Bound for Mean Wage by Gender by provincia
lb_weighted_mean_2011_provincia <- ddply(wage_by_gender_and_occupation_with_weights_2011, .(sex,occupation,provincia), summarise, FUN = lb_weighted_mean_plyr(individual_income, exp_region))
setnames(lb_weighted_mean_2011_provincia, colnames(lb_weighted_mean_2011_provincia), c("sex","occupation","provincia","2011"))
lb_weighted_mean_2011_provincia$`2011` <- as.numeric(lb_weighted_mean_2011_provincia$`2011`)
lb_weighted_mean_2011_provincia$`2011` <- round(lb_weighted_mean_2011_provincia$`2011`, 0)

# Upper Bound for Mean Wage by Gender by provincia
ub_weighted_mean_2011_provincia <- ddply(wage_by_gender_and_occupation_with_weights_2011, .(sex,occupation,provincia), summarise, FUN = ub_weighted_mean_plyr(individual_income, exp_region))
setnames(ub_weighted_mean_2011_provincia, colnames(ub_weighted_mean_2011_provincia), c("sex","occupation","provincia","2011"))
ub_weighted_mean_2011_provincia$`2011` <- as.numeric(ub_weighted_mean_2011_provincia$`2011`)
ub_weighted_mean_2011_provincia$`2011` <- round(ub_weighted_mean_2011_provincia$`2011`, 0)
