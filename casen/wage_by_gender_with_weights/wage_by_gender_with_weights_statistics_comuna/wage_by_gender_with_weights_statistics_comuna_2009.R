########
# 2009 #
########

# Median by comuna
weighted_median_2009_comuna <- ddply(wage_by_gender_with_weights_2009, .(sex,comuna), summarise, FUN = matrixStats::weightedMedian(individual_income, w = exp_comuna, na.rm = TRUE))
setnames(weighted_median_2009_comuna, colnames(weighted_median_2009_comuna), c("sex","comuna","2009"))
#weighted_median_2009_comuna <- insert_row(weighted_median_2009_comuna, c("Pa\u00eds", median(wage_by_gender_with_weights_2009$individual_income, na.rm = TRUE)), nrow(weighted_median_2009_comuna)+1)
weighted_median_2009_comuna$`2009` <- as.numeric(weighted_median_2009_comuna$`2009`)
weighted_median_2009_comuna$`2009` <- round(weighted_median_2009_comuna$`2009`, 0)

# Mean by comuna
weighted_mean_2009_comuna <- ddply(wage_by_gender_with_weights_2009, .(sex,comuna), summarise, FUN = matrixStats::weightedMean(individual_income, w = exp_comuna, na.rm = TRUE))
setnames(weighted_mean_2009_comuna, colnames(weighted_mean_2009_comuna), c("sex","comuna","2009"))
weighted_mean_2009_comuna$`2009` <- as.numeric(weighted_mean_2009_comuna$`2009`)
weighted_mean_2009_comuna$`2009` <- round(weighted_mean_2009_comuna$`2009`, 0)

# Lower Bound for Median by comuna
lb_weighted_median_2009_comuna <- ddply(wage_by_gender_with_weights_2009, .(sex,comuna), summarise, FUN = lb_weighted_median_plyr(individual_income, exp_comuna))
setnames(lb_weighted_median_2009_comuna, colnames(lb_weighted_median_2009_comuna), c("sex","comuna","2009"))
lb_weighted_median_2009_comuna$`2009` <- as.numeric(lb_weighted_median_2009_comuna$`2009`)
lb_weighted_median_2009_comuna$`2009` <- round(lb_weighted_median_2009_comuna$`2009`, 0)

# Upper Bound for Median by comuna
ub_weighted_median_2009_comuna <- ddply(wage_by_gender_with_weights_2009, .(sex,comuna), summarise, FUN = ub_weighted_median_plyr(individual_income, exp_comuna))
setnames(ub_weighted_median_2009_comuna, colnames(ub_weighted_median_2009_comuna), c("sex","comuna","2009"))
ub_weighted_median_2009_comuna$`2009` <- as.numeric(ub_weighted_median_2009_comuna$`2009`)
ub_weighted_median_2009_comuna$`2009` <- round(ub_weighted_median_2009_comuna$`2009`, 0)

# Lower Bound for Mean by comuna
lb_weighted_mean_2009_comuna <- ddply(wage_by_gender_with_weights_2009, .(sex,comuna), summarise, FUN = lb_weighted_mean_plyr(individual_income, exp_comuna))
setnames(lb_weighted_mean_2009_comuna, colnames(lb_weighted_mean_2009_comuna), c("sex","comuna","2009"))
lb_weighted_mean_2009_comuna$`2009` <- as.numeric(lb_weighted_mean_2009_comuna$`2009`)
lb_weighted_mean_2009_comuna$`2009` <- round(lb_weighted_mean_2009_comuna$`2009`, 0)

# Upper Bound for Mean by comuna
ub_weighted_mean_2009_comuna <- ddply(wage_by_gender_with_weights_2009, .(sex,comuna), summarise, FUN = ub_weighted_mean_plyr(individual_income, exp_comuna))
setnames(ub_weighted_mean_2009_comuna, colnames(ub_weighted_mean_2009_comuna), c("sex","comuna","2009"))
ub_weighted_mean_2009_comuna$`2009` <- as.numeric(ub_weighted_mean_2009_comuna$`2009`)
ub_weighted_mean_2009_comuna$`2009` <- round(ub_weighted_mean_2009_comuna$`2009`, 0)
