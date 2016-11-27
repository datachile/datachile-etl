########
# 2011 #
########

# Median Wage by Gender by comuna
weighted_median_2011_comuna <- ddply(wage_by_gender_2011, .(sexo,comuna), summarise, FUN = matrixStats::weightedMedian(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2011_comuna, colnames(weighted_median_2011_comuna), c("sexo","comuna","2011"))
#weighted_median_2011_comuna <- insert_row(weighted_median_2011_comuna, c("Pa\u00eds", median(wage_by_gender_2011$ingreso_ocup_principal, na.rm = TRUE)), nrow(weighted_median_2011_comuna)+1)
weighted_median_2011_comuna$`2011` <- as.numeric(weighted_median_2011_comuna$`2011`)
weighted_median_2011_comuna$`2011` <- round(weighted_median_2011_comuna$`2011`, 0)
weighted_median_2011_comuna$`2011` <- as.numeric(weighted_median_2011_comuna$`2011`)
weighted_median_2011_comuna$`2011` <- round(weighted_median_2011_comuna$`2011`, 0)

# Average Wage by Gender by comuna
weighted_mean_2011_comuna <- ddply(wage_by_gender_2011, .(sexo,comuna), summarise, FUN = matrixStats::weightedMean(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2011_comuna, colnames(weighted_mean_2011_comuna), c("sexo","comuna","2011"))
weighted_mean_2011_comuna$`2011` <- as.numeric(weighted_mean_2011_comuna$`2011`)
weighted_mean_2011_comuna$`2011` <- round(weighted_mean_2011_comuna$`2011`, 0)
weighted_mean_2011_comuna$`2011` <- as.numeric(weighted_mean_2011_comuna$`2011`)
weighted_mean_2011_comuna$`2011` <- round(weighted_mean_2011_comuna$`2011`, 0)

# Lower Bound for Median Wage by Gender by comuna
lb_weighted_median_2011_comuna <- ddply(wage_by_gender_2011, .(sexo,comuna), summarise, FUN = lb_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_median_2011_comuna, colnames(lb_weighted_median_2011_comuna), c("sexo","comuna","2011"))
lb_weighted_median_2011_comuna$`2011` <- as.numeric(lb_weighted_median_2011_comuna$`2011`)
lb_weighted_median_2011_comuna$`2011` <- round(lb_weighted_median_2011_comuna$`2011`, 0)
lb_weighted_median_2011_comuna$`2011` <- as.numeric(lb_weighted_median_2011_comuna$`2011`)
lb_weighted_median_2011_comuna$`2011` <- round(lb_weighted_median_2011_comuna$`2011`, 0)

# Upper Bound for Median Wage by Gender by comuna
ub_weighted_median_2011_comuna <- ddply(wage_by_gender_2011, .(sexo,comuna), summarise, FUN = ub_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_median_2011_comuna, colnames(ub_weighted_median_2011_comuna), c("sexo","comuna","2011"))
ub_weighted_median_2011_comuna$`2011` <- as.numeric(ub_weighted_median_2011_comuna$`2011`)
ub_weighted_median_2011_comuna$`2011` <- round(ub_weighted_median_2011_comuna$`2011`, 0)

# Lower Bound for Mean Wage by Gender by comuna
lb_weighted_mean_2011_comuna <- ddply(wage_by_gender_2011, .(sexo,comuna), summarise, FUN = lb_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_mean_2011_comuna, colnames(lb_weighted_mean_2011_comuna), c("sexo","comuna","2011"))
lb_weighted_mean_2011_comuna$`2011` <- as.numeric(lb_weighted_mean_2011_comuna$`2011`)
lb_weighted_mean_2011_comuna$`2011` <- round(lb_weighted_mean_2011_comuna$`2011`, 0)

# Upper Bound for Mean Wage by Gender by comuna
ub_weighted_mean_2011_comuna <- ddply(wage_by_gender_2011, .(sexo,comuna), summarise, FUN = ub_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_mean_2011_comuna, colnames(ub_weighted_mean_2011_comuna), c("sexo","comuna","2011"))
ub_weighted_mean_2011_comuna$`2011` <- as.numeric(ub_weighted_mean_2011_comuna$`2011`)
ub_weighted_mean_2011_comuna$`2011` <- round(ub_weighted_mean_2011_comuna$`2011`, 0)
