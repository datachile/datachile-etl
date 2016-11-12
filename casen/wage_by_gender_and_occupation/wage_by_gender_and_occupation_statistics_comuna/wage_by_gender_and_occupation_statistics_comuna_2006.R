########
# 2006 #
########

# Median Wage by Gender by comuna
median_2006_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2006, FUN = median, na.rm = TRUE)
setnames(median_2006_comuna, colnames(median_2006_comuna), c("sexo","oficio","comuna","2006"))
#median_2006_comuna <- insert_row(median_2006_comuna, c("Pa\u00eds", median(wage_by_gender_and_occupation_2006$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2006_comuna)+1)
median_2006_comuna$`2006` <- as.numeric(median_2006_comuna$`2006`)
median_2006_comuna$`2006` <- round(median_2006_comuna$`2006`, 0)
median_2006_comuna$`2006` <- as.numeric(median_2006_comuna$`2006`)
median_2006_comuna$`2006` <- round(median_2006_comuna$`2006`, 0)

# Average Wage by Gender by comuna
mean_2006_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2006, FUN = mean, na.rm = TRUE)
setnames(mean_2006_comuna, colnames(mean_2006_comuna), c("sexo","oficio","comuna","2006"))
mean_2006_comuna$`2006` <- as.numeric(mean_2006_comuna$`2006`)
mean_2006_comuna$`2006` <- round(mean_2006_comuna$`2006`, 0)
mean_2006_comuna$`2006` <- as.numeric(mean_2006_comuna$`2006`)
mean_2006_comuna$`2006` <- round(mean_2006_comuna$`2006`, 0)

# Lower Bound for Median Wage by Gender by comuna
lb_median_2006_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2006, FUN = lb_median)
setnames(lb_median_2006_comuna, colnames(lb_median_2006_comuna), c("sexo","oficio","comuna","2006"))
lb_median_2006_comuna$`2006` <- as.numeric(lb_median_2006_comuna$`2006`)
lb_median_2006_comuna$`2006` <- round(lb_median_2006_comuna$`2006`, 0)
lb_median_2006_comuna$`2006` <- as.numeric(lb_median_2006_comuna$`2006`)
lb_median_2006_comuna$`2006` <- round(lb_median_2006_comuna$`2006`, 0)

# Upper Bound for Median Wage by Gender by comuna
ub_median_2006_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2006, FUN = ub_median)
setnames(ub_median_2006_comuna, colnames(ub_median_2006_comuna), c("sexo","oficio","comuna","2006"))
ub_median_2006_comuna$`2006` <- as.numeric(ub_median_2006_comuna$`2006`)
ub_median_2006_comuna$`2006` <- round(ub_median_2006_comuna$`2006`, 0)

# Lower Bound for Mean Wage by Gender by comuna
lb_mean_2006_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2006, FUN = lb_mean)
setnames(lb_mean_2006_comuna, colnames(lb_mean_2006_comuna), c("sexo","oficio","comuna","2006"))
lb_mean_2006_comuna$`2006` <- as.numeric(lb_mean_2006_comuna$`2006`)
lb_mean_2006_comuna$`2006` <- round(lb_mean_2006_comuna$`2006`, 0)

# Upper Bound for Mean Wage by Gender by comuna
ub_mean_2006_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2006, FUN = ub_mean)
setnames(ub_mean_2006_comuna, colnames(ub_mean_2006_comuna), c("sexo","oficio","comuna","2006"))
ub_mean_2006_comuna$`2006` <- as.numeric(ub_mean_2006_comuna$`2006`)
ub_mean_2006_comuna$`2006` <- round(ub_mean_2006_comuna$`2006`, 0)
