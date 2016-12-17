########
# 2003 #
########

# Median by provincia
weighted_median_2003_provincia <- ddply(household_income_2003, .(provincia), summarise, FUN = matrixStats::weightedMedian(per_capita_income, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2003_provincia, colnames(weighted_median_2003_provincia), c("provincia","2003"))
#weighted_median_2003_provincia <- insert_row(weighted_median_2003_provincia, c("Pa\u00eds", median(household_income_2003$per_capita_income, na.rm = TRUE)), nrow(weighted_median_2003_provincia)+1)
weighted_median_2003_provincia$`2003` <- as.numeric(weighted_median_2003_provincia$`2003`)
weighted_median_2003_provincia$`2003` <- round(weighted_median_2003_provincia$`2003`, 0)

# Mean by provincia
weighted_mean_2003_provincia <- ddply(household_income_2003, .(provincia), summarise, FUN = matrixStats::weightedMean(per_capita_income, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2003_provincia, colnames(weighted_mean_2003_provincia), c("provincia","2003"))
weighted_mean_2003_provincia$`2003` <- as.numeric(weighted_mean_2003_provincia$`2003`)
weighted_mean_2003_provincia$`2003` <- round(weighted_mean_2003_provincia$`2003`, 0)

# Gini by provincia
weighted_gini_2003_provincia <- ddply(household_income_2003, .(provincia), summarise, FUN = SciencesPo::Gini(per_capita_income, weights = exp_region, na.rm = TRUE))
setnames(weighted_gini_2003_provincia, colnames(weighted_gini_2003_provincia), c("provincia","2003"))
weighted_gini_2003_provincia$`2003` <- as.numeric(weighted_gini_2003_provincia$`2003`)
weighted_gini_2003_provincia$`2003` <- round(weighted_gini_2003_provincia$`2003`, 3)

# Lower Bound for Median by provincia
lb_weighted_median_2003_provincia <- ddply(household_income_2003, .(provincia), summarise, FUN = lb_weighted_median_plyr(per_capita_income, exp_region))
setnames(lb_weighted_median_2003_provincia, colnames(lb_weighted_median_2003_provincia), c("provincia","2003"))
lb_weighted_median_2003_provincia$`2003` <- as.numeric(lb_weighted_median_2003_provincia$`2003`)
lb_weighted_median_2003_provincia$`2003` <- round(lb_weighted_median_2003_provincia$`2003`, 0)

# Upper Bound for Median by provincia
ub_weighted_median_2003_provincia <- ddply(household_income_2003, .(provincia), summarise, FUN = ub_weighted_median_plyr(per_capita_income, exp_region))
setnames(ub_weighted_median_2003_provincia, colnames(ub_weighted_median_2003_provincia), c("provincia","2003"))
ub_weighted_median_2003_provincia$`2003` <- as.numeric(ub_weighted_median_2003_provincia$`2003`)
ub_weighted_median_2003_provincia$`2003` <- round(ub_weighted_median_2003_provincia$`2003`, 0)

# Lower Bound for Mean by provincia
lb_weighted_mean_2003_provincia <- ddply(household_income_2003, .(provincia), summarise, FUN = lb_weighted_mean_plyr(per_capita_income, exp_region))
setnames(lb_weighted_mean_2003_provincia, colnames(lb_weighted_mean_2003_provincia), c("provincia","2003"))
lb_weighted_mean_2003_provincia$`2003` <- as.numeric(lb_weighted_mean_2003_provincia$`2003`)
lb_weighted_mean_2003_provincia$`2003` <- round(lb_weighted_mean_2003_provincia$`2003`, 0)

# Upper Bound for Mean by provincia
ub_weighted_mean_2003_provincia <- ddply(household_income_2003, .(provincia), summarise, FUN = ub_weighted_mean_plyr(per_capita_income, exp_region))
setnames(ub_weighted_mean_2003_provincia, colnames(ub_weighted_mean_2003_provincia), c("provincia","2003"))
ub_weighted_mean_2003_provincia$`2003` <- as.numeric(ub_weighted_mean_2003_provincia$`2003`)
ub_weighted_mean_2003_provincia$`2003` <- round(ub_weighted_mean_2003_provincia$`2003`, 0)

# Lower Bound for Gini by provincia
lb_weighted_gini_2003_provincia <- ddply(household_income_2003, .(provincia), summarise, FUN = lb_weighted_gini_plyr(per_capita_income, exp_region))
setnames(lb_weighted_gini_2003_provincia, colnames(lb_weighted_gini_2003_provincia), c("provincia","2003"))
lb_weighted_gini_2003_provincia$`2003` <- as.numeric(lb_weighted_gini_2003_provincia$`2003`)
lb_weighted_gini_2003_provincia$`2003` <- round(lb_weighted_gini_2003_provincia$`2003`, 3)

# Upper Bound for Gini by provincia
ub_weighted_gini_2003_provincia <- ddply(household_income_2003, .(provincia), summarise, FUN = ub_weighted_gini_plyr(per_capita_income, exp_region))
setnames(ub_weighted_gini_2003_provincia, colnames(ub_weighted_gini_2003_provincia), c("provincia","2003"))
ub_weighted_gini_2003_provincia$`2003` <- as.numeric(ub_weighted_gini_2003_provincia$`2003`)
ub_weighted_gini_2003_provincia$`2003` <- round(ub_weighted_gini_2003_provincia$`2003`, 3)
