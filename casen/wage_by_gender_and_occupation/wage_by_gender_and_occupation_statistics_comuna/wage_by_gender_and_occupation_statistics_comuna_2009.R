########
# 2009 #
########

# Median Wage by Gender by comuna
median_2009_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2009, FUN = median, na.rm = TRUE)
setnames(median_2009_comuna, colnames(median_2009_comuna), c("sexo","oficio","comuna","2009"))
#median_2009_comuna <- insert_row(median_2009_comuna, c("Pa\u00eds", median(wage_by_gender_and_occupation_2009$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2009_comuna)+1)
median_2009_comuna$`2009` <- as.numeric(median_2009_comuna$`2009`)
median_2009_comuna$`2009` <- round(median_2009_comuna$`2009`, 0)
median_2009_comuna$`2009` <- as.numeric(median_2009_comuna$`2009`)
median_2009_comuna$`2009` <- round(median_2009_comuna$`2009`, 0)

# Average Wage by Gender by comuna
mean_2009_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2009, FUN = mean, na.rm = TRUE)
setnames(mean_2009_comuna, colnames(mean_2009_comuna), c("sexo","oficio","comuna","2009"))
mean_2009_comuna$`2009` <- as.numeric(mean_2009_comuna$`2009`)
mean_2009_comuna$`2009` <- round(mean_2009_comuna$`2009`, 0)
mean_2009_comuna$`2009` <- as.numeric(mean_2009_comuna$`2009`)
mean_2009_comuna$`2009` <- round(mean_2009_comuna$`2009`, 0)

# Lower Bound for Median Wage by Gender by comuna
lb_median_2009_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2009, FUN = lb_median)
setnames(lb_median_2009_comuna, colnames(lb_median_2009_comuna), c("sexo","oficio","comuna","2009"))
lb_median_2009_comuna$`2009` <- as.numeric(lb_median_2009_comuna$`2009`)
lb_median_2009_comuna$`2009` <- round(lb_median_2009_comuna$`2009`, 0)
lb_median_2009_comuna$`2009` <- as.numeric(lb_median_2009_comuna$`2009`)
lb_median_2009_comuna$`2009` <- round(lb_median_2009_comuna$`2009`, 0)

# Upper Bound for Median Wage by Gender by comuna
ub_median_2009_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2009, FUN = ub_median)
setnames(ub_median_2009_comuna, colnames(ub_median_2009_comuna), c("sexo","oficio","comuna","2009"))
ub_median_2009_comuna$`2009` <- as.numeric(ub_median_2009_comuna$`2009`)
ub_median_2009_comuna$`2009` <- round(ub_median_2009_comuna$`2009`, 0)

# Lower Bound for Mean Wage by Gender by comuna
lb_mean_2009_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2009, FUN = lb_mean)
setnames(lb_mean_2009_comuna, colnames(lb_mean_2009_comuna), c("sexo","oficio","comuna","2009"))
lb_mean_2009_comuna$`2009` <- as.numeric(lb_mean_2009_comuna$`2009`)
lb_mean_2009_comuna$`2009` <- round(lb_mean_2009_comuna$`2009`, 0)

# Upper Bound for Mean Wage by Gender by comuna
ub_mean_2009_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2009, FUN = ub_mean)
setnames(ub_mean_2009_comuna, colnames(ub_mean_2009_comuna), c("sexo","oficio","comuna","2009"))
ub_mean_2009_comuna$`2009` <- as.numeric(ub_mean_2009_comuna$`2009`)
ub_mean_2009_comuna$`2009` <- round(ub_mean_2009_comuna$`2009`, 0)
