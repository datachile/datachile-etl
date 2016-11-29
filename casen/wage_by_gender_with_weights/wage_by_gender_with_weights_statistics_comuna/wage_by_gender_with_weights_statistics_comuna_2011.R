########
# 2011 #
########

# Median by comuna
weighted_median_2011_comuna <- ddply(wage_by_gender_with_weights_2011, .(sex,comuna), summarise, FUN = matrixStats::weightedMedian(individual_income, w = exp_comuna, na.rm = TRUE))
setnames(weighted_median_2011_comuna, colnames(weighted_median_2011_comuna), c("sex","comuna","2011"))
#weighted_median_2011_comuna <- insert_row(weighted_median_2011_comuna, c("Pa\u00eds", median(wage_by_gender_with_weights_2011$individual_income, na.rm = TRUE)), nrow(weighted_median_2011_comuna)+1)
weighted_median_2011_comuna$`2011` <- as.numeric(weighted_median_2011_comuna$`2011`)
weighted_median_2011_comuna$`2011` <- round(weighted_median_2011_comuna$`2011`, 0)

# Mean by comuna
weighted_mean_2011_comuna <- ddply(wage_by_gender_with_weights_2011, .(sex,comuna), summarise, FUN = matrixStats::weightedMean(individual_income, w = exp_comuna, na.rm = TRUE))
setnames(weighted_mean_2011_comuna, colnames(weighted_mean_2011_comuna), c("sex","comuna","2011"))
weighted_mean_2011_comuna$`2011` <- as.numeric(weighted_mean_2011_comuna$`2011`)
weighted_mean_2011_comuna$`2011` <- round(weighted_mean_2011_comuna$`2011`, 0)

# Lower Bound for Median by comuna
lb_weighted_median_2011_comuna <- ddply(wage_by_gender_with_weights_2011, .(sex,comuna), summarise, FUN = lb_weighted_median_plyr(individual_income, exp_comuna))
setnames(lb_weighted_median_2011_comuna, colnames(lb_weighted_median_2011_comuna), c("sex","comuna","2011"))
lb_weighted_median_2011_comuna$`2011` <- as.numeric(lb_weighted_median_2011_comuna$`2011`)
lb_weighted_median_2011_comuna$`2011` <- round(lb_weighted_median_2011_comuna$`2011`, 0)

# Upper Bound for Median by comuna
ub_weighted_median_2011_comuna <- ddply(wage_by_gender_with_weights_2011, .(sex,comuna), summarise, FUN = ub_weighted_median_plyr(individual_income, exp_comuna))
setnames(ub_weighted_median_2011_comuna, colnames(ub_weighted_median_2011_comuna), c("sex","comuna","2011"))
ub_weighted_median_2011_comuna$`2011` <- as.numeric(ub_weighted_median_2011_comuna$`2011`)
ub_weighted_median_2011_comuna$`2011` <- round(ub_weighted_median_2011_comuna$`2011`, 0)

# Lower Bound for Mean by comuna
lb_weighted_mean_2011_comuna <- ddply(wage_by_gender_with_weights_2011, .(sex,comuna), summarise, FUN = lb_weighted_mean_plyr(individual_income, exp_comuna))
setnames(lb_weighted_mean_2011_comuna, colnames(lb_weighted_mean_2011_comuna), c("sex","comuna","2011"))
lb_weighted_mean_2011_comuna$`2011` <- as.numeric(lb_weighted_mean_2011_comuna$`2011`)
lb_weighted_mean_2011_comuna$`2011` <- round(lb_weighted_mean_2011_comuna$`2011`, 0)

# Upper Bound for Mean by comuna
ub_weighted_mean_2011_comuna <- ddply(wage_by_gender_with_weights_2011, .(sex,comuna), summarise, FUN = ub_weighted_mean_plyr(individual_income, exp_comuna))
setnames(ub_weighted_mean_2011_comuna, colnames(ub_weighted_mean_2011_comuna), c("sex","comuna","2011"))
ub_weighted_mean_2011_comuna$`2011` <- as.numeric(ub_weighted_mean_2011_comuna$`2011`)
ub_weighted_mean_2011_comuna$`2011` <- round(ub_weighted_mean_2011_comuna$`2011`, 0)
