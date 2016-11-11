########
# 1998 #
########

# Median Wage by Gender by country
median_1998_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id, data = wage_by_gender_and_occupation_1998, FUN = median, na.rm = TRUE)
setnames(median_1998_country, colnames(median_1998_country), c("sexo","oficio_id","1998"))
#median_1998_country <- insert_row(median_1998_country, c("Pa\u00eds", median(wage_by_gender_and_occupation_1998$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1998_country)+1)
median_1998_country$`1998` <- as.numeric(median_1998_country$`1998`)
median_1998_country$`1998` <- round(median_1998_country$`1998`, 0)
median_1998_country$`1998` <- as.numeric(median_1998_country$`1998`)
median_1998_country$`1998` <- round(median_1998_country$`1998`, 0)

# Average Wage by Gender by country
mean_1998_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id, data = wage_by_gender_and_occupation_1998, FUN = mean, na.rm = TRUE)
setnames(mean_1998_country, colnames(mean_1998_country), c("sexo","oficio_id","1998"))
mean_1998_country$`1998` <- as.numeric(mean_1998_country$`1998`)
mean_1998_country$`1998` <- round(mean_1998_country$`1998`, 0)
mean_1998_country$`1998` <- as.numeric(mean_1998_country$`1998`)
mean_1998_country$`1998` <- round(mean_1998_country$`1998`, 0)

# Lower Bound for Median Wage by Gender by country
lb_median_1998_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id, data = wage_by_gender_and_occupation_1998, FUN = lb_median)
setnames(lb_median_1998_country, colnames(lb_median_1998_country), c("sexo","oficio_id","1998"))
lb_median_1998_country$`1998` <- as.numeric(lb_median_1998_country$`1998`)
lb_median_1998_country$`1998` <- round(lb_median_1998_country$`1998`, 0)
lb_median_1998_country$`1998` <- as.numeric(lb_median_1998_country$`1998`)
lb_median_1998_country$`1998` <- round(lb_median_1998_country$`1998`, 0)

# Upper Bound for Median Wage by Gender by country
ub_median_1998_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id, data = wage_by_gender_and_occupation_1998, FUN = ub_median)
setnames(ub_median_1998_country, colnames(ub_median_1998_country), c("sexo","oficio_id","1998"))
ub_median_1998_country$`1998` <- as.numeric(ub_median_1998_country$`1998`)
ub_median_1998_country$`1998` <- round(ub_median_1998_country$`1998`, 0)

# Lower Bound for Mean Wage by Gender by country
lb_mean_1998_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id, data = wage_by_gender_and_occupation_1998, FUN = lb_mean)
setnames(lb_mean_1998_country, colnames(lb_mean_1998_country), c("sexo","oficio_id","1998"))
lb_mean_1998_country$`1998` <- as.numeric(lb_mean_1998_country$`1998`)
lb_mean_1998_country$`1998` <- round(lb_mean_1998_country$`1998`, 0)

# Upper Bound for Mean Wage by Gender by country
ub_mean_1998_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id, data = wage_by_gender_and_occupation_1998, FUN = ub_mean)
setnames(ub_mean_1998_country, colnames(ub_mean_1998_country), c("sexo","oficio_id","1998"))
ub_mean_1998_country$`1998` <- as.numeric(ub_mean_1998_country$`1998`)
ub_mean_1998_country$`1998` <- round(ub_mean_1998_country$`1998`, 0)
