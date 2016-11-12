########
# 1994 #
########

# Median Wage by Gender by country
median_1994_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_1994, FUN = median, na.rm = TRUE)
setnames(median_1994_country, colnames(median_1994_country), c("sexo","oficio","1994"))
#median_1994_country <- insert_row(median_1994_country, c("Pa\u00eds", median(wage_by_gender_and_occupation_1994$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1994_country)+1)
median_1994_country$`1994` <- as.numeric(median_1994_country$`1994`)
median_1994_country$`1994` <- round(median_1994_country$`1994`, 0)
median_1994_country$`1994` <- as.numeric(median_1994_country$`1994`)
median_1994_country$`1994` <- round(median_1994_country$`1994`, 0)

# Average Wage by Gender by country
mean_1994_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_1994, FUN = mean, na.rm = TRUE)
setnames(mean_1994_country, colnames(mean_1994_country), c("sexo","oficio","1994"))
mean_1994_country$`1994` <- as.numeric(mean_1994_country$`1994`)
mean_1994_country$`1994` <- round(mean_1994_country$`1994`, 0)
mean_1994_country$`1994` <- as.numeric(mean_1994_country$`1994`)
mean_1994_country$`1994` <- round(mean_1994_country$`1994`, 0)

# Lower Bound for Median Wage by Gender by country
lb_median_1994_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_1994, FUN = lb_median)
setnames(lb_median_1994_country, colnames(lb_median_1994_country), c("sexo","oficio","1994"))
lb_median_1994_country$`1994` <- as.numeric(lb_median_1994_country$`1994`)
lb_median_1994_country$`1994` <- round(lb_median_1994_country$`1994`, 0)
lb_median_1994_country$`1994` <- as.numeric(lb_median_1994_country$`1994`)
lb_median_1994_country$`1994` <- round(lb_median_1994_country$`1994`, 0)

# Upper Bound for Median Wage by Gender by country
ub_median_1994_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_1994, FUN = ub_median)
setnames(ub_median_1994_country, colnames(ub_median_1994_country), c("sexo","oficio","1994"))
ub_median_1994_country$`1994` <- as.numeric(ub_median_1994_country$`1994`)
ub_median_1994_country$`1994` <- round(ub_median_1994_country$`1994`, 0)

# Lower Bound for Mean Wage by Gender by country
lb_mean_1994_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_1994, FUN = lb_mean)
setnames(lb_mean_1994_country, colnames(lb_mean_1994_country), c("sexo","oficio","1994"))
lb_mean_1994_country$`1994` <- as.numeric(lb_mean_1994_country$`1994`)
lb_mean_1994_country$`1994` <- round(lb_mean_1994_country$`1994`, 0)

# Upper Bound for Mean Wage by Gender by country
ub_mean_1994_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_1994, FUN = ub_mean)
setnames(ub_mean_1994_country, colnames(ub_mean_1994_country), c("sexo","oficio","1994"))
ub_mean_1994_country$`1994` <- as.numeric(ub_mean_1994_country$`1994`)
ub_mean_1994_country$`1994` <- round(ub_mean_1994_country$`1994`, 0)
