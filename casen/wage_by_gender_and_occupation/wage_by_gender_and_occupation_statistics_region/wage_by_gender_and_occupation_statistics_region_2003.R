########
# 2003 #
########

# Median Wage by Gender by region
median_2003_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio, data = wage_by_gender_and_occupation_2003, FUN = median, na.rm = TRUE)
setnames(median_2003_region, colnames(median_2003_region), c("sexo","region","oficio","2003"))
#median_2003_region <- insert_row(median_2003_region, c("Pa\u00eds", median(wage_by_gender_and_occupation_2003$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2003_region)+1)
median_2003_region$`2003` <- as.numeric(median_2003_region$`2003`)
median_2003_region$`2003` <- round(median_2003_region$`2003`, 0)
median_2003_region$`2003` <- as.numeric(median_2003_region$`2003`)
median_2003_region$`2003` <- round(median_2003_region$`2003`, 0)

# Average Wage by Gender by region
mean_2003_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio, data = wage_by_gender_and_occupation_2003, FUN = mean, na.rm = TRUE)
setnames(mean_2003_region, colnames(mean_2003_region), c("sexo","region","oficio","2003"))
mean_2003_region$`2003` <- as.numeric(mean_2003_region$`2003`)
mean_2003_region$`2003` <- round(mean_2003_region$`2003`, 0)
mean_2003_region$`2003` <- as.numeric(mean_2003_region$`2003`)
mean_2003_region$`2003` <- round(mean_2003_region$`2003`, 0)

# Lower Bound for Median Wage by Gender by region
lb_median_2003_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio, data = wage_by_gender_and_occupation_2003, FUN = lb_median)
setnames(lb_median_2003_region, colnames(lb_median_2003_region), c("sexo","region","oficio","2003"))
lb_median_2003_region$`2003` <- as.numeric(lb_median_2003_region$`2003`)
lb_median_2003_region$`2003` <- round(lb_median_2003_region$`2003`, 0)
lb_median_2003_region$`2003` <- as.numeric(lb_median_2003_region$`2003`)
lb_median_2003_region$`2003` <- round(lb_median_2003_region$`2003`, 0)

# Upper Bound for Median Wage by Gender by region
ub_median_2003_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio, data = wage_by_gender_and_occupation_2003, FUN = ub_median)
setnames(ub_median_2003_region, colnames(ub_median_2003_region), c("sexo","region","oficio","2003"))
ub_median_2003_region$`2003` <- as.numeric(ub_median_2003_region$`2003`)
ub_median_2003_region$`2003` <- round(ub_median_2003_region$`2003`, 0)

# Lower Bound for Mean Wage by Gender by region
lb_mean_2003_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio, data = wage_by_gender_and_occupation_2003, FUN = lb_mean)
setnames(lb_mean_2003_region, colnames(lb_mean_2003_region), c("sexo","region","oficio","2003"))
lb_mean_2003_region$`2003` <- as.numeric(lb_mean_2003_region$`2003`)
lb_mean_2003_region$`2003` <- round(lb_mean_2003_region$`2003`, 0)

# Upper Bound for Mean Wage by Gender by region
ub_mean_2003_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio, data = wage_by_gender_and_occupation_2003, FUN = ub_mean)
setnames(ub_mean_2003_region, colnames(ub_mean_2003_region), c("sexo","region","oficio","2003"))
ub_mean_2003_region$`2003` <- as.numeric(ub_mean_2003_region$`2003`)
ub_mean_2003_region$`2003` <- round(ub_mean_2003_region$`2003`, 0)
