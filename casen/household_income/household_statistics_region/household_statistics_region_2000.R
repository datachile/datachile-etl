########
# 2000 #
########

# Median Household Income by region
median_2000_region <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = median, na.rm = TRUE)
median_2000_region$region <- as.character(median_2000_region$region)
setnames(median_2000_region, colnames(median_2000_region), c("region","2000"))
#median_2000_region <- insert_row(median_2000_region, c("Pa\u00eds", median(household_income_2000$ingreso_pc, na.rm = TRUE)), nrow(median_2000_region)+1)
median_2000_region$`2000` <- as.numeric(median_2000_region$`2000`)
median_2000_region$`2000` <- round(median_2000_region$`2000`, 0)
median_2000_region$`2000` <- as.numeric(median_2000_region$`2000`)
median_2000_region$`2000` <- round(median_2000_region$`2000`, 0)

# Average Household Income by region
mean_2000_region <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = "mean")
mean_2000_region$region <- as.character(mean_2000_region$region)
setnames(mean_2000_region, colnames(mean_2000_region), c("region","2000"))
mean_2000_region$`2000` <- as.numeric(mean_2000_region$`2000`)
mean_2000_region$`2000` <- round(mean_2000_region$`2000`, 0)
mean_2000_region$`2000` <- as.numeric(mean_2000_region$`2000`)
mean_2000_region$`2000` <- round(mean_2000_region$`2000`, 0)

# Gini by region
gini_2000_region <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = "Gini")
gini_2000_region$region <- as.character(gini_2000_region$region)
setnames(gini_2000_region, colnames(gini_2000_region), c("region","2000"))
gini_2000_region$`2000` <- as.numeric(gini_2000_region$`2000`)
gini_2000_region$`2000` <- round(gini_2000_region$`2000`, 3)

# Lower Bound for Median Household Income by region
lb_median_2000_region <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = lb_median)
lb_median_2000_region$region <- as.character(lb_median_2000_region$region)
setnames(lb_median_2000_region, colnames(lb_median_2000_region), c("region","2000"))
lb_median_2000_region$`2000` <- as.numeric(lb_median_2000_region$`2000`)
lb_median_2000_region$`2000` <- round(lb_median_2000_region$`2000`, 0)
lb_median_2000_region$`2000` <- as.numeric(lb_median_2000_region$`2000`)
lb_median_2000_region$`2000` <- round(lb_median_2000_region$`2000`, 0)

# Upper Bound for Median Household Income by region
ub_median_2000_region <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = ub_median)
ub_median_2000_region$region <- as.character(ub_median_2000_region$region)
setnames(ub_median_2000_region, colnames(ub_median_2000_region), c("region","2000"))
ub_median_2000_region$`2000` <- as.numeric(ub_median_2000_region$`2000`)
ub_median_2000_region$`2000` <- round(ub_median_2000_region$`2000`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_2000_region <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = lb_mean)
lb_mean_2000_region$region <- as.character(lb_mean_2000_region$region)
setnames(lb_mean_2000_region, colnames(lb_mean_2000_region), c("region","2000"))
lb_mean_2000_region$`2000` <- as.numeric(lb_mean_2000_region$`2000`)
lb_mean_2000_region$`2000` <- round(lb_mean_2000_region$`2000`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_2000_region <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = ub_mean)
ub_mean_2000_region$region <- as.character(ub_mean_2000_region$region)
setnames(ub_mean_2000_region, colnames(ub_mean_2000_region), c("region","2000"))
ub_mean_2000_region$`2000` <- as.numeric(ub_mean_2000_region$`2000`)
ub_mean_2000_region$`2000` <- round(ub_mean_2000_region$`2000`, 0)

# Lower Bound for Gini Household Income by region
lb_gini_2000_region <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = lb_gini)
lb_gini_2000_region$region <- as.character(lb_gini_2000_region$region)
setnames(lb_gini_2000_region, colnames(lb_gini_2000_region), c("region","2000"))
lb_gini_2000_region$`2000` <- as.numeric(lb_gini_2000_region$`2000`)
lb_gini_2000_region$`2000` <- round(lb_gini_2000_region$`2000`, 3)

# Upper Bound for Gini Household Income by region
ub_gini_2000_region <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = ub_gini)
ub_gini_2000_region$region <- as.character(ub_gini_2000_region$region)
setnames(ub_gini_2000_region, colnames(ub_gini_2000_region), c("region","2000"))
ub_gini_2000_region$`2000` <- as.numeric(ub_gini_2000_region$`2000`)
ub_gini_2000_region$`2000` <- round(ub_gini_2000_region$`2000`, 3)
