########
# 1990 #
########

# Median Household Income by region
median_1990_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1990, FUN = median, na.rm = TRUE)
median_1990_region$region <- as.character(median_1990_region$region)
setnames(median_1990_region, colnames(median_1990_region), c("region","1990"))
#median_1990_region <- insert_row(median_1990_region, c("Pa\u00eds", median(wage_by_gender_1990$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1990_region)+1)
median_1990_region$`1990` <- as.numeric(median_1990_region$`1990`)
median_1990_region$`1990` <- round(median_1990_region$`1990`, 0)
median_1990_region$`1990` <- as.numeric(median_1990_region$`1990`)
median_1990_region$`1990` <- round(median_1990_region$`1990`, 0)

# Average Household Income by region
mean_1990_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1990, FUN = "mean")
mean_1990_region$region <- as.character(mean_1990_region$region)
setnames(mean_1990_region, colnames(mean_1990_region), c("region","1990"))
mean_1990_region$`1990` <- as.numeric(mean_1990_region$`1990`)
mean_1990_region$`1990` <- round(mean_1990_region$`1990`, 0)
mean_1990_region$`1990` <- as.numeric(mean_1990_region$`1990`)
mean_1990_region$`1990` <- round(mean_1990_region$`1990`, 0)

# Lower Bound for Median Household Income by region
lb_median_1990_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1990, FUN = lb_median)
lb_median_1990_region$region <- as.character(lb_median_1990_region$region)
setnames(lb_median_1990_region, colnames(lb_median_1990_region), c("region","1990"))
lb_median_1990_region$`1990` <- as.numeric(lb_median_1990_region$`1990`)
lb_median_1990_region$`1990` <- round(lb_median_1990_region$`1990`, 0)
lb_median_1990_region$`1990` <- as.numeric(lb_median_1990_region$`1990`)
lb_median_1990_region$`1990` <- round(lb_median_1990_region$`1990`, 0)

# Upper Bound for Median Household Income by region
ub_median_1990_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1990, FUN = ub_median)
ub_median_1990_region$region <- as.character(ub_median_1990_region$region)
setnames(ub_median_1990_region, colnames(ub_median_1990_region), c("region","1990"))
ub_median_1990_region$`1990` <- as.numeric(ub_median_1990_region$`1990`)
ub_median_1990_region$`1990` <- round(ub_median_1990_region$`1990`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_1990_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1990, FUN = lb_mean)
lb_mean_1990_region$region <- as.character(lb_mean_1990_region$region)
setnames(lb_mean_1990_region, colnames(lb_mean_1990_region), c("region","1990"))
lb_mean_1990_region$`1990` <- as.numeric(lb_mean_1990_region$`1990`)
lb_mean_1990_region$`1990` <- round(lb_mean_1990_region$`1990`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_1990_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1990, FUN = ub_mean)
ub_mean_1990_region$region <- as.character(ub_mean_1990_region$region)
setnames(ub_mean_1990_region, colnames(ub_mean_1990_region), c("region","1990"))
ub_mean_1990_region$`1990` <- as.numeric(ub_mean_1990_region$`1990`)
ub_mean_1990_region$`1990` <- round(ub_mean_1990_region$`1990`, 0)
