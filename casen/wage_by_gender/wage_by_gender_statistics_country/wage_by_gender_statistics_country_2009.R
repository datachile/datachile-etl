########
# 2009 #
########

# Median Wage by Gender by country
median_2009_country <- aggregate(ingreso_ocup_principal ~ sexo, data = wage_by_gender_2009, FUN = median, na.rm = TRUE)
setnames(median_2009_country, colnames(median_2009_country), c("sexo","2009"))
#median_2009_country <- insert_row(median_2009_country, c("Pa\u00eds", median(wage_by_gender_2009$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2009_country)+1)
median_2009_country$`2009` <- as.numeric(median_2009_country$`2009`)
median_2009_country$`2009` <- round(median_2009_country$`2009`, 0)
median_2009_country$`2009` <- as.numeric(median_2009_country$`2009`)
median_2009_country$`2009` <- round(median_2009_country$`2009`, 0)

# Average Wage by Gender by country
mean_2009_country <- aggregate(ingreso_ocup_principal ~ sexo, data = wage_by_gender_2009, FUN = mean, na.rm = TRUE)
setnames(mean_2009_country, colnames(mean_2009_country), c("sexo","2009"))
mean_2009_country$`2009` <- as.numeric(mean_2009_country$`2009`)
mean_2009_country$`2009` <- round(mean_2009_country$`2009`, 0)
mean_2009_country$`2009` <- as.numeric(mean_2009_country$`2009`)
mean_2009_country$`2009` <- round(mean_2009_country$`2009`, 0)

# Lower Bound for Median Wage by Gender by country
lb_median_2009_country <- aggregate(ingreso_ocup_principal ~ sexo, data = wage_by_gender_2009, FUN = lb_median)
setnames(lb_median_2009_country, colnames(lb_median_2009_country), c("sexo","2009"))
lb_median_2009_country$`2009` <- as.numeric(lb_median_2009_country$`2009`)
lb_median_2009_country$`2009` <- round(lb_median_2009_country$`2009`, 0)
lb_median_2009_country$`2009` <- as.numeric(lb_median_2009_country$`2009`)
lb_median_2009_country$`2009` <- round(lb_median_2009_country$`2009`, 0)

# Upper Bound for Median Wage by Gender by country
ub_median_2009_country <- aggregate(ingreso_ocup_principal ~ sexo, data = wage_by_gender_2009, FUN = ub_median)
setnames(ub_median_2009_country, colnames(ub_median_2009_country), c("sexo","2009"))
ub_median_2009_country$`2009` <- as.numeric(ub_median_2009_country$`2009`)
ub_median_2009_country$`2009` <- round(ub_median_2009_country$`2009`, 0)

# Lower Bound for Mean Wage by Gender by country
lb_mean_2009_country <- aggregate(ingreso_ocup_principal ~ sexo, data = wage_by_gender_2009, FUN = lb_mean)
setnames(lb_mean_2009_country, colnames(lb_mean_2009_country), c("sexo","2009"))
lb_mean_2009_country$`2009` <- as.numeric(lb_mean_2009_country$`2009`)
lb_mean_2009_country$`2009` <- round(lb_mean_2009_country$`2009`, 0)

# Upper Bound for Mean Wage by Gender by country
ub_mean_2009_country <- aggregate(ingreso_ocup_principal ~ sexo, data = wage_by_gender_2009, FUN = ub_mean)
setnames(ub_mean_2009_country, colnames(ub_mean_2009_country), c("sexo","2009"))
ub_mean_2009_country$`2009` <- as.numeric(ub_mean_2009_country$`2009`)
ub_mean_2009_country$`2009` <- round(ub_mean_2009_country$`2009`, 0)
