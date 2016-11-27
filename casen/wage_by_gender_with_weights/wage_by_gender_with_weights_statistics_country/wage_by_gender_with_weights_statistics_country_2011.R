########
# 2011 #
########

# Median Wage by Gender by country
weighted_median_2011_country <- ddply(wage_by_gender_2011, .(sexo), summarise, FUN = matrixStats::weightedMedian(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2011_country, colnames(weighted_median_2011_country), c("sexo","2011"))
#weighted_median_2011_country <- insert_row(weighted_median_2011_country, c("Pa\u00eds", median(wage_by_gender_2011$ingreso_ocup_principal, na.rm = TRUE)), nrow(weighted_median_2011_country)+1)
weighted_median_2011_country$`2011` <- as.numeric(weighted_median_2011_country$`2011`)
weighted_median_2011_country$`2011` <- round(weighted_median_2011_country$`2011`, 0)
weighted_median_2011_country$`2011` <- as.numeric(weighted_median_2011_country$`2011`)
weighted_median_2011_country$`2011` <- round(weighted_median_2011_country$`2011`, 0)

# Average Wage by Gender by country
weighted_mean_2011_country <- ddply(wage_by_gender_2011, .(sexo), summarise, FUN = matrixStats::weightedMean(ingreso_ocup_principal, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2011_country, colnames(weighted_mean_2011_country), c("sexo","2011"))
weighted_mean_2011_country$`2011` <- as.numeric(weighted_mean_2011_country$`2011`)
weighted_mean_2011_country$`2011` <- round(weighted_mean_2011_country$`2011`, 0)
weighted_mean_2011_country$`2011` <- as.numeric(weighted_mean_2011_country$`2011`)
weighted_mean_2011_country$`2011` <- round(weighted_mean_2011_country$`2011`, 0)

# Lower Bound for Median Wage by Gender by country
lb_weighted_median_2011_country <- ddply(wage_by_gender_2011, .(sexo), summarise, FUN = lb_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_median_2011_country, colnames(lb_weighted_median_2011_country), c("sexo","2011"))
lb_weighted_median_2011_country$`2011` <- as.numeric(lb_weighted_median_2011_country$`2011`)
lb_weighted_median_2011_country$`2011` <- round(lb_weighted_median_2011_country$`2011`, 0)
lb_weighted_median_2011_country$`2011` <- as.numeric(lb_weighted_median_2011_country$`2011`)
lb_weighted_median_2011_country$`2011` <- round(lb_weighted_median_2011_country$`2011`, 0)

# Upper Bound for Median Wage by Gender by country
ub_weighted_median_2011_country <- ddply(wage_by_gender_2011, .(sexo), summarise, FUN = ub_weighted_median_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_median_2011_country, colnames(ub_weighted_median_2011_country), c("sexo","2011"))
ub_weighted_median_2011_country$`2011` <- as.numeric(ub_weighted_median_2011_country$`2011`)
ub_weighted_median_2011_country$`2011` <- round(ub_weighted_median_2011_country$`2011`, 0)

# Lower Bound for Mean Wage by Gender by country
lb_weighted_mean_2011_country <- ddply(wage_by_gender_2011, .(sexo), summarise, FUN = lb_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(lb_weighted_mean_2011_country, colnames(lb_weighted_mean_2011_country), c("sexo","2011"))
lb_weighted_mean_2011_country$`2011` <- as.numeric(lb_weighted_mean_2011_country$`2011`)
lb_weighted_mean_2011_country$`2011` <- round(lb_weighted_mean_2011_country$`2011`, 0)

# Upper Bound for Mean Wage by Gender by country
ub_weighted_mean_2011_country <- ddply(wage_by_gender_2011, .(sexo), summarise, FUN = ub_weighted_mean_dplyr(ingreso_ocup_principal, exp_region))
setnames(ub_weighted_mean_2011_country, colnames(ub_weighted_mean_2011_country), c("sexo","2011"))
ub_weighted_mean_2011_country$`2011` <- as.numeric(ub_weighted_mean_2011_country$`2011`)
ub_weighted_mean_2011_country$`2011` <- round(ub_weighted_mean_2011_country$`2011`, 0)
