########
# 2013 #
########

# Median by region
weighted_median_2013_region <- ddply(household_income_with_weights_2013, .(region), summarise, FUN = matrixStats::weightedMedian(per_capita_income, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2013_region, colnames(weighted_median_2013_region), c("region","2013"))
#weighted_median_2013_region <- insert_row(weighted_median_2013_region, c("Pa\u00eds", median(household_income_with_weights_2013$per_capita_income, na.rm = TRUE)), nrow(weighted_median_2013_region)+1)
weighted_median_2013_region$`2013` <- as.numeric(weighted_median_2013_region$`2013`)
weighted_median_2013_region$`2013` <- round(weighted_median_2013_region$`2013`, 0)

# Mean by region
weighted_mean_2013_region <- ddply(household_income_with_weights_2013, .(region), summarise, FUN = matrixStats::weightedMean(per_capita_income, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2013_region, colnames(weighted_mean_2013_region), c("region","2013"))
weighted_mean_2013_region$`2013` <- as.numeric(weighted_mean_2013_region$`2013`)
weighted_mean_2013_region$`2013` <- round(weighted_mean_2013_region$`2013`, 0)

# Gini by region
weighted_gini_2013_region <- ddply(household_income_with_weights_2013, .(region), summarise, FUN = SciencesPo::Gini(per_capita_income, weights = exp_region, na.rm = TRUE))
setnames(weighted_gini_2013_region, colnames(weighted_gini_2013_region), c("region","2013"))
weighted_gini_2013_region$`2013` <- as.numeric(weighted_gini_2013_region$`2013`)
weighted_gini_2013_region$`2013` <- round(weighted_gini_2013_region$`2013`, 3)

# Lower Bound for Median by region
lb_weighted_median_2013_region <- ddply(household_income_with_weights_2013, .(region), summarise, FUN = lb_weighted_median_plyr(per_capita_income, exp_region))
setnames(lb_weighted_median_2013_region, colnames(lb_weighted_median_2013_region), c("region","2013"))
lb_weighted_median_2013_region$`2013` <- as.numeric(lb_weighted_median_2013_region$`2013`)
lb_weighted_median_2013_region$`2013` <- round(lb_weighted_median_2013_region$`2013`, 0)

# Upper Bound for Median by region
ub_weighted_median_2013_region <- ddply(household_income_with_weights_2013, .(region), summarise, FUN = ub_weighted_median_plyr(per_capita_income, exp_region))
setnames(ub_weighted_median_2013_region, colnames(ub_weighted_median_2013_region), c("region","2013"))
ub_weighted_median_2013_region$`2013` <- as.numeric(ub_weighted_median_2013_region$`2013`)
ub_weighted_median_2013_region$`2013` <- round(ub_weighted_median_2013_region$`2013`, 0)

# Lower Bound for Mean by region
lb_weighted_mean_2013_region <- ddply(household_income_with_weights_2013, .(region), summarise, FUN = lb_weighted_mean_plyr(per_capita_income, exp_region))
setnames(lb_weighted_mean_2013_region, colnames(lb_weighted_mean_2013_region), c("region","2013"))
lb_weighted_mean_2013_region$`2013` <- as.numeric(lb_weighted_mean_2013_region$`2013`)
lb_weighted_mean_2013_region$`2013` <- round(lb_weighted_mean_2013_region$`2013`, 0)

# Upper Bound for Mean by region
ub_weighted_mean_2013_region <- ddply(household_income_with_weights_2013, .(region), summarise, FUN = ub_weighted_mean_plyr(per_capita_income, exp_region))
setnames(ub_weighted_mean_2013_region, colnames(ub_weighted_mean_2013_region), c("region","2013"))
ub_weighted_mean_2013_region$`2013` <- as.numeric(ub_weighted_mean_2013_region$`2013`)
ub_weighted_mean_2013_region$`2013` <- round(ub_weighted_mean_2013_region$`2013`, 0)

# Lower Bound for Gini by region
lb_weighted_gini_2013_region <- ddply(household_income_with_weights_2013, .(region), summarise, FUN = lb_weighted_gini_plyr(per_capita_income, exp_region))
setnames(lb_weighted_gini_2013_region, colnames(lb_weighted_gini_2013_region), c("region","2013"))
lb_weighted_gini_2013_region$`2013` <- as.numeric(lb_weighted_gini_2013_region$`2013`)
lb_weighted_gini_2013_region$`2013` <- round(lb_weighted_gini_2013_region$`2013`, 3)

# Upper Bound for Gini by region
ub_weighted_gini_2013_region <- ddply(household_income_with_weights_2013, .(region), summarise, FUN = ub_weighted_gini_plyr(per_capita_income, exp_region))
setnames(ub_weighted_gini_2013_region, colnames(ub_weighted_gini_2013_region), c("region","2013"))
ub_weighted_gini_2013_region$`2013` <- as.numeric(ub_weighted_gini_2013_region$`2013`)
ub_weighted_gini_2013_region$`2013` <- round(ub_weighted_gini_2013_region$`2013`, 3)
