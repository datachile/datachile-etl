########
# 2009 #
########

# Median Wage by Gender by country
weighted_median_2009_country <- ddply(wage_by_gender_with_weights_2009, .(sex), summarise, FUN = matrixStats::weightedMedian(individual_income, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2009_country, colnames(weighted_median_2009_country), c("sex","2009"))
#weighted_median_2009_country <- insert_row(weighted_median_2009_country, c("Pa\u00eds", median(wage_by_gender_with_weights_2009$individual_income, na.rm = TRUE)), nrow(weighted_median_2009_country)+1)
weighted_median_2009_country$`2009` <- as.numeric(weighted_median_2009_country$`2009`)
weighted_median_2009_country$`2009` <- round(weighted_median_2009_country$`2009`, 0)
weighted_median_2009_country$`2009` <- as.numeric(weighted_median_2009_country$`2009`)
weighted_median_2009_country$`2009` <- round(weighted_median_2009_country$`2009`, 0)

# Average Wage by Gender by country
weighted_mean_2009_country <- ddply(wage_by_gender_with_weights_2009, .(sex), summarise, FUN = matrixStats::weightedMean(individual_income, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2009_country, colnames(weighted_mean_2009_country), c("sex","2009"))
weighted_mean_2009_country$`2009` <- as.numeric(weighted_mean_2009_country$`2009`)
weighted_mean_2009_country$`2009` <- round(weighted_mean_2009_country$`2009`, 0)
weighted_mean_2009_country$`2009` <- as.numeric(weighted_mean_2009_country$`2009`)
weighted_mean_2009_country$`2009` <- round(weighted_mean_2009_country$`2009`, 0)

# Lower Bound for Median Wage by Gender by country
lb_weighted_median_2009_country <- ddply(wage_by_gender_with_weights_2009, .(sex), summarise, FUN = lb_weighted_median_plyr(individual_income, exp_region))
setnames(lb_weighted_median_2009_country, colnames(lb_weighted_median_2009_country), c("sex","2009"))
lb_weighted_median_2009_country$`2009` <- as.numeric(lb_weighted_median_2009_country$`2009`)
lb_weighted_median_2009_country$`2009` <- round(lb_weighted_median_2009_country$`2009`, 0)
lb_weighted_median_2009_country$`2009` <- as.numeric(lb_weighted_median_2009_country$`2009`)
lb_weighted_median_2009_country$`2009` <- round(lb_weighted_median_2009_country$`2009`, 0)

# Upper Bound for Median Wage by Gender by country
ub_weighted_median_2009_country <- ddply(wage_by_gender_with_weights_2009, .(sex), summarise, FUN = ub_weighted_median_plyr(individual_income, exp_region))
setnames(ub_weighted_median_2009_country, colnames(ub_weighted_median_2009_country), c("sex","2009"))
ub_weighted_median_2009_country$`2009` <- as.numeric(ub_weighted_median_2009_country$`2009`)
ub_weighted_median_2009_country$`2009` <- round(ub_weighted_median_2009_country$`2009`, 0)

# Lower Bound for Mean Wage by Gender by country
lb_weighted_mean_2009_country <- ddply(wage_by_gender_with_weights_2009, .(sex), summarise, FUN = lb_weighted_mean_plyr(individual_income, exp_region))
setnames(lb_weighted_mean_2009_country, colnames(lb_weighted_mean_2009_country), c("sex","2009"))
lb_weighted_mean_2009_country$`2009` <- as.numeric(lb_weighted_mean_2009_country$`2009`)
lb_weighted_mean_2009_country$`2009` <- round(lb_weighted_mean_2009_country$`2009`, 0)

# Upper Bound for Mean Wage by Gender by country
ub_weighted_mean_2009_country <- ddply(wage_by_gender_with_weights_2009, .(sex), summarise, FUN = ub_weighted_mean_plyr(individual_income, exp_region))
setnames(ub_weighted_mean_2009_country, colnames(ub_weighted_mean_2009_country), c("sex","2009"))
ub_weighted_mean_2009_country$`2009` <- as.numeric(ub_weighted_mean_2009_country$`2009`)
ub_weighted_mean_2009_country$`2009` <- round(ub_weighted_mean_2009_country$`2009`, 0)
