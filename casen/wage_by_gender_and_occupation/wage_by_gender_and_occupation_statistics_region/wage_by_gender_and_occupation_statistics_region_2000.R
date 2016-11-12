########
# 2000 #
########

# Median Wage by Gender by region
median_2000_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio, data = wage_by_gender_and_occupation_2000, FUN = median, na.rm = TRUE)
setnames(median_2000_region, colnames(median_2000_region), c("sexo","region","oficio","2000"))
#median_2000_region <- insert_row(median_2000_region, c("Pa\u00eds", median(wage_by_gender_and_occupation_2000$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2000_region)+1)
median_2000_region$`2000` <- as.numeric(median_2000_region$`2000`)
median_2000_region$`2000` <- round(median_2000_region$`2000`, 0)
median_2000_region$`2000` <- as.numeric(median_2000_region$`2000`)
median_2000_region$`2000` <- round(median_2000_region$`2000`, 0)

# Average Wage by Gender by region
mean_2000_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio, data = wage_by_gender_and_occupation_2000, FUN = mean, na.rm = TRUE)
setnames(mean_2000_region, colnames(mean_2000_region), c("sexo","region","oficio","2000"))
mean_2000_region$`2000` <- as.numeric(mean_2000_region$`2000`)
mean_2000_region$`2000` <- round(mean_2000_region$`2000`, 0)
mean_2000_region$`2000` <- as.numeric(mean_2000_region$`2000`)
mean_2000_region$`2000` <- round(mean_2000_region$`2000`, 0)

# Lower Bound for Median Wage by Gender by region
lb_median_2000_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio, data = wage_by_gender_and_occupation_2000, FUN = lb_median)
setnames(lb_median_2000_region, colnames(lb_median_2000_region), c("sexo","region","oficio","2000"))
lb_median_2000_region$`2000` <- as.numeric(lb_median_2000_region$`2000`)
lb_median_2000_region$`2000` <- round(lb_median_2000_region$`2000`, 0)
lb_median_2000_region$`2000` <- as.numeric(lb_median_2000_region$`2000`)
lb_median_2000_region$`2000` <- round(lb_median_2000_region$`2000`, 0)

# Upper Bound for Median Wage by Gender by region
ub_median_2000_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio, data = wage_by_gender_and_occupation_2000, FUN = ub_median)
setnames(ub_median_2000_region, colnames(ub_median_2000_region), c("sexo","region","oficio","2000"))
ub_median_2000_region$`2000` <- as.numeric(ub_median_2000_region$`2000`)
ub_median_2000_region$`2000` <- round(ub_median_2000_region$`2000`, 0)

# Lower Bound for Mean Wage by Gender by region
lb_mean_2000_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio, data = wage_by_gender_and_occupation_2000, FUN = lb_mean)
setnames(lb_mean_2000_region, colnames(lb_mean_2000_region), c("sexo","region","oficio","2000"))
lb_mean_2000_region$`2000` <- as.numeric(lb_mean_2000_region$`2000`)
lb_mean_2000_region$`2000` <- round(lb_mean_2000_region$`2000`, 0)

# Upper Bound for Mean Wage by Gender by region
ub_mean_2000_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio, data = wage_by_gender_and_occupation_2000, FUN = ub_mean)
setnames(ub_mean_2000_region, colnames(ub_mean_2000_region), c("sexo","region","oficio","2000"))
ub_mean_2000_region$`2000` <- as.numeric(ub_mean_2000_region$`2000`)
ub_mean_2000_region$`2000` <- round(ub_mean_2000_region$`2000`, 0)
