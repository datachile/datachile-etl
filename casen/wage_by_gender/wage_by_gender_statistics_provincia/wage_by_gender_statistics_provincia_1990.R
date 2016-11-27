########
# 1990 #
########

# Median Wage by Gender by provincia
weighted_median_1990_provincia <- ddply(wage_by_gender_1990, .(sexo,provincia), summarise, FUN = matrixStats::weightedMedian(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_median_1990_provincia, colnames(weighted_median_1990_provincia), c("sexo","provincia","1990"))
#weighted_median_1990_provincia <- insert_row(weighted_median_1990_provincia, c("Pa\u00eds", median(wage_by_gender_1990$ingreso_ocup_principal, na.rm = TRUE)), nrow(weighted_median_1990_provincia)+1)
weighted_median_1990_provincia$`1990` <- as.numeric(weighted_median_1990_provincia$`1990`)
weighted_median_1990_provincia$`1990` <- round(weighted_median_1990_provincia$`1990`, 0)
weighted_median_1990_provincia$`1990` <- as.numeric(weighted_median_1990_provincia$`1990`)
weighted_median_1990_provincia$`1990` <- round(weighted_median_1990_provincia$`1990`, 0)

# Average Wage by Gender by provincia
weighted_mean_1990_provincia <- ddply(wage_by_gender_1990, .(sexo,provincia), summarise, FUN = matrixStats::weightedMean(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_1990_provincia, colnames(weighted_mean_1990_provincia), c("sexo","provincia","1990"))
weighted_mean_1990_provincia$`1990` <- as.numeric(weighted_mean_1990_provincia$`1990`)
weighted_mean_1990_provincia$`1990` <- round(weighted_mean_1990_provincia$`1990`, 0)
weighted_mean_1990_provincia$`1990` <- as.numeric(weighted_mean_1990_provincia$`1990`)
weighted_mean_1990_provincia$`1990` <- round(weighted_mean_1990_provincia$`1990`, 0)

# Lower Bound for Median Wage by Gender by provincia
lb_weighted_median_1990_provincia <- ddply(wage_by_gender_1990, .(sexo,provincia), summarise, FUN = lb_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_median_1990_provincia, colnames(lb_weighted_median_1990_provincia), c("sexo","provincia","1990"))
lb_weighted_median_1990_provincia$`1990` <- as.numeric(lb_weighted_median_1990_provincia$`1990`)
lb_weighted_median_1990_provincia$`1990` <- round(lb_weighted_median_1990_provincia$`1990`, 0)
lb_weighted_median_1990_provincia$`1990` <- as.numeric(lb_weighted_median_1990_provincia$`1990`)
lb_weighted_median_1990_provincia$`1990` <- round(lb_weighted_median_1990_provincia$`1990`, 0)

# Upper Bound for Median Wage by Gender by provincia
ub_weighted_median_1990_provincia <- ddply(wage_by_gender_1990, .(sexo,provincia), summarise, FUN = ub_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_median_1990_provincia, colnames(ub_weighted_median_1990_provincia), c("sexo","provincia","1990"))
ub_weighted_median_1990_provincia$`1990` <- as.numeric(ub_weighted_median_1990_provincia$`1990`)
ub_weighted_median_1990_provincia$`1990` <- round(ub_weighted_median_1990_provincia$`1990`, 0)

# Lower Bound for Mean Wage by Gender by provincia
lb_weighted_mean_1990_provincia <- ddply(wage_by_gender_1990, .(sexo,provincia), summarise, FUN = lb_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_mean_1990_provincia, colnames(lb_weighted_mean_1990_provincia), c("sexo","provincia","1990"))
lb_weighted_mean_1990_provincia$`1990` <- as.numeric(lb_weighted_mean_1990_provincia$`1990`)
lb_weighted_mean_1990_provincia$`1990` <- round(lb_weighted_mean_1990_provincia$`1990`, 0)

# Upper Bound for Mean Wage by Gender by provincia
ub_weighted_mean_1990_provincia <- ddply(wage_by_gender_1990, .(sexo,provincia), summarise, FUN = ub_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_mean_1990_provincia, colnames(ub_weighted_mean_1990_provincia), c("sexo","provincia","1990"))
ub_weighted_mean_1990_provincia$`1990` <- as.numeric(ub_weighted_mean_1990_provincia$`1990`)
ub_weighted_mean_1990_provincia$`1990` <- round(ub_weighted_mean_1990_provincia$`1990`, 0)
