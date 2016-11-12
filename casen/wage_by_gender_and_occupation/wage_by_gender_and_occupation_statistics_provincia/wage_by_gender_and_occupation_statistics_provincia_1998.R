########
# 1998 #
########

# Median Wage by Gender by provincia
median_1998_provincia <- aggregate(ingreso_ocup_principal ~ sexo + oficio + provincia, data = wage_by_gender_and_occupation_1998, FUN = median, na.rm = TRUE)
setnames(median_1998_provincia, colnames(median_1998_provincia), c("sexo","oficio","provincia","1998"))
#median_1998_provincia <- insert_row(median_1998_provincia, c("Pa\u00eds", median(wage_by_gender_and_occupation_1998$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1998_provincia)+1)
median_1998_provincia$`1998` <- as.numeric(median_1998_provincia$`1998`)
median_1998_provincia$`1998` <- round(median_1998_provincia$`1998`, 0)
median_1998_provincia$`1998` <- as.numeric(median_1998_provincia$`1998`)
median_1998_provincia$`1998` <- round(median_1998_provincia$`1998`, 0)

# Average Wage by Gender by provincia
mean_1998_provincia <- aggregate(ingreso_ocup_principal ~ sexo + oficio + provincia, data = wage_by_gender_and_occupation_1998, FUN = mean, na.rm = TRUE)
setnames(mean_1998_provincia, colnames(mean_1998_provincia), c("sexo","oficio","provincia","1998"))
mean_1998_provincia$`1998` <- as.numeric(mean_1998_provincia$`1998`)
mean_1998_provincia$`1998` <- round(mean_1998_provincia$`1998`, 0)
mean_1998_provincia$`1998` <- as.numeric(mean_1998_provincia$`1998`)
mean_1998_provincia$`1998` <- round(mean_1998_provincia$`1998`, 0)

# Lower Bound for Median Wage by Gender by provincia
lb_median_1998_provincia <- aggregate(ingreso_ocup_principal ~ sexo + oficio + provincia, data = wage_by_gender_and_occupation_1998, FUN = lb_median)
setnames(lb_median_1998_provincia, colnames(lb_median_1998_provincia), c("sexo","oficio","provincia","1998"))
lb_median_1998_provincia$`1998` <- as.numeric(lb_median_1998_provincia$`1998`)
lb_median_1998_provincia$`1998` <- round(lb_median_1998_provincia$`1998`, 0)
lb_median_1998_provincia$`1998` <- as.numeric(lb_median_1998_provincia$`1998`)
lb_median_1998_provincia$`1998` <- round(lb_median_1998_provincia$`1998`, 0)

# Upper Bound for Median Wage by Gender by provincia
ub_median_1998_provincia <- aggregate(ingreso_ocup_principal ~ sexo + oficio + provincia, data = wage_by_gender_and_occupation_1998, FUN = ub_median)
setnames(ub_median_1998_provincia, colnames(ub_median_1998_provincia), c("sexo","oficio","provincia","1998"))
ub_median_1998_provincia$`1998` <- as.numeric(ub_median_1998_provincia$`1998`)
ub_median_1998_provincia$`1998` <- round(ub_median_1998_provincia$`1998`, 0)

# Lower Bound for Mean Wage by Gender by provincia
lb_mean_1998_provincia <- aggregate(ingreso_ocup_principal ~ sexo + oficio + provincia, data = wage_by_gender_and_occupation_1998, FUN = lb_mean)
setnames(lb_mean_1998_provincia, colnames(lb_mean_1998_provincia), c("sexo","oficio","provincia","1998"))
lb_mean_1998_provincia$`1998` <- as.numeric(lb_mean_1998_provincia$`1998`)
lb_mean_1998_provincia$`1998` <- round(lb_mean_1998_provincia$`1998`, 0)

# Upper Bound for Mean Wage by Gender by provincia
ub_mean_1998_provincia <- aggregate(ingreso_ocup_principal ~ sexo + oficio + provincia, data = wage_by_gender_and_occupation_1998, FUN = ub_mean)
setnames(ub_mean_1998_provincia, colnames(ub_mean_1998_provincia), c("sexo","oficio","provincia","1998"))
ub_mean_1998_provincia$`1998` <- as.numeric(ub_mean_1998_provincia$`1998`)
ub_mean_1998_provincia$`1998` <- round(ub_mean_1998_provincia$`1998`, 0)
