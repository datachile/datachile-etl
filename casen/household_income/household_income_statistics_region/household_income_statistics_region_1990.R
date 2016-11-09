########
# 1990 #
########

# Median Household Income by region
median_1990_region <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = median, na.rm = TRUE)
median_1990_region$region <- as.character(median_1990_region$region)
setnames(median_1990_region, colnames(median_1990_region), c("region","1990"))
#median_1990_region <- insert_row(median_1990_region, c("Pa\u00eds", median(household_income_1990$ingreso_pc, na.rm = TRUE)), nrow(median_1990_region)+1)
median_1990_region$`1990` <- as.numeric(median_1990_region$`1990`)
median_1990_region$`1990` <- round(median_1990_region$`1990`, 0)
median_1990_region$`1990` <- as.numeric(median_1990_region$`1990`)
median_1990_region$`1990` <- round(median_1990_region$`1990`, 0)

# Average Household Income by region
mean_1990_region <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = mean, na.rm = TRUE)
mean_1990_region$region <- as.character(mean_1990_region$region)
setnames(mean_1990_region, colnames(mean_1990_region), c("region","1990"))
mean_1990_region$`1990` <- as.numeric(mean_1990_region$`1990`)
mean_1990_region$`1990` <- round(mean_1990_region$`1990`, 0)
mean_1990_region$`1990` <- as.numeric(mean_1990_region$`1990`)
mean_1990_region$`1990` <- round(mean_1990_region$`1990`, 0)

# Gini by region
gini_1990_region <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = "Gini")
gini_1990_region$region <- as.character(gini_1990_region$region)
setnames(gini_1990_region, colnames(gini_1990_region), c("region","1990"))
gini_1990_region$`1990` <- as.numeric(gini_1990_region$`1990`)
gini_1990_region$`1990` <- round(gini_1990_region$`1990`, 3)

# Lower Bound for Median Household Income by region
lb_median_1990_region <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = lb_median)
lb_median_1990_region$region <- as.character(lb_median_1990_region$region)
setnames(lb_median_1990_region, colnames(lb_median_1990_region), c("region","1990"))
lb_median_1990_region$`1990` <- as.numeric(lb_median_1990_region$`1990`)
lb_median_1990_region$`1990` <- round(lb_median_1990_region$`1990`, 0)
lb_median_1990_region$`1990` <- as.numeric(lb_median_1990_region$`1990`)
lb_median_1990_region$`1990` <- round(lb_median_1990_region$`1990`, 0)

# Upper Bound for Median Household Income by region
ub_median_1990_region <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = ub_median)
ub_median_1990_region$region <- as.character(ub_median_1990_region$region)
setnames(ub_median_1990_region, colnames(ub_median_1990_region), c("region","1990"))
ub_median_1990_region$`1990` <- as.numeric(ub_median_1990_region$`1990`)
ub_median_1990_region$`1990` <- round(ub_median_1990_region$`1990`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_1990_region <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = lb_mean)
lb_mean_1990_region$region <- as.character(lb_mean_1990_region$region)
setnames(lb_mean_1990_region, colnames(lb_mean_1990_region), c("region","1990"))
lb_mean_1990_region$`1990` <- as.numeric(lb_mean_1990_region$`1990`)
lb_mean_1990_region$`1990` <- round(lb_mean_1990_region$`1990`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_1990_region <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = ub_mean)
ub_mean_1990_region$region <- as.character(ub_mean_1990_region$region)
setnames(ub_mean_1990_region, colnames(ub_mean_1990_region), c("region","1990"))
ub_mean_1990_region$`1990` <- as.numeric(ub_mean_1990_region$`1990`)
ub_mean_1990_region$`1990` <- round(ub_mean_1990_region$`1990`, 0)

# Lower Bound for Gini Household Income by region
lb_gini_1990_region <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = lb_gini)
lb_gini_1990_region$region <- as.character(lb_gini_1990_region$region)
setnames(lb_gini_1990_region, colnames(lb_gini_1990_region), c("region","1990"))
lb_gini_1990_region$`1990` <- as.numeric(lb_gini_1990_region$`1990`)
lb_gini_1990_region$`1990` <- round(lb_gini_1990_region$`1990`, 3)

# Upper Bound for Gini Household Income by region
ub_gini_1990_region <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = ub_gini)
ub_gini_1990_region$region <- as.character(ub_gini_1990_region$region)
setnames(ub_gini_1990_region, colnames(ub_gini_1990_region), c("region","1990"))
ub_gini_1990_region$`1990` <- as.numeric(ub_gini_1990_region$`1990`)
ub_gini_1990_region$`1990` <- round(ub_gini_1990_region$`1990`, 3)
