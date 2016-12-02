########
# 2000 #
########

# Median by comuna
weighted_median_2000_comuna <- ddply(wage_by_gender_with_weights_2000, .(sex,comuna), summarise, FUN = matrixStats::weightedMedian(individual_income, w = exp_comuna, na.rm = TRUE))
setnames(weighted_median_2000_comuna, colnames(weighted_median_2000_comuna), c("sex","comuna","2000"))
#weighted_median_2000_comuna <- insert_row(weighted_median_2000_comuna, c("Pa\u00eds", median(wage_by_gender_with_weights_2000$individual_income, na.rm = TRUE)), nrow(weighted_median_2000_comuna)+1)
weighted_median_2000_comuna$`2000` <- as.numeric(weighted_median_2000_comuna$`2000`)
weighted_median_2000_comuna$`2000` <- round(weighted_median_2000_comuna$`2000`, 0)

# Mean by comuna
weighted_mean_2000_comuna <- ddply(wage_by_gender_with_weights_2000, .(sex,comuna), summarise, FUN = matrixStats::weightedMean(individual_income, w = exp_comuna, na.rm = TRUE))
setnames(weighted_mean_2000_comuna, colnames(weighted_mean_2000_comuna), c("sex","comuna","2000"))
weighted_mean_2000_comuna$`2000` <- as.numeric(weighted_mean_2000_comuna$`2000`)
weighted_mean_2000_comuna$`2000` <- round(weighted_mean_2000_comuna$`2000`, 0)

# Lower Bound for Median by comuna
lb_weighted_median_2000_comuna <- ddply(wage_by_gender_with_weights_2000, .(sex,comuna), summarise, FUN = lb_weighted_median_plyr(individual_income, exp_comuna))
setnames(lb_weighted_median_2000_comuna, colnames(lb_weighted_median_2000_comuna), c("sex","comuna","2000"))
lb_weighted_median_2000_comuna$`2000` <- as.numeric(lb_weighted_median_2000_comuna$`2000`)
lb_weighted_median_2000_comuna$`2000` <- round(lb_weighted_median_2000_comuna$`2000`, 0)

# Upper Bound for Median by comuna
ub_weighted_median_2000_comuna <- ddply(wage_by_gender_with_weights_2000, .(sex,comuna), summarise, FUN = ub_weighted_median_plyr(individual_income, exp_comuna))
setnames(ub_weighted_median_2000_comuna, colnames(ub_weighted_median_2000_comuna), c("sex","comuna","2000"))
ub_weighted_median_2000_comuna$`2000` <- as.numeric(ub_weighted_median_2000_comuna$`2000`)
ub_weighted_median_2000_comuna$`2000` <- round(ub_weighted_median_2000_comuna$`2000`, 0)

# Lower Bound for Mean by comuna
lb_weighted_mean_2000_comuna <- ddply(wage_by_gender_with_weights_2000, .(sex,comuna), summarise, FUN = lb_weighted_mean_plyr(individual_income, exp_comuna))
setnames(lb_weighted_mean_2000_comuna, colnames(lb_weighted_mean_2000_comuna), c("sex","comuna","2000"))
lb_weighted_mean_2000_comuna$`2000` <- as.numeric(lb_weighted_mean_2000_comuna$`2000`)
lb_weighted_mean_2000_comuna$`2000` <- round(lb_weighted_mean_2000_comuna$`2000`, 0)

# Upper Bound for Mean by comuna
ub_weighted_mean_2000_comuna <- ddply(wage_by_gender_with_weights_2000, .(sex,comuna), summarise, FUN = ub_weighted_mean_plyr(individual_income, exp_comuna))
setnames(ub_weighted_mean_2000_comuna, colnames(ub_weighted_mean_2000_comuna), c("sex","comuna","2000"))
ub_weighted_mean_2000_comuna$`2000` <- as.numeric(ub_weighted_mean_2000_comuna$`2000`)
ub_weighted_mean_2000_comuna$`2000` <- round(ub_weighted_mean_2000_comuna$`2000`, 0)
