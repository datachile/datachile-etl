########
# 1992 #
########

# Median Household Income by region
median_1992_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1992, FUN = median, na.rm = TRUE)
median_1992_region$region <- as.character(median_1992_region$region)
setnames(median_1992_region, colnames(median_1992_region), c("region","1992"))
#median_1992_region <- insert_row(median_1992_region, c("Pa\u00eds", median(wage_by_gender_1992$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_1992_region)+1)
median_1992_region$`1992` <- as.numeric(median_1992_region$`1992`)
median_1992_region$`1992` <- round(median_1992_region$`1992`, 0)
median_1992_region$`1992` <- as.numeric(median_1992_region$`1992`)
median_1992_region$`1992` <- round(median_1992_region$`1992`, 0)

# Average Household Income by region
mean_1992_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1992, FUN = "mean")
mean_1992_region$region <- as.character(mean_1992_region$region)
setnames(mean_1992_region, colnames(mean_1992_region), c("region","1992"))
mean_1992_region$`1992` <- as.numeric(mean_1992_region$`1992`)
mean_1992_region$`1992` <- round(mean_1992_region$`1992`, 0)
mean_1992_region$`1992` <- as.numeric(mean_1992_region$`1992`)
mean_1992_region$`1992` <- round(mean_1992_region$`1992`, 0)

# Lower Bound for Median Household Income by region
lb_median_1992_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1992, FUN = lb_median)
lb_median_1992_region$region <- as.character(lb_median_1992_region$region)
setnames(lb_median_1992_region, colnames(lb_median_1992_region), c("region","1992"))
lb_median_1992_region$`1992` <- as.numeric(lb_median_1992_region$`1992`)
lb_median_1992_region$`1992` <- round(lb_median_1992_region$`1992`, 0)
lb_median_1992_region$`1992` <- as.numeric(lb_median_1992_region$`1992`)
lb_median_1992_region$`1992` <- round(lb_median_1992_region$`1992`, 0)

# Upper Bound for Median Household Income by region
ub_median_1992_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1992, FUN = ub_median)
ub_median_1992_region$region <- as.character(ub_median_1992_region$region)
setnames(ub_median_1992_region, colnames(ub_median_1992_region), c("region","1992"))
ub_median_1992_region$`1992` <- as.numeric(ub_median_1992_region$`1992`)
ub_median_1992_region$`1992` <- round(ub_median_1992_region$`1992`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_1992_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1992, FUN = lb_mean)
lb_mean_1992_region$region <- as.character(lb_mean_1992_region$region)
setnames(lb_mean_1992_region, colnames(lb_mean_1992_region), c("region","1992"))
lb_mean_1992_region$`1992` <- as.numeric(lb_mean_1992_region$`1992`)
lb_mean_1992_region$`1992` <- round(lb_mean_1992_region$`1992`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_1992_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_1992, FUN = ub_mean)
ub_mean_1992_region$region <- as.character(ub_mean_1992_region$region)
setnames(ub_mean_1992_region, colnames(ub_mean_1992_region), c("region","1992"))
ub_mean_1992_region$`1992` <- as.numeric(ub_mean_1992_region$`1992`)
ub_mean_1992_region$`1992` <- round(ub_mean_1992_region$`1992`, 0)
