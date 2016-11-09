########
# 1994 #
########

# Median Household Income by region
median_1994_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1994, FUN = median, na.rm = TRUE)
median_1994_region$region <- as.character(median_1994_region$region)
setnames(median_1994_region, colnames(median_1994_region), c("region","1994"))
#median_1994_region <- insert_row(median_1994_region, c("Pa\u00eds", median(wage_by_gender_1994$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1994_region)+1)
median_1994_region$`1994` <- as.numeric(median_1994_region$`1994`)
median_1994_region$`1994` <- round(median_1994_region$`1994`, 0)
median_1994_region$`1994` <- as.numeric(median_1994_region$`1994`)
median_1994_region$`1994` <- round(median_1994_region$`1994`, 0)

# Average Household Income by region
mean_1994_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1994, FUN = "mean")
mean_1994_region$region <- as.character(mean_1994_region$region)
setnames(mean_1994_region, colnames(mean_1994_region), c("region","1994"))
mean_1994_region$`1994` <- as.numeric(mean_1994_region$`1994`)
mean_1994_region$`1994` <- round(mean_1994_region$`1994`, 0)
mean_1994_region$`1994` <- as.numeric(mean_1994_region$`1994`)
mean_1994_region$`1994` <- round(mean_1994_region$`1994`, 0)

# Lower Bound for Median Household Income by region
lb_median_1994_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1994, FUN = lb_median)
lb_median_1994_region$region <- as.character(lb_median_1994_region$region)
setnames(lb_median_1994_region, colnames(lb_median_1994_region), c("region","1994"))
lb_median_1994_region$`1994` <- as.numeric(lb_median_1994_region$`1994`)
lb_median_1994_region$`1994` <- round(lb_median_1994_region$`1994`, 0)
lb_median_1994_region$`1994` <- as.numeric(lb_median_1994_region$`1994`)
lb_median_1994_region$`1994` <- round(lb_median_1994_region$`1994`, 0)

# Upper Bound for Median Household Income by region
ub_median_1994_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1994, FUN = ub_median)
ub_median_1994_region$region <- as.character(ub_median_1994_region$region)
setnames(ub_median_1994_region, colnames(ub_median_1994_region), c("region","1994"))
ub_median_1994_region$`1994` <- as.numeric(ub_median_1994_region$`1994`)
ub_median_1994_region$`1994` <- round(ub_median_1994_region$`1994`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_1994_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1994, FUN = lb_mean)
lb_mean_1994_region$region <- as.character(lb_mean_1994_region$region)
setnames(lb_mean_1994_region, colnames(lb_mean_1994_region), c("region","1994"))
lb_mean_1994_region$`1994` <- as.numeric(lb_mean_1994_region$`1994`)
lb_mean_1994_region$`1994` <- round(lb_mean_1994_region$`1994`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_1994_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1994, FUN = ub_mean)
ub_mean_1994_region$region <- as.character(ub_mean_1994_region$region)
setnames(ub_mean_1994_region, colnames(ub_mean_1994_region), c("region","1994"))
ub_mean_1994_region$`1994` <- as.numeric(ub_mean_1994_region$`1994`)
ub_mean_1994_region$`1994` <- round(ub_mean_1994_region$`1994`, 0)
