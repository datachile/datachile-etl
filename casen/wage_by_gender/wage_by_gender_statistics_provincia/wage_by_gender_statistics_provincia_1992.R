########
# 1992 #
########

# Median Wage by Gender by provincia
median_1992_provincia <- aggregate(ingreso_ocup_principal ~ sexo + provincia, data = wage_by_gender_1992, FUN = median, na.rm = TRUE)
setnames(median_1992_provincia, colnames(median_1992_provincia), c("sexo","provincia","1992"))
#median_1992_provincia <- insert_row(median_1992_provincia, c("Pa\u00eds", median(wage_by_gender_1992$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1992_provincia)+1)
median_1992_provincia$`1992` <- as.numeric(median_1992_provincia$`1992`)
median_1992_provincia$`1992` <- round(median_1992_provincia$`1992`, 0)
median_1992_provincia$`1992` <- as.numeric(median_1992_provincia$`1992`)
median_1992_provincia$`1992` <- round(median_1992_provincia$`1992`, 0)

# Average Wage by Gender by provincia
mean_1992_provincia <- aggregate(ingreso_ocup_principal ~ sexo + provincia, data = wage_by_gender_1992, FUN = mean, na.rm = TRUE)
setnames(mean_1992_provincia, colnames(mean_1992_provincia), c("sexo","provincia","1992"))
mean_1992_provincia$`1992` <- as.numeric(mean_1992_provincia$`1992`)
mean_1992_provincia$`1992` <- round(mean_1992_provincia$`1992`, 0)
mean_1992_provincia$`1992` <- as.numeric(mean_1992_provincia$`1992`)
mean_1992_provincia$`1992` <- round(mean_1992_provincia$`1992`, 0)

# Lower Bound for Median Wage by Gender by provincia
lb_median_1992_provincia <- aggregate(ingreso_ocup_principal ~ sexo + provincia, data = wage_by_gender_1992, FUN = lb_median)
setnames(lb_median_1992_provincia, colnames(lb_median_1992_provincia), c("sexo","provincia","1992"))
lb_median_1992_provincia$`1992` <- as.numeric(lb_median_1992_provincia$`1992`)
lb_median_1992_provincia$`1992` <- round(lb_median_1992_provincia$`1992`, 0)
lb_median_1992_provincia$`1992` <- as.numeric(lb_median_1992_provincia$`1992`)
lb_median_1992_provincia$`1992` <- round(lb_median_1992_provincia$`1992`, 0)

# Upper Bound for Median Wage by Gender by provincia
ub_median_1992_provincia <- aggregate(ingreso_ocup_principal ~ sexo + provincia, data = wage_by_gender_1992, FUN = ub_median)
setnames(ub_median_1992_provincia, colnames(ub_median_1992_provincia), c("sexo","provincia","1992"))
ub_median_1992_provincia$`1992` <- as.numeric(ub_median_1992_provincia$`1992`)
ub_median_1992_provincia$`1992` <- round(ub_median_1992_provincia$`1992`, 0)

# Lower Bound for Mean Wage by Gender by provincia
lb_mean_1992_provincia <- aggregate(ingreso_ocup_principal ~ sexo + provincia, data = wage_by_gender_1992, FUN = lb_mean)
setnames(lb_mean_1992_provincia, colnames(lb_mean_1992_provincia), c("sexo","provincia","1992"))
lb_mean_1992_provincia$`1992` <- as.numeric(lb_mean_1992_provincia$`1992`)
lb_mean_1992_provincia$`1992` <- round(lb_mean_1992_provincia$`1992`, 0)

# Upper Bound for Mean Wage by Gender by provincia
ub_mean_1992_provincia <- aggregate(ingreso_ocup_principal ~ sexo + provincia, data = wage_by_gender_1992, FUN = ub_mean)
setnames(ub_mean_1992_provincia, colnames(ub_mean_1992_provincia), c("sexo","provincia","1992"))
ub_mean_1992_provincia$`1992` <- as.numeric(ub_mean_1992_provincia$`1992`)
ub_mean_1992_provincia$`1992` <- round(ub_mean_1992_provincia$`1992`, 0)
