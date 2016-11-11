########
# 1992 #
########

# Median Wage by Gender by comuna
median_1992_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id + comuna, data = wage_by_gender_and_occupation_1992, FUN = median, na.rm = TRUE)
setnames(median_1992_comuna, colnames(median_1992_comuna), c("sexo","oficio_id","comuna","1992"))
#median_1992_comuna <- insert_row(median_1992_comuna, c("Pa\u00eds", median(wage_by_gender_and_occupation_1992$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1992_comuna)+1)
median_1992_comuna$`1992` <- as.numeric(median_1992_comuna$`1992`)
median_1992_comuna$`1992` <- round(median_1992_comuna$`1992`, 0)
median_1992_comuna$`1992` <- as.numeric(median_1992_comuna$`1992`)
median_1992_comuna$`1992` <- round(median_1992_comuna$`1992`, 0)

# Average Wage by Gender by comuna
mean_1992_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id + comuna, data = wage_by_gender_and_occupation_1992, FUN = mean, na.rm = TRUE)
setnames(mean_1992_comuna, colnames(mean_1992_comuna), c("sexo","oficio_id","comuna","1992"))
mean_1992_comuna$`1992` <- as.numeric(mean_1992_comuna$`1992`)
mean_1992_comuna$`1992` <- round(mean_1992_comuna$`1992`, 0)
mean_1992_comuna$`1992` <- as.numeric(mean_1992_comuna$`1992`)
mean_1992_comuna$`1992` <- round(mean_1992_comuna$`1992`, 0)

# Lower Bound for Median Wage by Gender by comuna
lb_median_1992_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id + comuna, data = wage_by_gender_and_occupation_1992, FUN = lb_median)
setnames(lb_median_1992_comuna, colnames(lb_median_1992_comuna), c("sexo","oficio_id","comuna","1992"))
lb_median_1992_comuna$`1992` <- as.numeric(lb_median_1992_comuna$`1992`)
lb_median_1992_comuna$`1992` <- round(lb_median_1992_comuna$`1992`, 0)
lb_median_1992_comuna$`1992` <- as.numeric(lb_median_1992_comuna$`1992`)
lb_median_1992_comuna$`1992` <- round(lb_median_1992_comuna$`1992`, 0)

# Upper Bound for Median Wage by Gender by comuna
ub_median_1992_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id + comuna, data = wage_by_gender_and_occupation_1992, FUN = ub_median)
setnames(ub_median_1992_comuna, colnames(ub_median_1992_comuna), c("sexo","oficio_id","comuna","1992"))
ub_median_1992_comuna$`1992` <- as.numeric(ub_median_1992_comuna$`1992`)
ub_median_1992_comuna$`1992` <- round(ub_median_1992_comuna$`1992`, 0)

# Lower Bound for Mean Wage by Gender by comuna
lb_mean_1992_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id + comuna, data = wage_by_gender_and_occupation_1992, FUN = lb_mean)
setnames(lb_mean_1992_comuna, colnames(lb_mean_1992_comuna), c("sexo","oficio_id","comuna","1992"))
lb_mean_1992_comuna$`1992` <- as.numeric(lb_mean_1992_comuna$`1992`)
lb_mean_1992_comuna$`1992` <- round(lb_mean_1992_comuna$`1992`, 0)

# Upper Bound for Mean Wage by Gender by comuna
ub_mean_1992_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio_id + comuna, data = wage_by_gender_and_occupation_1992, FUN = ub_mean)
setnames(ub_mean_1992_comuna, colnames(ub_mean_1992_comuna), c("sexo","oficio_id","comuna","1992"))
ub_mean_1992_comuna$`1992` <- as.numeric(ub_mean_1992_comuna$`1992`)
ub_mean_1992_comuna$`1992` <- round(ub_mean_1992_comuna$`1992`, 0)
