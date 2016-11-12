########
# 1990 #
########

# Median Wage by Gender by country
median_1990_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_1990, FUN = median, na.rm = TRUE)
setnames(median_1990_country, colnames(median_1990_country), c("sexo","oficio","1990"))
#median_1990_country <- insert_row(median_1990_country, c("Pa\u00eds", median(wage_by_gender_and_occupation_1990$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1990_country)+1)
median_1990_country$`1990` <- as.numeric(median_1990_country$`1990`)
median_1990_country$`1990` <- round(median_1990_country$`1990`, 0)
median_1990_country$`1990` <- as.numeric(median_1990_country$`1990`)
median_1990_country$`1990` <- round(median_1990_country$`1990`, 0)

# Average Wage by Gender by country
mean_1990_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_1990, FUN = mean, na.rm = TRUE)
setnames(mean_1990_country, colnames(mean_1990_country), c("sexo","oficio","1990"))
mean_1990_country$`1990` <- as.numeric(mean_1990_country$`1990`)
mean_1990_country$`1990` <- round(mean_1990_country$`1990`, 0)
mean_1990_country$`1990` <- as.numeric(mean_1990_country$`1990`)
mean_1990_country$`1990` <- round(mean_1990_country$`1990`, 0)

# Lower Bound for Median Wage by Gender by country
lb_median_1990_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_1990, FUN = lb_median)
setnames(lb_median_1990_country, colnames(lb_median_1990_country), c("sexo","oficio","1990"))
lb_median_1990_country$`1990` <- as.numeric(lb_median_1990_country$`1990`)
lb_median_1990_country$`1990` <- round(lb_median_1990_country$`1990`, 0)
lb_median_1990_country$`1990` <- as.numeric(lb_median_1990_country$`1990`)
lb_median_1990_country$`1990` <- round(lb_median_1990_country$`1990`, 0)

# Upper Bound for Median Wage by Gender by country
ub_median_1990_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_1990, FUN = ub_median)
setnames(ub_median_1990_country, colnames(ub_median_1990_country), c("sexo","oficio","1990"))
ub_median_1990_country$`1990` <- as.numeric(ub_median_1990_country$`1990`)
ub_median_1990_country$`1990` <- round(ub_median_1990_country$`1990`, 0)

# Lower Bound for Mean Wage by Gender by country
lb_mean_1990_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_1990, FUN = lb_mean)
setnames(lb_mean_1990_country, colnames(lb_mean_1990_country), c("sexo","oficio","1990"))
lb_mean_1990_country$`1990` <- as.numeric(lb_mean_1990_country$`1990`)
lb_mean_1990_country$`1990` <- round(lb_mean_1990_country$`1990`, 0)

# Upper Bound for Mean Wage by Gender by country
ub_mean_1990_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_1990, FUN = ub_mean)
setnames(ub_mean_1990_country, colnames(ub_mean_1990_country), c("sexo","oficio","1990"))
ub_mean_1990_country$`1990` <- as.numeric(ub_mean_1990_country$`1990`)
ub_mean_1990_country$`1990` <- round(ub_mean_1990_country$`1990`, 0)
