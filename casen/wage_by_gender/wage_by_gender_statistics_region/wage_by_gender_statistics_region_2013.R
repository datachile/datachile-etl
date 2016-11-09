########
# 2013 #
########

# Median Household Income by region
median_2013_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2013, FUN = median, na.rm = TRUE)
median_2013_region$region <- as.character(median_2013_region$region)
setnames(median_2013_region, colnames(median_2013_region), c("region","2013"))
#median_2013_region <- insert_row(median_2013_region, c("Pa\u00eds", median(wage_by_gender_2013$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2013_region)+1)
median_2013_region$`2013` <- as.numeric(median_2013_region$`2013`)
median_2013_region$`2013` <- round(median_2013_region$`2013`, 0)
median_2013_region$`2013` <- as.numeric(median_2013_region$`2013`)
median_2013_region$`2013` <- round(median_2013_region$`2013`, 0)

# Average Household Income by region
mean_2013_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2013, FUN = "mean")
mean_2013_region$region <- as.character(mean_2013_region$region)
setnames(mean_2013_region, colnames(mean_2013_region), c("region","2013"))
mean_2013_region$`2013` <- as.numeric(mean_2013_region$`2013`)
mean_2013_region$`2013` <- round(mean_2013_region$`2013`, 0)
mean_2013_region$`2013` <- as.numeric(mean_2013_region$`2013`)
mean_2013_region$`2013` <- round(mean_2013_region$`2013`, 0)

# Lower Bound for Median Household Income by region
lb_median_2013_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2013, FUN = lb_median)
lb_median_2013_region$region <- as.character(lb_median_2013_region$region)
setnames(lb_median_2013_region, colnames(lb_median_2013_region), c("region","2013"))
lb_median_2013_region$`2013` <- as.numeric(lb_median_2013_region$`2013`)
lb_median_2013_region$`2013` <- round(lb_median_2013_region$`2013`, 0)
lb_median_2013_region$`2013` <- as.numeric(lb_median_2013_region$`2013`)
lb_median_2013_region$`2013` <- round(lb_median_2013_region$`2013`, 0)

# Upper Bound for Median Household Income by region
ub_median_2013_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2013, FUN = ub_median)
ub_median_2013_region$region <- as.character(ub_median_2013_region$region)
setnames(ub_median_2013_region, colnames(ub_median_2013_region), c("region","2013"))
ub_median_2013_region$`2013` <- as.numeric(ub_median_2013_region$`2013`)
ub_median_2013_region$`2013` <- round(ub_median_2013_region$`2013`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_2013_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2013, FUN = lb_mean)
lb_mean_2013_region$region <- as.character(lb_mean_2013_region$region)
setnames(lb_mean_2013_region, colnames(lb_mean_2013_region), c("region","2013"))
lb_mean_2013_region$`2013` <- as.numeric(lb_mean_2013_region$`2013`)
lb_mean_2013_region$`2013` <- round(lb_mean_2013_region$`2013`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_2013_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2013, FUN = ub_mean)
ub_mean_2013_region$region <- as.character(ub_mean_2013_region$region)
setnames(ub_mean_2013_region, colnames(ub_mean_2013_region), c("region","2013"))
ub_mean_2013_region$`2013` <- as.numeric(ub_mean_2013_region$`2013`)
ub_mean_2013_region$`2013` <- round(ub_mean_2013_region$`2013`, 0)
