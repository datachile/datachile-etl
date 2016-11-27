########
# 2013 #
########

# Median Wage by Gender by comuna
weighted_median_2013_comuna <- ddply(wage_by_gender_2013, .(sexo,comuna), summarise, FUN = matrixStats::weightedMedian(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2013_comuna, colnames(weighted_median_2013_comuna), c("sexo","comuna","2013"))
#weighted_median_2013_comuna <- insert_row(weighted_median_2013_comuna, c("Pa\u00eds", median(wage_by_gender_2013$ingreso_ocup_principal, na.rm = TRUE)), nrow(weighted_median_2013_comuna)+1)
weighted_median_2013_comuna$`2013` <- as.numeric(weighted_median_2013_comuna$`2013`)
weighted_median_2013_comuna$`2013` <- round(weighted_median_2013_comuna$`2013`, 0)
weighted_median_2013_comuna$`2013` <- as.numeric(weighted_median_2013_comuna$`2013`)
weighted_median_2013_comuna$`2013` <- round(weighted_median_2013_comuna$`2013`, 0)

# Average Wage by Gender by comuna
weighted_mean_2013_comuna <- ddply(wage_by_gender_2013, .(sexo,comuna), summarise, FUN = matrixStats::weightedMean(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2013_comuna, colnames(weighted_mean_2013_comuna), c("sexo","comuna","2013"))
weighted_mean_2013_comuna$`2013` <- as.numeric(weighted_mean_2013_comuna$`2013`)
weighted_mean_2013_comuna$`2013` <- round(weighted_mean_2013_comuna$`2013`, 0)
weighted_mean_2013_comuna$`2013` <- as.numeric(weighted_mean_2013_comuna$`2013`)
weighted_mean_2013_comuna$`2013` <- round(weighted_mean_2013_comuna$`2013`, 0)

# Lower Bound for Median Wage by Gender by comuna
lb_weighted_median_2013_comuna <- ddply(wage_by_gender_2013, .(sexo,comuna), summarise, FUN = lb_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_median_2013_comuna, colnames(lb_weighted_median_2013_comuna), c("sexo","comuna","2013"))
lb_weighted_median_2013_comuna$`2013` <- as.numeric(lb_weighted_median_2013_comuna$`2013`)
lb_weighted_median_2013_comuna$`2013` <- round(lb_weighted_median_2013_comuna$`2013`, 0)
lb_weighted_median_2013_comuna$`2013` <- as.numeric(lb_weighted_median_2013_comuna$`2013`)
lb_weighted_median_2013_comuna$`2013` <- round(lb_weighted_median_2013_comuna$`2013`, 0)

# Upper Bound for Median Wage by Gender by comuna
ub_weighted_median_2013_comuna <- ddply(wage_by_gender_2013, .(sexo,comuna), summarise, FUN = ub_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_median_2013_comuna, colnames(ub_weighted_median_2013_comuna), c("sexo","comuna","2013"))
ub_weighted_median_2013_comuna$`2013` <- as.numeric(ub_weighted_median_2013_comuna$`2013`)
ub_weighted_median_2013_comuna$`2013` <- round(ub_weighted_median_2013_comuna$`2013`, 0)

# Lower Bound for Mean Wage by Gender by comuna
lb_weighted_mean_2013_comuna <- ddply(wage_by_gender_2013, .(sexo,comuna), summarise, FUN = lb_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_mean_2013_comuna, colnames(lb_weighted_mean_2013_comuna), c("sexo","comuna","2013"))
lb_weighted_mean_2013_comuna$`2013` <- as.numeric(lb_weighted_mean_2013_comuna$`2013`)
lb_weighted_mean_2013_comuna$`2013` <- round(lb_weighted_mean_2013_comuna$`2013`, 0)

# Upper Bound for Mean Wage by Gender by comuna
ub_weighted_mean_2013_comuna <- ddply(wage_by_gender_2013, .(sexo,comuna), summarise, FUN = ub_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_mean_2013_comuna, colnames(ub_weighted_mean_2013_comuna), c("sexo","comuna","2013"))
ub_weighted_mean_2013_comuna$`2013` <- as.numeric(ub_weighted_mean_2013_comuna$`2013`)
ub_weighted_mean_2013_comuna$`2013` <- round(ub_weighted_mean_2013_comuna$`2013`, 0)
