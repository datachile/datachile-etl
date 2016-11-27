########
# 1996 #
########

# Median Wage by Gender by provincia
median_1996_provincia <- aggregate(ingreso_ocup_principal ~ sexo + provincia, data = wage_by_gender_1996, FUN = median, na.rm = TRUE)
setnames(median_1996_provincia, colnames(median_1996_provincia), c("sexo","provincia","1996"))
#median_1996_provincia <- insert_row(median_1996_provincia, c("Pa\u00eds", median(wage_by_gender_1996$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1996_provincia)+1)
median_1996_provincia$`1996` <- as.numeric(median_1996_provincia$`1996`)
median_1996_provincia$`1996` <- round(median_1996_provincia$`1996`, 0)
median_1996_provincia$`1996` <- as.numeric(median_1996_provincia$`1996`)
median_1996_provincia$`1996` <- round(median_1996_provincia$`1996`, 0)

# Average Wage by Gender by provincia
mean_1996_provincia <- aggregate(ingreso_ocup_principal ~ sexo + provincia, data = wage_by_gender_1996, FUN = mean, na.rm = TRUE)
setnames(mean_1996_provincia, colnames(mean_1996_provincia), c("sexo","provincia","1996"))
mean_1996_provincia$`1996` <- as.numeric(mean_1996_provincia$`1996`)
mean_1996_provincia$`1996` <- round(mean_1996_provincia$`1996`, 0)
mean_1996_provincia$`1996` <- as.numeric(mean_1996_provincia$`1996`)
mean_1996_provincia$`1996` <- round(mean_1996_provincia$`1996`, 0)

# Lower Bound for Median Wage by Gender by provincia
lb_median_1996_provincia <- aggregate(ingreso_ocup_principal ~ sexo + provincia, data = wage_by_gender_1996, FUN = lb_median)
setnames(lb_median_1996_provincia, colnames(lb_median_1996_provincia), c("sexo","provincia","1996"))
lb_median_1996_provincia$`1996` <- as.numeric(lb_median_1996_provincia$`1996`)
lb_median_1996_provincia$`1996` <- round(lb_median_1996_provincia$`1996`, 0)
lb_median_1996_provincia$`1996` <- as.numeric(lb_median_1996_provincia$`1996`)
lb_median_1996_provincia$`1996` <- round(lb_median_1996_provincia$`1996`, 0)

# Upper Bound for Median Wage by Gender by provincia
ub_median_1996_provincia <- aggregate(ingreso_ocup_principal ~ sexo + provincia, data = wage_by_gender_1996, FUN = ub_median)
setnames(ub_median_1996_provincia, colnames(ub_median_1996_provincia), c("sexo","provincia","1996"))
ub_median_1996_provincia$`1996` <- as.numeric(ub_median_1996_provincia$`1996`)
ub_median_1996_provincia$`1996` <- round(ub_median_1996_provincia$`1996`, 0)

# Lower Bound for Mean Wage by Gender by provincia
lb_mean_1996_provincia <- aggregate(ingreso_ocup_principal ~ sexo + provincia, data = wage_by_gender_1996, FUN = lb_mean)
setnames(lb_mean_1996_provincia, colnames(lb_mean_1996_provincia), c("sexo","provincia","1996"))
lb_mean_1996_provincia$`1996` <- as.numeric(lb_mean_1996_provincia$`1996`)
lb_mean_1996_provincia$`1996` <- round(lb_mean_1996_provincia$`1996`, 0)

# Upper Bound for Mean Wage by Gender by provincia
ub_mean_1996_provincia <- aggregate(ingreso_ocup_principal ~ sexo + provincia, data = wage_by_gender_1996, FUN = ub_mean)
setnames(ub_mean_1996_provincia, colnames(ub_mean_1996_provincia), c("sexo","provincia","1996"))
ub_mean_1996_provincia$`1996` <- as.numeric(ub_mean_1996_provincia$`1996`)
ub_mean_1996_provincia$`1996` <- round(ub_mean_1996_provincia$`1996`, 0)
