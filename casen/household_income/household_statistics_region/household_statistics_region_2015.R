########
# 2015 #
########

# Median Household Income by region
median_2015_region <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = median, na.rm = TRUE)
median_2015_region$region <- as.character(median_2015_region$region)
setnames(median_2015_region, colnames(median_2015_region), c("region","2015"))
#median_2015_region <- insert_row(median_2015_region, c("Pa\u00eds", median(household_income_2015$ingreso_pc, na.rm = TRUE)), nrow(median_2015_region)+1)
median_2015_region$`2015` <- as.numeric(median_2015_region$`2015`)
median_2015_region$`2015` <- round(median_2015_region$`2015`, 0)
median_2015_region$`2015` <- as.numeric(median_2015_region$`2015`)
median_2015_region$`2015` <- round(median_2015_region$`2015`, 0)

# Average Household Income by region
mean_2015_region <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = "mean")
mean_2015_region$region <- as.character(mean_2015_region$region)
setnames(mean_2015_region, colnames(mean_2015_region), c("region","2015"))
mean_2015_region$`2015` <- as.numeric(mean_2015_region$`2015`)
mean_2015_region$`2015` <- round(mean_2015_region$`2015`, 0)
mean_2015_region$`2015` <- as.numeric(mean_2015_region$`2015`)
mean_2015_region$`2015` <- round(mean_2015_region$`2015`, 0)

# Gini by region
gini_2015_region <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = "Gini")
gini_2015_region$region <- as.character(gini_2015_region$region)
setnames(gini_2015_region, colnames(gini_2015_region), c("region","2015"))
gini_2015_region$`2015` <- as.numeric(gini_2015_region$`2015`)
gini_2015_region$`2015` <- round(gini_2015_region$`2015`, 3)

# Lower Bound for Median Household Income by region
lb_median_2015_region <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = lb_median)
lb_median_2015_region$region <- as.character(lb_median_2015_region$region)
setnames(lb_median_2015_region, colnames(lb_median_2015_region), c("region","2015"))
lb_median_2015_region$`2015` <- as.numeric(lb_median_2015_region$`2015`)
lb_median_2015_region$`2015` <- round(lb_median_2015_region$`2015`, 0)
lb_median_2015_region$`2015` <- as.numeric(lb_median_2015_region$`2015`)
lb_median_2015_region$`2015` <- round(lb_median_2015_region$`2015`, 0)

# Upper Bound for Median Household Income by region
ub_median_2015_region <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = ub_median)
ub_median_2015_region$region <- as.character(ub_median_2015_region$region)
setnames(ub_median_2015_region, colnames(ub_median_2015_region), c("region","2015"))
ub_median_2015_region$`2015` <- as.numeric(ub_median_2015_region$`2015`)
ub_median_2015_region$`2015` <- round(ub_median_2015_region$`2015`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_2015_region <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = lb_mean)
lb_mean_2015_region$region <- as.character(lb_mean_2015_region$region)
setnames(lb_mean_2015_region, colnames(lb_mean_2015_region), c("region","2015"))
lb_mean_2015_region$`2015` <- as.numeric(lb_mean_2015_region$`2015`)
lb_mean_2015_region$`2015` <- round(lb_mean_2015_region$`2015`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_2015_region <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = ub_mean)
ub_mean_2015_region$region <- as.character(ub_mean_2015_region$region)
setnames(ub_mean_2015_region, colnames(ub_mean_2015_region), c("region","2015"))
ub_mean_2015_region$`2015` <- as.numeric(ub_mean_2015_region$`2015`)
ub_mean_2015_region$`2015` <- round(ub_mean_2015_region$`2015`, 0)

# Lower Bound for Gini Household Income by region
lb_gini_2015_region <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = lb_gini)
lb_gini_2015_region$region <- as.character(lb_gini_2015_region$region)
setnames(lb_gini_2015_region, colnames(lb_gini_2015_region), c("region","2015"))
lb_gini_2015_region$`2015` <- as.numeric(lb_gini_2015_region$`2015`)
lb_gini_2015_region$`2015` <- round(lb_gini_2015_region$`2015`, 3)

# Upper Bound for Gini Household Income by region
ub_gini_2015_region <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = ub_gini)
ub_gini_2015_region$region <- as.character(ub_gini_2015_region$region)
setnames(ub_gini_2015_region, colnames(ub_gini_2015_region), c("region","2015"))
ub_gini_2015_region$`2015` <- as.numeric(ub_gini_2015_region$`2015`)
ub_gini_2015_region$`2015` <- round(ub_gini_2015_region$`2015`, 3)
