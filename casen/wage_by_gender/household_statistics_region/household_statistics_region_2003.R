########
# 2003 #
########

# Median Household Income by region
median_2003_region <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = median, na.rm = TRUE)
median_2003_region$region <- as.character(median_2003_region$region)
setnames(median_2003_region, colnames(median_2003_region), c("region","2003"))
#median_2003_region <- insert_row(median_2003_region, c("Pa\u00eds", median(household_income_2003$ingreso_pc, na.rm = TRUE)), nrow(median_2003_region)+1)
median_2003_region$`2003` <- as.numeric(median_2003_region$`2003`)
median_2003_region$`2003` <- round(median_2003_region$`2003`, 0)
median_2003_region$`2003` <- as.numeric(median_2003_region$`2003`)
median_2003_region$`2003` <- round(median_2003_region$`2003`, 0)

# Average Household Income by region
mean_2003_region <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = "mean")
mean_2003_region$region <- as.character(mean_2003_region$region)
setnames(mean_2003_region, colnames(mean_2003_region), c("region","2003"))
mean_2003_region$`2003` <- as.numeric(mean_2003_region$`2003`)
mean_2003_region$`2003` <- round(mean_2003_region$`2003`, 0)
mean_2003_region$`2003` <- as.numeric(mean_2003_region$`2003`)
mean_2003_region$`2003` <- round(mean_2003_region$`2003`, 0)

# Gini by region
gini_2003_region <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = "Gini")
gini_2003_region$region <- as.character(gini_2003_region$region)
setnames(gini_2003_region, colnames(gini_2003_region), c("region","2003"))
gini_2003_region$`2003` <- as.numeric(gini_2003_region$`2003`)
gini_2003_region$`2003` <- round(gini_2003_region$`2003`, 3)

# Lower Bound for Median Household Income by region
lb_median_2003_region <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = lb_median)
lb_median_2003_region$region <- as.character(lb_median_2003_region$region)
setnames(lb_median_2003_region, colnames(lb_median_2003_region), c("region","2003"))
lb_median_2003_region$`2003` <- as.numeric(lb_median_2003_region$`2003`)
lb_median_2003_region$`2003` <- round(lb_median_2003_region$`2003`, 0)
lb_median_2003_region$`2003` <- as.numeric(lb_median_2003_region$`2003`)
lb_median_2003_region$`2003` <- round(lb_median_2003_region$`2003`, 0)

# Upper Bound for Median Household Income by region
ub_median_2003_region <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = ub_median)
ub_median_2003_region$region <- as.character(ub_median_2003_region$region)
setnames(ub_median_2003_region, colnames(ub_median_2003_region), c("region","2003"))
ub_median_2003_region$`2003` <- as.numeric(ub_median_2003_region$`2003`)
ub_median_2003_region$`2003` <- round(ub_median_2003_region$`2003`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_2003_region <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = lb_mean)
lb_mean_2003_region$region <- as.character(lb_mean_2003_region$region)
setnames(lb_mean_2003_region, colnames(lb_mean_2003_region), c("region","2003"))
lb_mean_2003_region$`2003` <- as.numeric(lb_mean_2003_region$`2003`)
lb_mean_2003_region$`2003` <- round(lb_mean_2003_region$`2003`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_2003_region <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = ub_mean)
ub_mean_2003_region$region <- as.character(ub_mean_2003_region$region)
setnames(ub_mean_2003_region, colnames(ub_mean_2003_region), c("region","2003"))
ub_mean_2003_region$`2003` <- as.numeric(ub_mean_2003_region$`2003`)
ub_mean_2003_region$`2003` <- round(ub_mean_2003_region$`2003`, 0)

# Lower Bound for Gini Household Income by region
lb_gini_2003_region <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = lb_gini)
lb_gini_2003_region$region <- as.character(lb_gini_2003_region$region)
setnames(lb_gini_2003_region, colnames(lb_gini_2003_region), c("region","2003"))
lb_gini_2003_region$`2003` <- as.numeric(lb_gini_2003_region$`2003`)
lb_gini_2003_region$`2003` <- round(lb_gini_2003_region$`2003`, 3)

# Upper Bound for Gini Household Income by region
ub_gini_2003_region <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = ub_gini)
ub_gini_2003_region$region <- as.character(ub_gini_2003_region$region)
setnames(ub_gini_2003_region, colnames(ub_gini_2003_region), c("region","2003"))
ub_gini_2003_region$`2003` <- as.numeric(ub_gini_2003_region$`2003`)
ub_gini_2003_region$`2003` <- round(ub_gini_2003_region$`2003`, 3)
