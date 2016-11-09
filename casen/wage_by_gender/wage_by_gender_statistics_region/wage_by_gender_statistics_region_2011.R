########
# 2011 #
########

# Median Household Income by region
median_2011_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2011, FUN = median, na.rm = TRUE)
median_2011_region$region <- as.character(median_2011_region$region)
setnames(median_2011_region, colnames(median_2011_region), c("region","2011"))
#median_2011_region <- insert_row(median_2011_region, c("Pa\u00eds", median(wage_by_gender_2011$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2011_region)+1)
median_2011_region$`2011` <- as.numeric(median_2011_region$`2011`)
median_2011_region$`2011` <- round(median_2011_region$`2011`, 0)
median_2011_region$`2011` <- as.numeric(median_2011_region$`2011`)
median_2011_region$`2011` <- round(median_2011_region$`2011`, 0)

# Average Household Income by region
mean_2011_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2011, FUN = "mean")
mean_2011_region$region <- as.character(mean_2011_region$region)
setnames(mean_2011_region, colnames(mean_2011_region), c("region","2011"))
mean_2011_region$`2011` <- as.numeric(mean_2011_region$`2011`)
mean_2011_region$`2011` <- round(mean_2011_region$`2011`, 0)
mean_2011_region$`2011` <- as.numeric(mean_2011_region$`2011`)
mean_2011_region$`2011` <- round(mean_2011_region$`2011`, 0)

# Lower Bound for Median Household Income by region
lb_median_2011_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2011, FUN = lb_median)
lb_median_2011_region$region <- as.character(lb_median_2011_region$region)
setnames(lb_median_2011_region, colnames(lb_median_2011_region), c("region","2011"))
lb_median_2011_region$`2011` <- as.numeric(lb_median_2011_region$`2011`)
lb_median_2011_region$`2011` <- round(lb_median_2011_region$`2011`, 0)
lb_median_2011_region$`2011` <- as.numeric(lb_median_2011_region$`2011`)
lb_median_2011_region$`2011` <- round(lb_median_2011_region$`2011`, 0)

# Upper Bound for Median Household Income by region
ub_median_2011_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2011, FUN = ub_median)
ub_median_2011_region$region <- as.character(ub_median_2011_region$region)
setnames(ub_median_2011_region, colnames(ub_median_2011_region), c("region","2011"))
ub_median_2011_region$`2011` <- as.numeric(ub_median_2011_region$`2011`)
ub_median_2011_region$`2011` <- round(ub_median_2011_region$`2011`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_2011_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2011, FUN = lb_mean)
lb_mean_2011_region$region <- as.character(lb_mean_2011_region$region)
setnames(lb_mean_2011_region, colnames(lb_mean_2011_region), c("region","2011"))
lb_mean_2011_region$`2011` <- as.numeric(lb_mean_2011_region$`2011`)
lb_mean_2011_region$`2011` <- round(lb_mean_2011_region$`2011`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_2011_region <- aggregate(ingreso_ocup_principal  ~ region + sexo, data = wage_by_gender_2011, FUN = ub_mean)
ub_mean_2011_region$region <- as.character(ub_mean_2011_region$region)
setnames(ub_mean_2011_region, colnames(ub_mean_2011_region), c("region","2011"))
ub_mean_2011_region$`2011` <- as.numeric(ub_mean_2011_region$`2011`)
ub_mean_2011_region$`2011` <- round(ub_mean_2011_region$`2011`, 0)
