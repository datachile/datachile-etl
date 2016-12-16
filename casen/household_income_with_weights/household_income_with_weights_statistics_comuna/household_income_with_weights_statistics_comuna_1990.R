########
# 1990 #
########

# Median by comuna
weighted_median_1990_comuna <- ddply(household_income_with_weights_1990, .(comuna), summarise, FUN = matrixStats::weightedMedian(per_capita_income, w = exp_region, na.rm = TRUE))
setnames(weighted_median_1990_comuna, colnames(weighted_median_1990_comuna), c("comuna","1990"))
#weighted_median_1990_comuna <- insert_row(weighted_median_1990_comuna, c("Pa\u00eds", median(household_income_with_weights_1990$per_capita_income, na.rm = TRUE)), nrow(weighted_median_1990_comuna)+1)
weighted_median_1990_comuna$`1990` <- as.numeric(weighted_median_1990_comuna$`1990`)
weighted_median_1990_comuna$`1990` <- round(weighted_median_1990_comuna$`1990`, 0)

# Mean by comuna
weighted_mean_1990_comuna <- ddply(household_income_with_weights_1990, .(comuna), summarise, FUN = matrixStats::weightedMean(per_capita_income, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_1990_comuna, colnames(weighted_mean_1990_comuna), c("comuna","1990"))
weighted_mean_1990_comuna$`1990` <- as.numeric(weighted_mean_1990_comuna$`1990`)
weighted_mean_1990_comuna$`1990` <- round(weighted_mean_1990_comuna$`1990`, 0)

# Gini by comuna
weighted_gini_1990_comuna <- ddply(household_income_with_weights_1990, .(comuna), summarise, FUN = SciencesPo::Gini(per_capita_income, weights = exp_region, na.rm = TRUE))
setnames(weighted_gini_1990_comuna, colnames(weighted_gini_1990_comuna), c("comuna","1990"))
weighted_gini_1990_comuna$`1990` <- as.numeric(weighted_gini_1990_comuna$`1990`)
weighted_gini_1990_comuna$`1990` <- round(weighted_gini_1990_comuna$`1990`, 3)

# Lower Bound for Median by comuna
lb_weighted_median_1990_comuna <- ddply(household_income_with_weights_1990, .(comuna), summarise, FUN = lb_weighted_median_plyr(per_capita_income, exp_region))
setnames(lb_weighted_median_1990_comuna, colnames(lb_weighted_median_1990_comuna), c("comuna","1990"))
lb_weighted_median_1990_comuna$`1990` <- as.numeric(lb_weighted_median_1990_comuna$`1990`)
lb_weighted_median_1990_comuna$`1990` <- round(lb_weighted_median_1990_comuna$`1990`, 0)

# Upper Bound for Median by comuna
ub_weighted_median_1990_comuna <- ddply(household_income_with_weights_1990, .(comuna), summarise, FUN = ub_weighted_median_plyr(per_capita_income, exp_region))
setnames(ub_weighted_median_1990_comuna, colnames(ub_weighted_median_1990_comuna), c("comuna","1990"))
ub_weighted_median_1990_comuna$`1990` <- as.numeric(ub_weighted_median_1990_comuna$`1990`)
ub_weighted_median_1990_comuna$`1990` <- round(ub_weighted_median_1990_comuna$`1990`, 0)

# Lower Bound for Mean by comuna
lb_weighted_mean_1990_comuna <- ddply(household_income_with_weights_1990, .(comuna), summarise, FUN = lb_weighted_mean_plyr(per_capita_income, exp_region))
setnames(lb_weighted_mean_1990_comuna, colnames(lb_weighted_mean_1990_comuna), c("comuna","1990"))
lb_weighted_mean_1990_comuna$`1990` <- as.numeric(lb_weighted_mean_1990_comuna$`1990`)
lb_weighted_mean_1990_comuna$`1990` <- round(lb_weighted_mean_1990_comuna$`1990`, 0)

# Upper Bound for Mean by comuna
ub_weighted_mean_1990_comuna <- ddply(household_income_with_weights_1990, .(comuna), summarise, FUN = ub_weighted_mean_plyr(per_capita_income, exp_region))
setnames(ub_weighted_mean_1990_comuna, colnames(ub_weighted_mean_1990_comuna), c("comuna","1990"))
ub_weighted_mean_1990_comuna$`1990` <- as.numeric(ub_weighted_mean_1990_comuna$`1990`)
ub_weighted_mean_1990_comuna$`1990` <- round(ub_weighted_mean_1990_comuna$`1990`, 0)

# Lower Bound for Gini by comuna
lb_weighted_gini_1990_comuna <- ddply(household_income_with_weights_1990, .(comuna), summarise, FUN = lb_weighted_gini_plyr(per_capita_income, exp_region))
setnames(lb_weighted_gini_1990_comuna, colnames(lb_weighted_gini_1990_comuna), c("comuna","1990"))
lb_weighted_gini_1990_comuna$`1990` <- as.numeric(lb_weighted_gini_1990_comuna$`1990`)
lb_weighted_gini_1990_comuna$`1990` <- round(lb_weighted_gini_1990_comuna$`1990`, 3)

# Upper Bound for Gini by comuna
ub_weighted_gini_1990_comuna <- ddply(household_income_with_weights_1990, .(comuna), summarise, FUN = ub_weighted_gini_plyr(per_capita_income, exp_region))
setnames(ub_weighted_gini_1990_comuna, colnames(ub_weighted_gini_1990_comuna), c("comuna","1990"))
ub_weighted_gini_1990_comuna$`1990` <- as.numeric(ub_weighted_gini_1990_comuna$`1990`)
ub_weighted_gini_1990_comuna$`1990` <- round(ub_weighted_gini_1990_comuna$`1990`, 3)
