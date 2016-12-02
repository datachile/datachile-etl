########
# 1994 #
########

# Median Wage by Gender by comuna
weighted_median_1994_comuna <- ddply(wage_by_gender_with_weights_1994, .(sex,comuna), summarise, FUN = matrixStats::weightedMedian(individual_income, w = exp_comuna, na.rm = TRUE))
setnames(weighted_median_1994_comuna, colnames(weighted_median_1994_comuna), c("sex","comuna","1994"))
#weighted_median_1994_comuna <- insert_row(weighted_median_1994_comuna, c("Pa\u00eds", median(wage_by_gender_with_weights_1994$individual_income, na.rm = TRUE)), nrow(weighted_median_1994_comuna)+1)
weighted_median_1994_comuna$`1994` <- as.numeric(weighted_median_1994_comuna$`1994`)
weighted_median_1994_comuna$`1994` <- round(weighted_median_1994_comuna$`1994`, 0)
weighted_median_1994_comuna$`1994` <- as.numeric(weighted_median_1994_comuna$`1994`)
weighted_median_1994_comuna$`1994` <- round(weighted_median_1994_comuna$`1994`, 0)

# Average Wage by Gender by comuna
weighted_mean_1994_comuna <- ddply(wage_by_gender_with_weights_1994, .(sex,comuna), summarise, FUN = matrixStats::weightedMean(individual_income, w = exp_comuna, na.rm = TRUE))
setnames(weighted_mean_1994_comuna, colnames(weighted_mean_1994_comuna), c("sex","comuna","1994"))
weighted_mean_1994_comuna$`1994` <- as.numeric(weighted_mean_1994_comuna$`1994`)
weighted_mean_1994_comuna$`1994` <- round(weighted_mean_1994_comuna$`1994`, 0)
weighted_mean_1994_comuna$`1994` <- as.numeric(weighted_mean_1994_comuna$`1994`)
weighted_mean_1994_comuna$`1994` <- round(weighted_mean_1994_comuna$`1994`, 0)

# Lower Bound for Median Wage by Gender by comuna
lb_weighted_median_1994_comuna <- ddply(wage_by_gender_with_weights_1994, .(sex,comuna), summarise, FUN = lb_weighted_median_plyr(individual_income, exp_comuna))
setnames(lb_weighted_median_1994_comuna, colnames(lb_weighted_median_1994_comuna), c("sex","comuna","1994"))
lb_weighted_median_1994_comuna$`1994` <- as.numeric(lb_weighted_median_1994_comuna$`1994`)
lb_weighted_median_1994_comuna$`1994` <- round(lb_weighted_median_1994_comuna$`1994`, 0)
lb_weighted_median_1994_comuna$`1994` <- as.numeric(lb_weighted_median_1994_comuna$`1994`)
lb_weighted_median_1994_comuna$`1994` <- round(lb_weighted_median_1994_comuna$`1994`, 0)

# Upper Bound for Median Wage by Gender by comuna
ub_weighted_median_1994_comuna <- ddply(wage_by_gender_with_weights_1994, .(sex,comuna), summarise, FUN = ub_weighted_median_plyr(individual_income, exp_comuna))
setnames(ub_weighted_median_1994_comuna, colnames(ub_weighted_median_1994_comuna), c("sex","comuna","1994"))
ub_weighted_median_1994_comuna$`1994` <- as.numeric(ub_weighted_median_1994_comuna$`1994`)
ub_weighted_median_1994_comuna$`1994` <- round(ub_weighted_median_1994_comuna$`1994`, 0)

# Lower Bound for Mean Wage by Gender by comuna
lb_weighted_mean_1994_comuna <- ddply(wage_by_gender_with_weights_1994, .(sex,comuna), summarise, FUN = lb_weighted_mean_plyr(individual_income, exp_comuna))
setnames(lb_weighted_mean_1994_comuna, colnames(lb_weighted_mean_1994_comuna), c("sex","comuna","1994"))
lb_weighted_mean_1994_comuna$`1994` <- as.numeric(lb_weighted_mean_1994_comuna$`1994`)
lb_weighted_mean_1994_comuna$`1994` <- round(lb_weighted_mean_1994_comuna$`1994`, 0)

# Upper Bound for Mean Wage by Gender by comuna
ub_weighted_mean_1994_comuna <- ddply(wage_by_gender_with_weights_1994, .(sex,comuna), summarise, FUN = ub_weighted_mean_plyr(individual_income, exp_comuna))
setnames(ub_weighted_mean_1994_comuna, colnames(ub_weighted_mean_1994_comuna), c("sex","comuna","1994"))
ub_weighted_mean_1994_comuna$`1994` <- as.numeric(ub_weighted_mean_1994_comuna$`1994`)
ub_weighted_mean_1994_comuna$`1994` <- round(ub_weighted_mean_1994_comuna$`1994`, 0)
