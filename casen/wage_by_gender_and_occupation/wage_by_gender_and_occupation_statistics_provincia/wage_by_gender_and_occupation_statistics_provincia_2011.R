########
# 2011 #
########

# Median Wage by Gender by provincia
median_2011_provincia <- aggregate(ingreso_ocup_principal ~ sexo + oficio + provincia, data = wage_by_gender_and_occupation_2011, FUN = median, na.rm = TRUE)
setnames(median_2011_provincia, colnames(median_2011_provincia), c("sexo","oficio","provincia","2011"))
#median_2011_provincia <- insert_row(median_2011_provincia, c("Pa\u00eds", median(wage_by_gender_and_occupation_2011$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2011_provincia)+1)
median_2011_provincia$`2011` <- as.numeric(median_2011_provincia$`2011`)
median_2011_provincia$`2011` <- round(median_2011_provincia$`2011`, 0)
median_2011_provincia$`2011` <- as.numeric(median_2011_provincia$`2011`)
median_2011_provincia$`2011` <- round(median_2011_provincia$`2011`, 0)

# Average Wage by Gender by provincia
mean_2011_provincia <- aggregate(ingreso_ocup_principal ~ sexo + oficio + provincia, data = wage_by_gender_and_occupation_2011, FUN = mean, na.rm = TRUE)
setnames(mean_2011_provincia, colnames(mean_2011_provincia), c("sexo","oficio","provincia","2011"))
mean_2011_provincia$`2011` <- as.numeric(mean_2011_provincia$`2011`)
mean_2011_provincia$`2011` <- round(mean_2011_provincia$`2011`, 0)
mean_2011_provincia$`2011` <- as.numeric(mean_2011_provincia$`2011`)
mean_2011_provincia$`2011` <- round(mean_2011_provincia$`2011`, 0)

# Lower Bound for Median Wage by Gender by provincia
lb_median_2011_provincia <- aggregate(ingreso_ocup_principal ~ sexo + oficio + provincia, data = wage_by_gender_and_occupation_2011, FUN = lb_median)
setnames(lb_median_2011_provincia, colnames(lb_median_2011_provincia), c("sexo","oficio","provincia","2011"))
lb_median_2011_provincia$`2011` <- as.numeric(lb_median_2011_provincia$`2011`)
lb_median_2011_provincia$`2011` <- round(lb_median_2011_provincia$`2011`, 0)
lb_median_2011_provincia$`2011` <- as.numeric(lb_median_2011_provincia$`2011`)
lb_median_2011_provincia$`2011` <- round(lb_median_2011_provincia$`2011`, 0)

# Upper Bound for Median Wage by Gender by provincia
ub_median_2011_provincia <- aggregate(ingreso_ocup_principal ~ sexo + oficio + provincia, data = wage_by_gender_and_occupation_2011, FUN = ub_median)
setnames(ub_median_2011_provincia, colnames(ub_median_2011_provincia), c("sexo","oficio","provincia","2011"))
ub_median_2011_provincia$`2011` <- as.numeric(ub_median_2011_provincia$`2011`)
ub_median_2011_provincia$`2011` <- round(ub_median_2011_provincia$`2011`, 0)

# Lower Bound for Mean Wage by Gender by provincia
lb_mean_2011_provincia <- aggregate(ingreso_ocup_principal ~ sexo + oficio + provincia, data = wage_by_gender_and_occupation_2011, FUN = lb_mean)
setnames(lb_mean_2011_provincia, colnames(lb_mean_2011_provincia), c("sexo","oficio","provincia","2011"))
lb_mean_2011_provincia$`2011` <- as.numeric(lb_mean_2011_provincia$`2011`)
lb_mean_2011_provincia$`2011` <- round(lb_mean_2011_provincia$`2011`, 0)

# Upper Bound for Mean Wage by Gender by provincia
ub_mean_2011_provincia <- aggregate(ingreso_ocup_principal ~ sexo + oficio + provincia, data = wage_by_gender_and_occupation_2011, FUN = ub_mean)
setnames(ub_mean_2011_provincia, colnames(ub_mean_2011_provincia), c("sexo","oficio","provincia","2011"))
ub_mean_2011_provincia$`2011` <- as.numeric(ub_mean_2011_provincia$`2011`)
ub_mean_2011_provincia$`2011` <- round(ub_mean_2011_provincia$`2011`, 0)
