########
# 1998 #
########

# Median Wage by Gender by comuna
median_1998_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_1998, FUN = median, na.rm = TRUE)
setnames(median_1998_comuna, colnames(median_1998_comuna), c("sexo","oficio","comuna","1998"))
#median_1998_comuna <- insert_row(median_1998_comuna, c("Pa\u00eds", median(wage_by_gender_and_occupation_1998$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1998_comuna)+1)
median_1998_comuna$`1998` <- as.numeric(median_1998_comuna$`1998`)
median_1998_comuna$`1998` <- round(median_1998_comuna$`1998`, 0)
median_1998_comuna$`1998` <- as.numeric(median_1998_comuna$`1998`)
median_1998_comuna$`1998` <- round(median_1998_comuna$`1998`, 0)

# Average Wage by Gender by comuna
mean_1998_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_1998, FUN = mean, na.rm = TRUE)
setnames(mean_1998_comuna, colnames(mean_1998_comuna), c("sexo","oficio","comuna","1998"))
mean_1998_comuna$`1998` <- as.numeric(mean_1998_comuna$`1998`)
mean_1998_comuna$`1998` <- round(mean_1998_comuna$`1998`, 0)
mean_1998_comuna$`1998` <- as.numeric(mean_1998_comuna$`1998`)
mean_1998_comuna$`1998` <- round(mean_1998_comuna$`1998`, 0)

# Lower Bound for Median Wage by Gender by comuna
lb_median_1998_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_1998, FUN = lb_median)
setnames(lb_median_1998_comuna, colnames(lb_median_1998_comuna), c("sexo","oficio","comuna","1998"))
lb_median_1998_comuna$`1998` <- as.numeric(lb_median_1998_comuna$`1998`)
lb_median_1998_comuna$`1998` <- round(lb_median_1998_comuna$`1998`, 0)
lb_median_1998_comuna$`1998` <- as.numeric(lb_median_1998_comuna$`1998`)
lb_median_1998_comuna$`1998` <- round(lb_median_1998_comuna$`1998`, 0)

# Upper Bound for Median Wage by Gender by comuna
ub_median_1998_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_1998, FUN = ub_median)
setnames(ub_median_1998_comuna, colnames(ub_median_1998_comuna), c("sexo","oficio","comuna","1998"))
ub_median_1998_comuna$`1998` <- as.numeric(ub_median_1998_comuna$`1998`)
ub_median_1998_comuna$`1998` <- round(ub_median_1998_comuna$`1998`, 0)

# Lower Bound for Mean Wage by Gender by comuna
lb_mean_1998_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_1998, FUN = lb_mean)
setnames(lb_mean_1998_comuna, colnames(lb_mean_1998_comuna), c("sexo","oficio","comuna","1998"))
lb_mean_1998_comuna$`1998` <- as.numeric(lb_mean_1998_comuna$`1998`)
lb_mean_1998_comuna$`1998` <- round(lb_mean_1998_comuna$`1998`, 0)

# Upper Bound for Mean Wage by Gender by comuna
ub_mean_1998_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_1998, FUN = ub_mean)
setnames(ub_mean_1998_comuna, colnames(ub_mean_1998_comuna), c("sexo","oficio","comuna","1998"))
ub_mean_1998_comuna$`1998` <- as.numeric(ub_mean_1998_comuna$`1998`)
ub_mean_1998_comuna$`1998` <- round(ub_mean_1998_comuna$`1998`, 0)
