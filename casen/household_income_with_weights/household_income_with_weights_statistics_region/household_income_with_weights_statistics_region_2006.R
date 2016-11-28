########
# 2006 #
########

# Median by region
weighted_median_2006_region <- ddply(household_income_with_weights_2006, .(region), summarise, FUN = matrixStats::weightedMedian(per_capita_income, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2006_region, colnames(weighted_median_2006_region), c("region","2006"))
#weighted_median_2006_region <- insert_row(weighted_median_2006_region, c("Pa\u00eds", median(household_income_with_weights_2006$per_capita_income, na.rm = TRUE)), nrow(weighted_median_2006_region)+1)
weighted_median_2006_region$`2006` <- as.numeric(weighted_median_2006_region$`2006`)
weighted_median_2006_region$`2006` <- round(weighted_median_2006_region$`2006`, 0)

# Mean by region
weighted_mean_2006_region <- ddply(household_income_with_weights_2006, .(region), summarise, FUN = matrixStats::weightedMean(per_capita_income, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2006_region, colnames(weighted_mean_2006_region), c("region","2006"))
weighted_mean_2006_region$`2006` <- as.numeric(weighted_mean_2006_region$`2006`)
weighted_mean_2006_region$`2006` <- round(weighted_mean_2006_region$`2006`, 0)

# Gini by region
weighted_gini_2006_region <- ddply(household_income_with_weights_2006, .(region), summarise, FUN = SciencesPo::Gini(per_capita_income, weights = exp_region, na.rm = TRUE))
setnames(weighted_gini_2006_region, colnames(weighted_gini_2006_region), c("region","2006"))
weighted_gini_2006_region$`2006` <- as.numeric(weighted_gini_2006_region$`2006`)
weighted_gini_2006_region$`2006` <- round(weighted_gini_2006_region$`2006`, 3)

# Lower Bound for Median by region
lb_weighted_median_2006_region <- ddply(household_income_with_weights_2006, .(region), summarise, FUN = lb_weighted_median_plyr(per_capita_income, exp_region))
setnames(lb_weighted_median_2006_region, colnames(lb_weighted_median_2006_region), c("region","2006"))
lb_weighted_median_2006_region$`2006` <- as.numeric(lb_weighted_median_2006_region$`2006`)
lb_weighted_median_2006_region$`2006` <- round(lb_weighted_median_2006_region$`2006`, 0)

# Upper Bound for Median by region
ub_weighted_median_2006_region <- ddply(household_income_with_weights_2006, .(region), summarise, FUN = ub_weighted_median_plyr(per_capita_income, exp_region))
setnames(ub_weighted_median_2006_region, colnames(ub_weighted_median_2006_region), c("region","2006"))
ub_weighted_median_2006_region$`2006` <- as.numeric(ub_weighted_median_2006_region$`2006`)
ub_weighted_median_2006_region$`2006` <- round(ub_weighted_median_2006_region$`2006`, 0)

# Lower Bound for Mean by region
lb_weighted_mean_2006_region <- ddply(household_income_with_weights_2006, .(region), summarise, FUN = lb_weighted_mean_plyr(per_capita_income, exp_region))
setnames(lb_weighted_mean_2006_region, colnames(lb_weighted_mean_2006_region), c("region","2006"))
lb_weighted_mean_2006_region$`2006` <- as.numeric(lb_weighted_mean_2006_region$`2006`)
lb_weighted_mean_2006_region$`2006` <- round(lb_weighted_mean_2006_region$`2006`, 0)

# Lower Bound for Gini by region
lb_weighted_gini_2006_region <- ddply(household_income_with_weights_2006, .(region), summarise, FUN = lb_weighted_gini_plyr(per_capita_income, exp_region))
setnames(lb_weighted_gini_2006_region, colnames(lb_weighted_gini_2006_region), c("region","2006"))
lb_weighted_gini_2006_region$`2006` <- as.numeric(lb_weighted_gini_2006_region$`2006`)
lb_weighted_gini_2006_region$`2006` <- round(lb_weighted_gini_2006_region$`2006`, 3)

# Upper Bound for Gini by region
ub_weighted_gini_2006_region <- ddply(household_income_with_weights_2006, .(region), summarise, FUN = ub_weighted_gini_plyr(per_capita_income, exp_region))
setnames(ub_weighted_gini_2006_region, colnames(ub_weighted_gini_2006_region), c("region","2006"))
ub_weighted_gini_2006_region$`2006` <- as.numeric(ub_weighted_gini_2006_region$`2006`)
ub_weighted_gini_2006_region$`2006` <- round(ub_weighted_gini_2006_region$`2006`, 3)
