########
# 1996 #
########

# Median Wage by Gender by country
weighted_median_1996_country <- ddply(wage_by_gender_with_weights_1996, .(sex), summarise, FUN = matrixStats::weightedMedian(individual_income, w = exp_region, na.rm = TRUE))
setnames(weighted_median_1996_country, colnames(weighted_median_1996_country), c("sex","1996"))
#weighted_median_1996_country <- insert_row(weighted_median_1996_country, c("Pa\u00eds", median(wage_by_gender_with_weights_1996$individual_income, na.rm = TRUE)), nrow(weighted_median_1996_country)+1)
weighted_median_1996_country$`1996` <- as.numeric(weighted_median_1996_country$`1996`)
weighted_median_1996_country$`1996` <- round(weighted_median_1996_country$`1996`, 0)
weighted_median_1996_country$`1996` <- as.numeric(weighted_median_1996_country$`1996`)
weighted_median_1996_country$`1996` <- round(weighted_median_1996_country$`1996`, 0)

# Average Wage by Gender by country
weighted_mean_1996_country <- ddply(wage_by_gender_with_weights_1996, .(sex), summarise, FUN = matrixStats::weightedMean(individual_income, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_1996_country, colnames(weighted_mean_1996_country), c("sex","1996"))
weighted_mean_1996_country$`1996` <- as.numeric(weighted_mean_1996_country$`1996`)
weighted_mean_1996_country$`1996` <- round(weighted_mean_1996_country$`1996`, 0)
weighted_mean_1996_country$`1996` <- as.numeric(weighted_mean_1996_country$`1996`)
weighted_mean_1996_country$`1996` <- round(weighted_mean_1996_country$`1996`, 0)

# Lower Bound for Median Wage by Gender by country
lb_weighted_median_1996_country <- ddply(wage_by_gender_with_weights_1996, .(sex), summarise, FUN = lb_weighted_median_plyr(individual_income, exp_region))
setnames(lb_weighted_median_1996_country, colnames(lb_weighted_median_1996_country), c("sex","1996"))
lb_weighted_median_1996_country$`1996` <- as.numeric(lb_weighted_median_1996_country$`1996`)
lb_weighted_median_1996_country$`1996` <- round(lb_weighted_median_1996_country$`1996`, 0)
lb_weighted_median_1996_country$`1996` <- as.numeric(lb_weighted_median_1996_country$`1996`)
lb_weighted_median_1996_country$`1996` <- round(lb_weighted_median_1996_country$`1996`, 0)

# Upper Bound for Median Wage by Gender by country
ub_weighted_median_1996_country <- ddply(wage_by_gender_with_weights_1996, .(sex), summarise, FUN = ub_weighted_median_plyr(individual_income, exp_region))
setnames(ub_weighted_median_1996_country, colnames(ub_weighted_median_1996_country), c("sex","1996"))
ub_weighted_median_1996_country$`1996` <- as.numeric(ub_weighted_median_1996_country$`1996`)
ub_weighted_median_1996_country$`1996` <- round(ub_weighted_median_1996_country$`1996`, 0)

# Lower Bound for Mean Wage by Gender by country
lb_weighted_mean_1996_country <- ddply(wage_by_gender_with_weights_1996, .(sex), summarise, FUN = lb_weighted_mean_plyr(individual_income, exp_region))
setnames(lb_weighted_mean_1996_country, colnames(lb_weighted_mean_1996_country), c("sex","1996"))
lb_weighted_mean_1996_country$`1996` <- as.numeric(lb_weighted_mean_1996_country$`1996`)
lb_weighted_mean_1996_country$`1996` <- round(lb_weighted_mean_1996_country$`1996`, 0)

# Upper Bound for Mean Wage by Gender by country
ub_weighted_mean_1996_country <- ddply(wage_by_gender_with_weights_1996, .(sex), summarise, FUN = ub_weighted_mean_plyr(individual_income, exp_region))
setnames(ub_weighted_mean_1996_country, colnames(ub_weighted_mean_1996_country), c("sex","1996"))
ub_weighted_mean_1996_country$`1996` <- as.numeric(ub_weighted_mean_1996_country$`1996`)
ub_weighted_mean_1996_country$`1996` <- round(ub_weighted_mean_1996_country$`1996`, 0)
