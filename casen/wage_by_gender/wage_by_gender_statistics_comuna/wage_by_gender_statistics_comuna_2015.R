########
# 2015 #
########

# Median Wage by Gender by comuna
weighted_median_2015_comuna <- ddply(wage_by_gender_2015, .(sexo,comuna), summarise, FUN = matrixStats::weightedMedian(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2015_comuna, colnames(weighted_median_2015_comuna), c("sexo","comuna","2015"))
#weighted_median_2015_comuna <- insert_row(weighted_median_2015_comuna, c("Pa\u00eds", median(wage_by_gender_2015$ingreso_ocup_principal, na.rm = TRUE)), nrow(weighted_median_2015_comuna)+1)
weighted_median_2015_comuna$`2015` <- as.numeric(weighted_median_2015_comuna$`2015`)
weighted_median_2015_comuna$`2015` <- round(weighted_median_2015_comuna$`2015`, 0)
weighted_median_2015_comuna$`2015` <- as.numeric(weighted_median_2015_comuna$`2015`)
weighted_median_2015_comuna$`2015` <- round(weighted_median_2015_comuna$`2015`, 0)

# Average Wage by Gender by comuna
weighted_mean_2015_comuna <- ddply(wage_by_gender_2015, .(sexo,comuna), summarise, FUN = matrixStats::weightedMean(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2015_comuna, colnames(weighted_mean_2015_comuna), c("sexo","comuna","2015"))
weighted_mean_2015_comuna$`2015` <- as.numeric(weighted_mean_2015_comuna$`2015`)
weighted_mean_2015_comuna$`2015` <- round(weighted_mean_2015_comuna$`2015`, 0)
weighted_mean_2015_comuna$`2015` <- as.numeric(weighted_mean_2015_comuna$`2015`)
weighted_mean_2015_comuna$`2015` <- round(weighted_mean_2015_comuna$`2015`, 0)

# Lower Bound for Median Wage by Gender by comuna
lb_weighted_median_2015_comuna <- ddply(wage_by_gender_2015, .(sexo,comuna), summarise, FUN = lb_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_median_2015_comuna, colnames(lb_weighted_median_2015_comuna), c("sexo","comuna","2015"))
lb_weighted_median_2015_comuna$`2015` <- as.numeric(lb_weighted_median_2015_comuna$`2015`)
lb_weighted_median_2015_comuna$`2015` <- round(lb_weighted_median_2015_comuna$`2015`, 0)
lb_weighted_median_2015_comuna$`2015` <- as.numeric(lb_weighted_median_2015_comuna$`2015`)
lb_weighted_median_2015_comuna$`2015` <- round(lb_weighted_median_2015_comuna$`2015`, 0)

# Upper Bound for Median Wage by Gender by comuna
ub_weighted_median_2015_comuna <- ddply(wage_by_gender_2015, .(sexo,comuna), summarise, FUN = ub_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_median_2015_comuna, colnames(ub_weighted_median_2015_comuna), c("sexo","comuna","2015"))
ub_weighted_median_2015_comuna$`2015` <- as.numeric(ub_weighted_median_2015_comuna$`2015`)
ub_weighted_median_2015_comuna$`2015` <- round(ub_weighted_median_2015_comuna$`2015`, 0)

# Lower Bound for Mean Wage by Gender by comuna
lb_weighted_mean_2015_comuna <- ddply(wage_by_gender_2015, .(sexo,comuna), summarise, FUN = lb_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_mean_2015_comuna, colnames(lb_weighted_mean_2015_comuna), c("sexo","comuna","2015"))
lb_weighted_mean_2015_comuna$`2015` <- as.numeric(lb_weighted_mean_2015_comuna$`2015`)
lb_weighted_mean_2015_comuna$`2015` <- round(lb_weighted_mean_2015_comuna$`2015`, 0)

# Upper Bound for Mean Wage by Gender by comuna
ub_weighted_mean_2015_comuna <- ddply(wage_by_gender_2015, .(sexo,comuna), summarise, FUN = ub_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_mean_2015_comuna, colnames(ub_weighted_mean_2015_comuna), c("sexo","comuna","2015"))
ub_weighted_mean_2015_comuna$`2015` <- as.numeric(ub_weighted_mean_2015_comuna$`2015`)
ub_weighted_mean_2015_comuna$`2015` <- round(ub_weighted_mean_2015_comuna$`2015`, 0)
