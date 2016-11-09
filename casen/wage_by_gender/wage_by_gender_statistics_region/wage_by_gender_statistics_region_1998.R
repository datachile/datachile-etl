########
# 1998 #
########

# Median Household Income by region
median_1998_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1998, FUN = median, na.rm = TRUE)
median_1998_region$region <- as.character(median_1998_region$region)
setnames(median_1998_region, colnames(median_1998_region), c("region","1998"))
#median_1998_region <- insert_row(median_1998_region, c("Pa\u00eds", median(wage_by_gender_1998$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1998_region)+1)
median_1998_region$`1998` <- as.numeric(median_1998_region$`1998`)
median_1998_region$`1998` <- round(median_1998_region$`1998`, 0)
median_1998_region$`1998` <- as.numeric(median_1998_region$`1998`)
median_1998_region$`1998` <- round(median_1998_region$`1998`, 0)

# Average Household Income by region
mean_1998_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1998, FUN = "mean")
mean_1998_region$region <- as.character(mean_1998_region$region)
setnames(mean_1998_region, colnames(mean_1998_region), c("region","1998"))
mean_1998_region$`1998` <- as.numeric(mean_1998_region$`1998`)
mean_1998_region$`1998` <- round(mean_1998_region$`1998`, 0)
mean_1998_region$`1998` <- as.numeric(mean_1998_region$`1998`)
mean_1998_region$`1998` <- round(mean_1998_region$`1998`, 0)

# Lower Bound for Median Household Income by region
lb_median_1998_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1998, FUN = lb_median)
lb_median_1998_region$region <- as.character(lb_median_1998_region$region)
setnames(lb_median_1998_region, colnames(lb_median_1998_region), c("region","1998"))
lb_median_1998_region$`1998` <- as.numeric(lb_median_1998_region$`1998`)
lb_median_1998_region$`1998` <- round(lb_median_1998_region$`1998`, 0)
lb_median_1998_region$`1998` <- as.numeric(lb_median_1998_region$`1998`)
lb_median_1998_region$`1998` <- round(lb_median_1998_region$`1998`, 0)

# Upper Bound for Median Household Income by region
ub_median_1998_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1998, FUN = ub_median)
ub_median_1998_region$region <- as.character(ub_median_1998_region$region)
setnames(ub_median_1998_region, colnames(ub_median_1998_region), c("region","1998"))
ub_median_1998_region$`1998` <- as.numeric(ub_median_1998_region$`1998`)
ub_median_1998_region$`1998` <- round(ub_median_1998_region$`1998`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_1998_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1998, FUN = lb_mean)
lb_mean_1998_region$region <- as.character(lb_mean_1998_region$region)
setnames(lb_mean_1998_region, colnames(lb_mean_1998_region), c("region","1998"))
lb_mean_1998_region$`1998` <- as.numeric(lb_mean_1998_region$`1998`)
lb_mean_1998_region$`1998` <- round(lb_mean_1998_region$`1998`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_1998_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1998, FUN = ub_mean)
ub_mean_1998_region$region <- as.character(ub_mean_1998_region$region)
setnames(ub_mean_1998_region, colnames(ub_mean_1998_region), c("region","1998"))
ub_mean_1998_region$`1998` <- as.numeric(ub_mean_1998_region$`1998`)
ub_mean_1998_region$`1998` <- round(ub_mean_1998_region$`1998`, 0)
