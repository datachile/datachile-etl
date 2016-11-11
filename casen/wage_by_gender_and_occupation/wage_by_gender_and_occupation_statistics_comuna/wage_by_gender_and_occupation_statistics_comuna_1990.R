########
# 1990 #
########

# Median Wage by Gender by comuna
median_1990_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id + comuna, data = wage_by_gender_and_occupation_1990, FUN = median, na.rm = TRUE)
setnames(median_1990_comuna, colnames(median_1990_comuna), c("sexo","oficio_id","comuna","1990"))
#median_1990_comuna <- insert_row(median_1990_comuna, c("Pa\u00eds", median(wage_by_gender_and_occupation_1990$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1990_comuna)+1)
median_1990_comuna$`1990` <- as.numeric(median_1990_comuna$`1990`)
median_1990_comuna$`1990` <- round(median_1990_comuna$`1990`, 0)
median_1990_comuna$`1990` <- as.numeric(median_1990_comuna$`1990`)
median_1990_comuna$`1990` <- round(median_1990_comuna$`1990`, 0)

# Average Wage by Gender by comuna
mean_1990_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id + comuna, data = wage_by_gender_and_occupation_1990, FUN = mean, na.rm = TRUE)
setnames(mean_1990_comuna, colnames(mean_1990_comuna), c("sexo","oficio_id","comuna","1990"))
mean_1990_comuna$`1990` <- as.numeric(mean_1990_comuna$`1990`)
mean_1990_comuna$`1990` <- round(mean_1990_comuna$`1990`, 0)
mean_1990_comuna$`1990` <- as.numeric(mean_1990_comuna$`1990`)
mean_1990_comuna$`1990` <- round(mean_1990_comuna$`1990`, 0)

# Lower Bound for Median Wage by Gender by comuna
lb_median_1990_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id + comuna, data = wage_by_gender_and_occupation_1990, FUN = lb_median)
setnames(lb_median_1990_comuna, colnames(lb_median_1990_comuna), c("sexo","oficio_id","comuna","1990"))
lb_median_1990_comuna$`1990` <- as.numeric(lb_median_1990_comuna$`1990`)
lb_median_1990_comuna$`1990` <- round(lb_median_1990_comuna$`1990`, 0)
lb_median_1990_comuna$`1990` <- as.numeric(lb_median_1990_comuna$`1990`)
lb_median_1990_comuna$`1990` <- round(lb_median_1990_comuna$`1990`, 0)

# Upper Bound for Median Wage by Gender by comuna
ub_median_1990_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id + comuna, data = wage_by_gender_and_occupation_1990, FUN = ub_median)
setnames(ub_median_1990_comuna, colnames(ub_median_1990_comuna), c("sexo","oficio_id","comuna","1990"))
ub_median_1990_comuna$`1990` <- as.numeric(ub_median_1990_comuna$`1990`)
ub_median_1990_comuna$`1990` <- round(ub_median_1990_comuna$`1990`, 0)

# Lower Bound for Mean Wage by Gender by comuna
lb_mean_1990_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id + comuna, data = wage_by_gender_and_occupation_1990, FUN = lb_mean)
setnames(lb_mean_1990_comuna, colnames(lb_mean_1990_comuna), c("sexo","oficio_id","comuna","1990"))
lb_mean_1990_comuna$`1990` <- as.numeric(lb_mean_1990_comuna$`1990`)
lb_mean_1990_comuna$`1990` <- round(lb_mean_1990_comuna$`1990`, 0)

# Upper Bound for Mean Wage by Gender by comuna
ub_mean_1990_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id + comuna, data = wage_by_gender_and_occupation_1990, FUN = ub_mean)
setnames(ub_mean_1990_comuna, colnames(ub_mean_1990_comuna), c("sexo","oficio_id","comuna","1990"))
ub_mean_1990_comuna$`1990` <- as.numeric(ub_mean_1990_comuna$`1990`)
ub_mean_1990_comuna$`1990` <- round(ub_mean_1990_comuna$`1990`, 0)
