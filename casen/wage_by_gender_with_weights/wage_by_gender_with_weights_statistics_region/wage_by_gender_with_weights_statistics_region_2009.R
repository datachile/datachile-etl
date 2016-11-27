########
# 2009 #
########

# Median Wage by Gender by region
weighted_median_2009_region <- ddply(wage_by_gender_2009, .(sexo,region), summarise, FUN = matrixStats::weightedMedian(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2009_region, colnames(weighted_median_2009_region), c("sexo","region","2009"))
#weighted_median_2009_region <- insert_row(weighted_median_2009_region, c("Pa\u00eds", median(wage_by_gender_2009$ingreso_ocup_principal, na.rm = TRUE)), nrow(weighted_median_2009_region)+1)
weighted_median_2009_region$`2009` <- as.numeric(weighted_median_2009_region$`2009`)
weighted_median_2009_region$`2009` <- round(weighted_median_2009_region$`2009`, 0)
weighted_median_2009_region$`2009` <- as.numeric(weighted_median_2009_region$`2009`)
weighted_median_2009_region$`2009` <- round(weighted_median_2009_region$`2009`, 0)

# Average Wage by Gender by region
weighted_mean_2009_region <- ddply(wage_by_gender_2009, .(sexo,region), summarise, FUN = matrixStats::weightedMean(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2009_region, colnames(weighted_mean_2009_region), c("sexo","region","2009"))
weighted_mean_2009_region$`2009` <- as.numeric(weighted_mean_2009_region$`2009`)
weighted_mean_2009_region$`2009` <- round(weighted_mean_2009_region$`2009`, 0)
weighted_mean_2009_region$`2009` <- as.numeric(weighted_mean_2009_region$`2009`)
weighted_mean_2009_region$`2009` <- round(weighted_mean_2009_region$`2009`, 0)

# Lower Bound for Median Wage by Gender by region
lb_weighted_median_2009_region <- ddply(wage_by_gender_2009, .(sexo,region), summarise, FUN = lb_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_median_2009_region, colnames(lb_weighted_median_2009_region), c("sexo","region","2009"))
lb_weighted_median_2009_region$`2009` <- as.numeric(lb_weighted_median_2009_region$`2009`)
lb_weighted_median_2009_region$`2009` <- round(lb_weighted_median_2009_region$`2009`, 0)
lb_weighted_median_2009_region$`2009` <- as.numeric(lb_weighted_median_2009_region$`2009`)
lb_weighted_median_2009_region$`2009` <- round(lb_weighted_median_2009_region$`2009`, 0)

# Upper Bound for Median Wage by Gender by region
ub_weighted_median_2009_region <- ddply(wage_by_gender_2009, .(sexo,region), summarise, FUN = ub_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_median_2009_region, colnames(ub_weighted_median_2009_region), c("sexo","region","2009"))
ub_weighted_median_2009_region$`2009` <- as.numeric(ub_weighted_median_2009_region$`2009`)
ub_weighted_median_2009_region$`2009` <- round(ub_weighted_median_2009_region$`2009`, 0)

# Lower Bound for Mean Wage by Gender by region
lb_weighted_mean_2009_region <- ddply(wage_by_gender_2009, .(sexo,region), summarise, FUN = lb_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_mean_2009_region, colnames(lb_weighted_mean_2009_region), c("sexo","region","2009"))
lb_weighted_mean_2009_region$`2009` <- as.numeric(lb_weighted_mean_2009_region$`2009`)
lb_weighted_mean_2009_region$`2009` <- round(lb_weighted_mean_2009_region$`2009`, 0)

# Upper Bound for Mean Wage by Gender by region
ub_weighted_mean_2009_region <- ddply(wage_by_gender_2009, .(sexo,region), summarise, FUN = ub_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_mean_2009_region, colnames(ub_weighted_mean_2009_region), c("sexo","region","2009"))
ub_weighted_mean_2009_region$`2009` <- as.numeric(ub_weighted_mean_2009_region$`2009`)
ub_weighted_mean_2009_region$`2009` <- round(ub_weighted_mean_2009_region$`2009`, 0)
