########
# 2015 #
########

# Median Wage by Gender by country
weighted_median_2015_country <- ddply(wage_by_gender_and_branch_with_weights_2015, .(sex,branch), summarise, FUN = matrixStats::weightedMedian(individual_income, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2015_country, colnames(weighted_median_2015_country), c("sex","branch","2015"))
#weighted_median_2015_country <- insert_row(weighted_median_2015_country, c("Pa\u00eds", median(wage_by_gender_and_branch_with_weights_2015$individual_income, na.rm = TRUE)), nrow(weighted_median_2015_country)+1)
weighted_median_2015_country$`2015` <- as.numeric(weighted_median_2015_country$`2015`)
weighted_median_2015_country$`2015` <- round(weighted_median_2015_country$`2015`, 0)
weighted_median_2015_country$`2015` <- as.numeric(weighted_median_2015_country$`2015`)
weighted_median_2015_country$`2015` <- round(weighted_median_2015_country$`2015`, 0)

# Average Wage by Gender by country
weighted_mean_2015_country <- ddply(wage_by_gender_and_branch_with_weights_2015, .(sex,branch), summarise, FUN = matrixStats::weightedMean(individual_income, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2015_country, colnames(weighted_mean_2015_country), c("sex","branch","2015"))
weighted_mean_2015_country$`2015` <- as.numeric(weighted_mean_2015_country$`2015`)
weighted_mean_2015_country$`2015` <- round(weighted_mean_2015_country$`2015`, 0)
weighted_mean_2015_country$`2015` <- as.numeric(weighted_mean_2015_country$`2015`)
weighted_mean_2015_country$`2015` <- round(weighted_mean_2015_country$`2015`, 0)

# Lower Bound for Median Wage by Gender by country
lb_weighted_median_2015_country <- ddply(wage_by_gender_and_branch_with_weights_2015, .(sex,branch), summarise, FUN = lb_weighted_median_plyr(individual_income, exp_region))
setnames(lb_weighted_median_2015_country, colnames(lb_weighted_median_2015_country), c("sex","branch","2015"))
lb_weighted_median_2015_country$`2015` <- as.numeric(lb_weighted_median_2015_country$`2015`)
lb_weighted_median_2015_country$`2015` <- round(lb_weighted_median_2015_country$`2015`, 0)
lb_weighted_median_2015_country$`2015` <- as.numeric(lb_weighted_median_2015_country$`2015`)
lb_weighted_median_2015_country$`2015` <- round(lb_weighted_median_2015_country$`2015`, 0)

# Upper Bound for Median Wage by Gender by country
ub_weighted_median_2015_country <- ddply(wage_by_gender_and_branch_with_weights_2015, .(sex,branch), summarise, FUN = ub_weighted_median_plyr(individual_income, exp_region))
setnames(ub_weighted_median_2015_country, colnames(ub_weighted_median_2015_country), c("sex","branch","2015"))
ub_weighted_median_2015_country$`2015` <- as.numeric(ub_weighted_median_2015_country$`2015`)
ub_weighted_median_2015_country$`2015` <- round(ub_weighted_median_2015_country$`2015`, 0)

# Lower Bound for Mean Wage by Gender by country
lb_weighted_mean_2015_country <- ddply(wage_by_gender_and_branch_with_weights_2015, .(sex,branch), summarise, FUN = lb_weighted_mean_plyr(individual_income, exp_region))
setnames(lb_weighted_mean_2015_country, colnames(lb_weighted_mean_2015_country), c("sex","branch","2015"))
lb_weighted_mean_2015_country$`2015` <- as.numeric(lb_weighted_mean_2015_country$`2015`)
lb_weighted_mean_2015_country$`2015` <- round(lb_weighted_mean_2015_country$`2015`, 0)

# Upper Bound for Mean Wage by Gender by country
ub_weighted_mean_2015_country <- ddply(wage_by_gender_and_branch_with_weights_2015, .(sex,branch), summarise, FUN = ub_weighted_mean_plyr(individual_income, exp_region))
setnames(ub_weighted_mean_2015_country, colnames(ub_weighted_mean_2015_country), c("sex","branch","2015"))
ub_weighted_mean_2015_country$`2015` <- as.numeric(ub_weighted_mean_2015_country$`2015`)
ub_weighted_mean_2015_country$`2015` <- round(ub_weighted_mean_2015_country$`2015`, 0)
