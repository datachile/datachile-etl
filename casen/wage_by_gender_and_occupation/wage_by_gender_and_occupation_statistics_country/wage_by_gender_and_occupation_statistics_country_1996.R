########
# 1996 #
########

# Median Wage by Gender by country
median_1996_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id, data = wage_by_gender_and_occupation_1996, FUN = median, na.rm = TRUE)
setnames(median_1996_country, colnames(median_1996_country), c("sexo","oficio_id","1996"))
#median_1996_country <- insert_row(median_1996_country, c("Pa\u00eds", median(wage_by_gender_and_occupation_1996$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1996_country)+1)
median_1996_country$`1996` <- as.numeric(median_1996_country$`1996`)
median_1996_country$`1996` <- round(median_1996_country$`1996`, 0)
median_1996_country$`1996` <- as.numeric(median_1996_country$`1996`)
median_1996_country$`1996` <- round(median_1996_country$`1996`, 0)

# Average Wage by Gender by country
mean_1996_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id, data = wage_by_gender_and_occupation_1996, FUN = mean, na.rm = TRUE)
setnames(mean_1996_country, colnames(mean_1996_country), c("sexo","oficio_id","1996"))
mean_1996_country$`1996` <- as.numeric(mean_1996_country$`1996`)
mean_1996_country$`1996` <- round(mean_1996_country$`1996`, 0)
mean_1996_country$`1996` <- as.numeric(mean_1996_country$`1996`)
mean_1996_country$`1996` <- round(mean_1996_country$`1996`, 0)

# Lower Bound for Median Wage by Gender by country
lb_median_1996_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id, data = wage_by_gender_and_occupation_1996, FUN = lb_median)
setnames(lb_median_1996_country, colnames(lb_median_1996_country), c("sexo","oficio_id","1996"))
lb_median_1996_country$`1996` <- as.numeric(lb_median_1996_country$`1996`)
lb_median_1996_country$`1996` <- round(lb_median_1996_country$`1996`, 0)
lb_median_1996_country$`1996` <- as.numeric(lb_median_1996_country$`1996`)
lb_median_1996_country$`1996` <- round(lb_median_1996_country$`1996`, 0)

# Upper Bound for Median Wage by Gender by country
ub_median_1996_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id, data = wage_by_gender_and_occupation_1996, FUN = ub_median)
setnames(ub_median_1996_country, colnames(ub_median_1996_country), c("sexo","oficio_id","1996"))
ub_median_1996_country$`1996` <- as.numeric(ub_median_1996_country$`1996`)
ub_median_1996_country$`1996` <- round(ub_median_1996_country$`1996`, 0)

# Lower Bound for Mean Wage by Gender by country
lb_mean_1996_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id, data = wage_by_gender_and_occupation_1996, FUN = lb_mean)
setnames(lb_mean_1996_country, colnames(lb_mean_1996_country), c("sexo","oficio_id","1996"))
lb_mean_1996_country$`1996` <- as.numeric(lb_mean_1996_country$`1996`)
lb_mean_1996_country$`1996` <- round(lb_mean_1996_country$`1996`, 0)

# Upper Bound for Mean Wage by Gender by country
ub_mean_1996_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id, data = wage_by_gender_and_occupation_1996, FUN = ub_mean)
setnames(ub_mean_1996_country, colnames(ub_mean_1996_country), c("sexo","oficio_id","1996"))
ub_mean_1996_country$`1996` <- as.numeric(ub_mean_1996_country$`1996`)
ub_mean_1996_country$`1996` <- round(ub_mean_1996_country$`1996`, 0)
