########
# 2003 #
########

# Median Household Income by region
median_2003_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2003, FUN = median, na.rm = TRUE)
median_2003_region$region <- as.character(median_2003_region$region)
setnames(median_2003_region, colnames(median_2003_region), c("region","2003"))
#median_2003_region <- insert_row(median_2003_region, c("Pa\u00eds", median(wage_by_gender_2003$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2003_region)+1)
median_2003_region$`2003` <- as.numeric(median_2003_region$`2003`)
median_2003_region$`2003` <- round(median_2003_region$`2003`, 0)
median_2003_region$`2003` <- as.numeric(median_2003_region$`2003`)
median_2003_region$`2003` <- round(median_2003_region$`2003`, 0)

# Average Household Income by region
mean_2003_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2003, FUN = "mean")
mean_2003_region$region <- as.character(mean_2003_region$region)
setnames(mean_2003_region, colnames(mean_2003_region), c("region","2003"))
mean_2003_region$`2003` <- as.numeric(mean_2003_region$`2003`)
mean_2003_region$`2003` <- round(mean_2003_region$`2003`, 0)
mean_2003_region$`2003` <- as.numeric(mean_2003_region$`2003`)
mean_2003_region$`2003` <- round(mean_2003_region$`2003`, 0)

# Lower Bound for Median Household Income by region
lb_median_2003_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2003, FUN = lb_median)
lb_median_2003_region$region <- as.character(lb_median_2003_region$region)
setnames(lb_median_2003_region, colnames(lb_median_2003_region), c("region","2003"))
lb_median_2003_region$`2003` <- as.numeric(lb_median_2003_region$`2003`)
lb_median_2003_region$`2003` <- round(lb_median_2003_region$`2003`, 0)
lb_median_2003_region$`2003` <- as.numeric(lb_median_2003_region$`2003`)
lb_median_2003_region$`2003` <- round(lb_median_2003_region$`2003`, 0)

# Upper Bound for Median Household Income by region
ub_median_2003_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2003, FUN = ub_median)
ub_median_2003_region$region <- as.character(ub_median_2003_region$region)
setnames(ub_median_2003_region, colnames(ub_median_2003_region), c("region","2003"))
ub_median_2003_region$`2003` <- as.numeric(ub_median_2003_region$`2003`)
ub_median_2003_region$`2003` <- round(ub_median_2003_region$`2003`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_2003_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2003, FUN = lb_mean)
lb_mean_2003_region$region <- as.character(lb_mean_2003_region$region)
setnames(lb_mean_2003_region, colnames(lb_mean_2003_region), c("region","2003"))
lb_mean_2003_region$`2003` <- as.numeric(lb_mean_2003_region$`2003`)
lb_mean_2003_region$`2003` <- round(lb_mean_2003_region$`2003`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_2003_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2003, FUN = ub_mean)
ub_mean_2003_region$region <- as.character(ub_mean_2003_region$region)
setnames(ub_mean_2003_region, colnames(ub_mean_2003_region), c("region","2003"))
ub_mean_2003_region$`2003` <- as.numeric(ub_mean_2003_region$`2003`)
ub_mean_2003_region$`2003` <- round(ub_mean_2003_region$`2003`, 0)
