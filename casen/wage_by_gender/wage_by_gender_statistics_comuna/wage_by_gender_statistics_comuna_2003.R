########
# 2003 #
########

# Median Wage by Gender by comuna
weighted_median_2003_comuna <- ddply(wage_by_gender_2003, .(sexo,comuna), summarise, FUN = matrixStats::weightedMedian(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2003_comuna, colnames(weighted_median_2003_comuna), c("sexo","comuna","2003"))
#weighted_median_2003_comuna <- insert_row(weighted_median_2003_comuna, c("Pa\u00eds", median(wage_by_gender_2003$ingreso_ocup_principal, na.rm = TRUE)), nrow(weighted_median_2003_comuna)+1)
weighted_median_2003_comuna$`2003` <- as.numeric(weighted_median_2003_comuna$`2003`)
weighted_median_2003_comuna$`2003` <- round(weighted_median_2003_comuna$`2003`, 0)
weighted_median_2003_comuna$`2003` <- as.numeric(weighted_median_2003_comuna$`2003`)
weighted_median_2003_comuna$`2003` <- round(weighted_median_2003_comuna$`2003`, 0)

# Average Wage by Gender by comuna
weighted_mean_2003_comuna <- ddply(wage_by_gender_2003, .(sexo,comuna), summarise, FUN = matrixStats::weightedMean(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2003_comuna, colnames(weighted_mean_2003_comuna), c("sexo","comuna","2003"))
weighted_mean_2003_comuna$`2003` <- as.numeric(weighted_mean_2003_comuna$`2003`)
weighted_mean_2003_comuna$`2003` <- round(weighted_mean_2003_comuna$`2003`, 0)
weighted_mean_2003_comuna$`2003` <- as.numeric(weighted_mean_2003_comuna$`2003`)
weighted_mean_2003_comuna$`2003` <- round(weighted_mean_2003_comuna$`2003`, 0)

# Lower Bound for Median Wage by Gender by comuna
lb_weighted_median_2003_comuna <- ddply(wage_by_gender_2003, .(sexo,comuna), summarise, FUN = lb_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_median_2003_comuna, colnames(lb_weighted_median_2003_comuna), c("sexo","comuna","2003"))
lb_weighted_median_2003_comuna$`2003` <- as.numeric(lb_weighted_median_2003_comuna$`2003`)
lb_weighted_median_2003_comuna$`2003` <- round(lb_weighted_median_2003_comuna$`2003`, 0)
lb_weighted_median_2003_comuna$`2003` <- as.numeric(lb_weighted_median_2003_comuna$`2003`)
lb_weighted_median_2003_comuna$`2003` <- round(lb_weighted_median_2003_comuna$`2003`, 0)

# Upper Bound for Median Wage by Gender by comuna
ub_weighted_median_2003_comuna <- ddply(wage_by_gender_2003, .(sexo,comuna), summarise, FUN = ub_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_median_2003_comuna, colnames(ub_weighted_median_2003_comuna), c("sexo","comuna","2003"))
ub_weighted_median_2003_comuna$`2003` <- as.numeric(ub_weighted_median_2003_comuna$`2003`)
ub_weighted_median_2003_comuna$`2003` <- round(ub_weighted_median_2003_comuna$`2003`, 0)

# Lower Bound for Mean Wage by Gender by comuna
lb_weighted_mean_2003_comuna <- ddply(wage_by_gender_2003, .(sexo,comuna), summarise, FUN = lb_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_mean_2003_comuna, colnames(lb_weighted_mean_2003_comuna), c("sexo","comuna","2003"))
lb_weighted_mean_2003_comuna$`2003` <- as.numeric(lb_weighted_mean_2003_comuna$`2003`)
lb_weighted_mean_2003_comuna$`2003` <- round(lb_weighted_mean_2003_comuna$`2003`, 0)

# Upper Bound for Mean Wage by Gender by comuna
ub_weighted_mean_2003_comuna <- ddply(wage_by_gender_2003, .(sexo,comuna), summarise, FUN = ub_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_mean_2003_comuna, colnames(ub_weighted_mean_2003_comuna), c("sexo","comuna","2003"))
ub_weighted_mean_2003_comuna$`2003` <- as.numeric(ub_weighted_mean_2003_comuna$`2003`)
ub_weighted_mean_2003_comuna$`2003` <- round(ub_weighted_mean_2003_comuna$`2003`, 0)
