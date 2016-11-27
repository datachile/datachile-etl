########
# 2000 #
########

# Median Wage by Gender by country
weighted_median_2000_country <- ddply(wage_by_gender_2000, .(sexo), summarise, FUN = matrixStats::weightedMedian(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2000_country, colnames(weighted_median_2000_country), c("sexo","2000"))
#weighted_median_2000_country <- insert_row(weighted_median_2000_country, c("Pa\u00eds", median(wage_by_gender_2000$ingreso_ocup_principal, na.rm = TRUE)), nrow(weighted_median_2000_country)+1)
weighted_median_2000_country$`2000` <- as.numeric(weighted_median_2000_country$`2000`)
weighted_median_2000_country$`2000` <- round(weighted_median_2000_country$`2000`, 0)
weighted_median_2000_country$`2000` <- as.numeric(weighted_median_2000_country$`2000`)
weighted_median_2000_country$`2000` <- round(weighted_median_2000_country$`2000`, 0)

# Average Wage by Gender by country
weighted_mean_2000_country <- ddply(wage_by_gender_2000, .(sexo), summarise, FUN = matrixStats::weightedMean(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2000_country, colnames(weighted_mean_2000_country), c("sexo","2000"))
weighted_mean_2000_country$`2000` <- as.numeric(weighted_mean_2000_country$`2000`)
weighted_mean_2000_country$`2000` <- round(weighted_mean_2000_country$`2000`, 0)
weighted_mean_2000_country$`2000` <- as.numeric(weighted_mean_2000_country$`2000`)
weighted_mean_2000_country$`2000` <- round(weighted_mean_2000_country$`2000`, 0)

# Lower Bound for Median Wage by Gender by country
lb_weighted_median_2000_country <- ddply(wage_by_gender_2000, .(sexo), summarise, FUN = lb_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_median_2000_country, colnames(lb_weighted_median_2000_country), c("sexo","2000"))
lb_weighted_median_2000_country$`2000` <- as.numeric(lb_weighted_median_2000_country$`2000`)
lb_weighted_median_2000_country$`2000` <- round(lb_weighted_median_2000_country$`2000`, 0)
lb_weighted_median_2000_country$`2000` <- as.numeric(lb_weighted_median_2000_country$`2000`)
lb_weighted_median_2000_country$`2000` <- round(lb_weighted_median_2000_country$`2000`, 0)

# Upper Bound for Median Wage by Gender by country
ub_weighted_median_2000_country <- ddply(wage_by_gender_2000, .(sexo), summarise, FUN = ub_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_median_2000_country, colnames(ub_weighted_median_2000_country), c("sexo","2000"))
ub_weighted_median_2000_country$`2000` <- as.numeric(ub_weighted_median_2000_country$`2000`)
ub_weighted_median_2000_country$`2000` <- round(ub_weighted_median_2000_country$`2000`, 0)

# Lower Bound for Mean Wage by Gender by country
lb_weighted_mean_2000_country <- ddply(wage_by_gender_2000, .(sexo), summarise, FUN = lb_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_mean_2000_country, colnames(lb_weighted_mean_2000_country), c("sexo","2000"))
lb_weighted_mean_2000_country$`2000` <- as.numeric(lb_weighted_mean_2000_country$`2000`)
lb_weighted_mean_2000_country$`2000` <- round(lb_weighted_mean_2000_country$`2000`, 0)

# Upper Bound for Mean Wage by Gender by country
ub_weighted_mean_2000_country <- ddply(wage_by_gender_2000, .(sexo), summarise, FUN = ub_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_mean_2000_country, colnames(ub_weighted_mean_2000_country), c("sexo","2000"))
ub_weighted_mean_2000_country$`2000` <- as.numeric(ub_weighted_mean_2000_country$`2000`)
ub_weighted_mean_2000_country$`2000` <- round(ub_weighted_mean_2000_country$`2000`, 0)
