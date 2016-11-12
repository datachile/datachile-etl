########
# 2011 #
########

# Median Wage by Gender by country
median_2011_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_2011, FUN = median, na.rm = TRUE)
setnames(median_2011_country, colnames(median_2011_country), c("sexo","oficio","2011"))
#median_2011_country <- insert_row(median_2011_country, c("Pa\u00eds", median(wage_by_gender_and_occupation_2011$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2011_country)+1)
median_2011_country$`2011` <- as.numeric(median_2011_country$`2011`)
median_2011_country$`2011` <- round(median_2011_country$`2011`, 0)
median_2011_country$`2011` <- as.numeric(median_2011_country$`2011`)
median_2011_country$`2011` <- round(median_2011_country$`2011`, 0)

# Average Wage by Gender by country
mean_2011_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_2011, FUN = mean, na.rm = TRUE)
setnames(mean_2011_country, colnames(mean_2011_country), c("sexo","oficio","2011"))
mean_2011_country$`2011` <- as.numeric(mean_2011_country$`2011`)
mean_2011_country$`2011` <- round(mean_2011_country$`2011`, 0)
mean_2011_country$`2011` <- as.numeric(mean_2011_country$`2011`)
mean_2011_country$`2011` <- round(mean_2011_country$`2011`, 0)

# Lower Bound for Median Wage by Gender by country
lb_median_2011_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_2011, FUN = lb_median)
setnames(lb_median_2011_country, colnames(lb_median_2011_country), c("sexo","oficio","2011"))
lb_median_2011_country$`2011` <- as.numeric(lb_median_2011_country$`2011`)
lb_median_2011_country$`2011` <- round(lb_median_2011_country$`2011`, 0)
lb_median_2011_country$`2011` <- as.numeric(lb_median_2011_country$`2011`)
lb_median_2011_country$`2011` <- round(lb_median_2011_country$`2011`, 0)

# Upper Bound for Median Wage by Gender by country
ub_median_2011_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_2011, FUN = ub_median)
setnames(ub_median_2011_country, colnames(ub_median_2011_country), c("sexo","oficio","2011"))
ub_median_2011_country$`2011` <- as.numeric(ub_median_2011_country$`2011`)
ub_median_2011_country$`2011` <- round(ub_median_2011_country$`2011`, 0)

# Lower Bound for Mean Wage by Gender by country
lb_mean_2011_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_2011, FUN = lb_mean)
setnames(lb_mean_2011_country, colnames(lb_mean_2011_country), c("sexo","oficio","2011"))
lb_mean_2011_country$`2011` <- as.numeric(lb_mean_2011_country$`2011`)
lb_mean_2011_country$`2011` <- round(lb_mean_2011_country$`2011`, 0)

# Upper Bound for Mean Wage by Gender by country
ub_mean_2011_country <- aggregate(ingreso_ocup_principal ~ sexo + oficio, data = wage_by_gender_and_occupation_2011, FUN = ub_mean)
setnames(ub_mean_2011_country, colnames(ub_mean_2011_country), c("sexo","oficio","2011"))
ub_mean_2011_country$`2011` <- as.numeric(ub_mean_2011_country$`2011`)
ub_mean_2011_country$`2011` <- round(ub_mean_2011_country$`2011`, 0)
