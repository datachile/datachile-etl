########
# 1994 #
########

# Median Wage by Gender by comuna
median_1994_comuna <- aggregate(ingreso_ocup_principal ~ sexo + comuna, data = wage_by_gender_1994, FUN = median, na.rm = TRUE)
setnames(median_1994_comuna, colnames(median_1994_comuna), c("sexo","comuna","1994"))
#median_1994_comuna <- insert_row(median_1994_comuna, c("Pa\u00eds", median(wage_by_gender_1994$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1994_comuna)+1)
median_1994_comuna$`1994` <- as.numeric(median_1994_comuna$`1994`)
median_1994_comuna$`1994` <- round(median_1994_comuna$`1994`, 0)
median_1994_comuna$`1994` <- as.numeric(median_1994_comuna$`1994`)
median_1994_comuna$`1994` <- round(median_1994_comuna$`1994`, 0)

# Average Wage by Gender by comuna
mean_1994_comuna <- aggregate(ingreso_ocup_principal ~ sexo + comuna, data = wage_by_gender_1994, FUN = mean, na.rm = TRUE)
setnames(mean_1994_comuna, colnames(mean_1994_comuna), c("sexo","comuna","1994"))
mean_1994_comuna$`1994` <- as.numeric(mean_1994_comuna$`1994`)
mean_1994_comuna$`1994` <- round(mean_1994_comuna$`1994`, 0)
mean_1994_comuna$`1994` <- as.numeric(mean_1994_comuna$`1994`)
mean_1994_comuna$`1994` <- round(mean_1994_comuna$`1994`, 0)

# Lower Bound for Median Wage by Gender by comuna
lb_median_1994_comuna <- aggregate(ingreso_ocup_principal ~ sexo + comuna, data = wage_by_gender_1994, FUN = lb_median)
setnames(lb_median_1994_comuna, colnames(lb_median_1994_comuna), c("sexo","comuna","1994"))
lb_median_1994_comuna$`1994` <- as.numeric(lb_median_1994_comuna$`1994`)
lb_median_1994_comuna$`1994` <- round(lb_median_1994_comuna$`1994`, 0)
lb_median_1994_comuna$`1994` <- as.numeric(lb_median_1994_comuna$`1994`)
lb_median_1994_comuna$`1994` <- round(lb_median_1994_comuna$`1994`, 0)

# Upper Bound for Median Wage by Gender by comuna
ub_median_1994_comuna <- aggregate(ingreso_ocup_principal ~ sexo + comuna, data = wage_by_gender_1994, FUN = ub_median)
setnames(ub_median_1994_comuna, colnames(ub_median_1994_comuna), c("sexo","comuna","1994"))
ub_median_1994_comuna$`1994` <- as.numeric(ub_median_1994_comuna$`1994`)
ub_median_1994_comuna$`1994` <- round(ub_median_1994_comuna$`1994`, 0)

# Lower Bound for Mean Wage by Gender by comuna
lb_mean_1994_comuna <- aggregate(ingreso_ocup_principal ~ sexo + comuna, data = wage_by_gender_1994, FUN = lb_mean)
setnames(lb_mean_1994_comuna, colnames(lb_mean_1994_comuna), c("sexo","comuna","1994"))
lb_mean_1994_comuna$`1994` <- as.numeric(lb_mean_1994_comuna$`1994`)
lb_mean_1994_comuna$`1994` <- round(lb_mean_1994_comuna$`1994`, 0)

# Upper Bound for Mean Wage by Gender by comuna
ub_mean_1994_comuna <- aggregate(ingreso_ocup_principal ~ sexo + comuna, data = wage_by_gender_1994, FUN = ub_mean)
setnames(ub_mean_1994_comuna, colnames(ub_mean_1994_comuna), c("sexo","comuna","1994"))
ub_mean_1994_comuna$`1994` <- as.numeric(ub_mean_1994_comuna$`1994`)
ub_mean_1994_comuna$`1994` <- round(ub_mean_1994_comuna$`1994`, 0)
