########
# 2009 #
########

# Median Wage by Gender by provincia
weighted_median_2009_provincia <- ddply(wage_by_gender_2009, .(sexo,provincia), summarise, FUN = matrixStats::weightedMedian(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2009_provincia, colnames(weighted_median_2009_provincia), c("sexo","provincia","2009"))
#weighted_median_2009_provincia <- insert_row(weighted_median_2009_provincia, c("Pa\u00eds", median(wage_by_gender_2009$ingreso_ocup_principal, na.rm = TRUE)), nrow(weighted_median_2009_provincia)+1)
weighted_median_2009_provincia$`2009` <- as.numeric(weighted_median_2009_provincia$`2009`)
weighted_median_2009_provincia$`2009` <- round(weighted_median_2009_provincia$`2009`, 0)
weighted_median_2009_provincia$`2009` <- as.numeric(weighted_median_2009_provincia$`2009`)
weighted_median_2009_provincia$`2009` <- round(weighted_median_2009_provincia$`2009`, 0)

# Average Wage by Gender by provincia
weighted_mean_2009_provincia <- ddply(wage_by_gender_2009, .(sexo,provincia), summarise, FUN = matrixStats::weightedMean(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2009_provincia, colnames(weighted_mean_2009_provincia), c("sexo","provincia","2009"))
weighted_mean_2009_provincia$`2009` <- as.numeric(weighted_mean_2009_provincia$`2009`)
weighted_mean_2009_provincia$`2009` <- round(weighted_mean_2009_provincia$`2009`, 0)
weighted_mean_2009_provincia$`2009` <- as.numeric(weighted_mean_2009_provincia$`2009`)
weighted_mean_2009_provincia$`2009` <- round(weighted_mean_2009_provincia$`2009`, 0)

# Lower Bound for Median Wage by Gender by provincia
lb_weighted_median_2009_provincia <- ddply(wage_by_gender_2009, .(sexo,provincia), summarise, FUN = lb_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_median_2009_provincia, colnames(lb_weighted_median_2009_provincia), c("sexo","provincia","2009"))
lb_weighted_median_2009_provincia$`2009` <- as.numeric(lb_weighted_median_2009_provincia$`2009`)
lb_weighted_median_2009_provincia$`2009` <- round(lb_weighted_median_2009_provincia$`2009`, 0)
lb_weighted_median_2009_provincia$`2009` <- as.numeric(lb_weighted_median_2009_provincia$`2009`)
lb_weighted_median_2009_provincia$`2009` <- round(lb_weighted_median_2009_provincia$`2009`, 0)

# Upper Bound for Median Wage by Gender by provincia
ub_weighted_median_2009_provincia <- ddply(wage_by_gender_2009, .(sexo,provincia), summarise, FUN = ub_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_median_2009_provincia, colnames(ub_weighted_median_2009_provincia), c("sexo","provincia","2009"))
ub_weighted_median_2009_provincia$`2009` <- as.numeric(ub_weighted_median_2009_provincia$`2009`)
ub_weighted_median_2009_provincia$`2009` <- round(ub_weighted_median_2009_provincia$`2009`, 0)

# Lower Bound for Mean Wage by Gender by provincia
lb_weighted_mean_2009_provincia <- ddply(wage_by_gender_2009, .(sexo,provincia), summarise, FUN = lb_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_mean_2009_provincia, colnames(lb_weighted_mean_2009_provincia), c("sexo","provincia","2009"))
lb_weighted_mean_2009_provincia$`2009` <- as.numeric(lb_weighted_mean_2009_provincia$`2009`)
lb_weighted_mean_2009_provincia$`2009` <- round(lb_weighted_mean_2009_provincia$`2009`, 0)

# Upper Bound for Mean Wage by Gender by provincia
ub_weighted_mean_2009_provincia <- ddply(wage_by_gender_2009, .(sexo,provincia), summarise, FUN = ub_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_mean_2009_provincia, colnames(ub_weighted_mean_2009_provincia), c("sexo","provincia","2009"))
ub_weighted_mean_2009_provincia$`2009` <- as.numeric(ub_weighted_mean_2009_provincia$`2009`)
ub_weighted_mean_2009_provincia$`2009` <- round(ub_weighted_mean_2009_provincia$`2009`, 0)
