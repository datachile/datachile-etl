########
# 1992 #
########

# Median Wage by Gender by region
median_1992_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio_id, data = wage_by_gender_and_occupation_1992, FUN = median, na.rm = TRUE)
setnames(median_1992_region, colnames(median_1992_region), c("sexo","region","oficio_id","1992"))
#median_1992_region <- insert_row(median_1992_region, c("Pa\u00eds", median(wage_by_gender_and_occupation_1992$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1992_region)+1)
median_1992_region$`1992` <- as.numeric(median_1992_region$`1992`)
median_1992_region$`1992` <- round(median_1992_region$`1992`, 0)
median_1992_region$`1992` <- as.numeric(median_1992_region$`1992`)
median_1992_region$`1992` <- round(median_1992_region$`1992`, 0)

# Average Wage by Gender by region
mean_1992_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio_id, data = wage_by_gender_and_occupation_1992, FUN = mean, na.rm = TRUE)
setnames(mean_1992_region, colnames(mean_1992_region), c("sexo","region","oficio_id","1992"))
mean_1992_region$`1992` <- as.numeric(mean_1992_region$`1992`)
mean_1992_region$`1992` <- round(mean_1992_region$`1992`, 0)
mean_1992_region$`1992` <- as.numeric(mean_1992_region$`1992`)
mean_1992_region$`1992` <- round(mean_1992_region$`1992`, 0)

# Lower Bound for Median Wage by Gender by region
lb_median_1992_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio_id, data = wage_by_gender_and_occupation_1992, FUN = lb_median)
setnames(lb_median_1992_region, colnames(lb_median_1992_region), c("sexo","region","oficio_id","1992"))
lb_median_1992_region$`1992` <- as.numeric(lb_median_1992_region$`1992`)
lb_median_1992_region$`1992` <- round(lb_median_1992_region$`1992`, 0)
lb_median_1992_region$`1992` <- as.numeric(lb_median_1992_region$`1992`)
lb_median_1992_region$`1992` <- round(lb_median_1992_region$`1992`, 0)

# Upper Bound for Median Wage by Gender by region
ub_median_1992_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio_id, data = wage_by_gender_and_occupation_1992, FUN = ub_median)
setnames(ub_median_1992_region, colnames(ub_median_1992_region), c("sexo","region","oficio_id","1992"))
ub_median_1992_region$`1992` <- as.numeric(ub_median_1992_region$`1992`)
ub_median_1992_region$`1992` <- round(ub_median_1992_region$`1992`, 0)

# Lower Bound for Mean Wage by Gender by region
lb_mean_1992_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio_id, data = wage_by_gender_and_occupation_1992, FUN = lb_mean)
setnames(lb_mean_1992_region, colnames(lb_mean_1992_region), c("sexo","region","oficio_id","1992"))
lb_mean_1992_region$`1992` <- as.numeric(lb_mean_1992_region$`1992`)
lb_mean_1992_region$`1992` <- round(lb_mean_1992_region$`1992`, 0)

# Upper Bound for Mean Wage by Gender by region
ub_mean_1992_region <- aggregate(ingreso_ocup_principal ~ sexo + region + oficio_id, data = wage_by_gender_and_occupation_1992, FUN = ub_mean)
setnames(ub_mean_1992_region, colnames(ub_mean_1992_region), c("sexo","region","oficio_id","1992"))
ub_mean_1992_region$`1992` <- as.numeric(ub_mean_1992_region$`1992`)
ub_mean_1992_region$`1992` <- round(ub_mean_1992_region$`1992`, 0)
