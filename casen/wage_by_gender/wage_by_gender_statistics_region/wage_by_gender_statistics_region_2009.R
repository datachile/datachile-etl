########
# 2009 #
########

# Median Household Income by region
median_2009_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2009, FUN = median, na.rm = TRUE)
median_2009_region$region <- as.character(median_2009_region$region)
setnames(median_2009_region, colnames(median_2009_region), c("region","2009"))
#median_2009_region <- insert_row(median_2009_region, c("Pa\u00eds", median(wage_by_gender_2009$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2009_region)+1)
median_2009_region$`2009` <- as.numeric(median_2009_region$`2009`)
median_2009_region$`2009` <- round(median_2009_region$`2009`, 0)
median_2009_region$`2009` <- as.numeric(median_2009_region$`2009`)
median_2009_region$`2009` <- round(median_2009_region$`2009`, 0)

# Average Household Income by region
mean_2009_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2009, FUN = "mean")
mean_2009_region$region <- as.character(mean_2009_region$region)
setnames(mean_2009_region, colnames(mean_2009_region), c("region","2009"))
mean_2009_region$`2009` <- as.numeric(mean_2009_region$`2009`)
mean_2009_region$`2009` <- round(mean_2009_region$`2009`, 0)
mean_2009_region$`2009` <- as.numeric(mean_2009_region$`2009`)
mean_2009_region$`2009` <- round(mean_2009_region$`2009`, 0)

# Lower Bound for Median Household Income by region
lb_median_2009_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2009, FUN = lb_median)
lb_median_2009_region$region <- as.character(lb_median_2009_region$region)
setnames(lb_median_2009_region, colnames(lb_median_2009_region), c("region","2009"))
lb_median_2009_region$`2009` <- as.numeric(lb_median_2009_region$`2009`)
lb_median_2009_region$`2009` <- round(lb_median_2009_region$`2009`, 0)
lb_median_2009_region$`2009` <- as.numeric(lb_median_2009_region$`2009`)
lb_median_2009_region$`2009` <- round(lb_median_2009_region$`2009`, 0)

# Upper Bound for Median Household Income by region
ub_median_2009_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2009, FUN = ub_median)
ub_median_2009_region$region <- as.character(ub_median_2009_region$region)
setnames(ub_median_2009_region, colnames(ub_median_2009_region), c("region","2009"))
ub_median_2009_region$`2009` <- as.numeric(ub_median_2009_region$`2009`)
ub_median_2009_region$`2009` <- round(ub_median_2009_region$`2009`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_2009_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2009, FUN = lb_mean)
lb_mean_2009_region$region <- as.character(lb_mean_2009_region$region)
setnames(lb_mean_2009_region, colnames(lb_mean_2009_region), c("region","2009"))
lb_mean_2009_region$`2009` <- as.numeric(lb_mean_2009_region$`2009`)
lb_mean_2009_region$`2009` <- round(lb_mean_2009_region$`2009`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_2009_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2009, FUN = ub_mean)
ub_mean_2009_region$region <- as.character(ub_mean_2009_region$region)
setnames(ub_mean_2009_region, colnames(ub_mean_2009_region), c("region","2009"))
ub_mean_2009_region$`2009` <- as.numeric(ub_mean_2009_region$`2009`)
ub_mean_2009_region$`2009` <- round(ub_mean_2009_region$`2009`, 0)
