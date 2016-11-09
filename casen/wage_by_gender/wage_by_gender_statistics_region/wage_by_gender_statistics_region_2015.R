########
# 2015 #
########

# Median Household Income by region
median_2015_region <- aggregate(ingreso_ocup_principal ~ region + sexo, data = wage_by_gender_2015, FUN = median, na.rm = TRUE)
median_2015_region$region <- as.character(median_2015_region$region)
setnames(median_2015_region, colnames(median_2015_region), c("region","2015"))
#median_2015_region <- insert_row(median_2015_region, c("Pa\u00eds", median(wage_by_gender_2015$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2015_region)+1)
median_2015_region$`2015` <- as.numeric(median_2015_region$`2015`)
median_2015_region$`2015` <- round(median_2015_region$`2015`, 0)
median_2015_region$`2015` <- as.numeric(median_2015_region$`2015`)
median_2015_region$`2015` <- round(median_2015_region$`2015`, 0)

# Average Household Income by region
mean_2015_region <- aggregate(ingreso_ocup_principal ~ region + sexo, data = wage_by_gender_2015, FUN = "mean")
mean_2015_region$region <- as.character(mean_2015_region$region)
setnames(mean_2015_region, colnames(mean_2015_region), c("region","2015"))
mean_2015_region$`2015` <- as.numeric(mean_2015_region$`2015`)
mean_2015_region$`2015` <- round(mean_2015_region$`2015`, 0)
mean_2015_region$`2015` <- as.numeric(mean_2015_region$`2015`)
mean_2015_region$`2015` <- round(mean_2015_region$`2015`, 0)

# Lower Bound for Median Household Income by region
lb_median_2015_region <- aggregate(ingreso_ocup_principal ~ region + sexo, data = wage_by_gender_2015, FUN = lb_median)
lb_median_2015_region$region <- as.character(lb_median_2015_region$region)
setnames(lb_median_2015_region, colnames(lb_median_2015_region), c("region","2015"))
lb_median_2015_region$`2015` <- as.numeric(lb_median_2015_region$`2015`)
lb_median_2015_region$`2015` <- round(lb_median_2015_region$`2015`, 0)
lb_median_2015_region$`2015` <- as.numeric(lb_median_2015_region$`2015`)
lb_median_2015_region$`2015` <- round(lb_median_2015_region$`2015`, 0)

# Upper Bound for Median Household Income by region
ub_median_2015_region <- aggregate(ingreso_ocup_principal ~ region + sexo, data = wage_by_gender_2015, FUN = ub_median)
ub_median_2015_region$region <- as.character(ub_median_2015_region$region)
setnames(ub_median_2015_region, colnames(ub_median_2015_region), c("region","2015"))
ub_median_2015_region$`2015` <- as.numeric(ub_median_2015_region$`2015`)
ub_median_2015_region$`2015` <- round(ub_median_2015_region$`2015`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_2015_region <- aggregate(ingreso_ocup_principal ~ region + sexo, data = wage_by_gender_2015, FUN = lb_mean)
lb_mean_2015_region$region <- as.character(lb_mean_2015_region$region)
setnames(lb_mean_2015_region, colnames(lb_mean_2015_region), c("region","2015"))
lb_mean_2015_region$`2015` <- as.numeric(lb_mean_2015_region$`2015`)
lb_mean_2015_region$`2015` <- round(lb_mean_2015_region$`2015`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_2015_region <- aggregate(ingreso_ocup_principal ~ region + sexo, data = wage_by_gender_2015, FUN = ub_mean)
ub_mean_2015_region$region <- as.character(ub_mean_2015_region$region)
setnames(ub_mean_2015_region, colnames(ub_mean_2015_region), c("region","2015"))
ub_mean_2015_region$`2015` <- as.numeric(ub_mean_2015_region$`2015`)
ub_mean_2015_region$`2015` <- round(ub_mean_2015_region$`2015`, 0)
