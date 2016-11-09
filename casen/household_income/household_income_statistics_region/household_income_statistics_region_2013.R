########
# 2013 #
########

# Median Household Income by region
median_2013_region <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = median, na.rm = TRUE)
median_2013_region$region <- as.character(median_2013_region$region)
setnames(median_2013_region, colnames(median_2013_region), c("region","2013"))
#median_2013_region <- insert_row(median_2013_region, c("Pa\u00eds", median(household_income_2013$ingreso_pc, na.rm = TRUE)), nrow(median_2013_region)+1)
median_2013_region$`2013` <- as.numeric(median_2013_region$`2013`)
median_2013_region$`2013` <- round(median_2013_region$`2013`, 0)
median_2013_region$`2013` <- as.numeric(median_2013_region$`2013`)
median_2013_region$`2013` <- round(median_2013_region$`2013`, 0)

# Average Household Income by region
mean_2013_region <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = mean, na.rm = TRUE)
mean_2013_region$region <- as.character(mean_2013_region$region)
setnames(mean_2013_region, colnames(mean_2013_region), c("region","2013"))
mean_2013_region$`2013` <- as.numeric(mean_2013_region$`2013`)
mean_2013_region$`2013` <- round(mean_2013_region$`2013`, 0)
mean_2013_region$`2013` <- as.numeric(mean_2013_region$`2013`)
mean_2013_region$`2013` <- round(mean_2013_region$`2013`, 0)

# Gini by region
gini_2013_region <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = "Gini")
gini_2013_region$region <- as.character(gini_2013_region$region)
setnames(gini_2013_region, colnames(gini_2013_region), c("region","2013"))
gini_2013_region$`2013` <- as.numeric(gini_2013_region$`2013`)
gini_2013_region$`2013` <- round(gini_2013_region$`2013`, 3)

# Lower Bound for Median Household Income by region
lb_median_2013_region <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = lb_median)
lb_median_2013_region$region <- as.character(lb_median_2013_region$region)
setnames(lb_median_2013_region, colnames(lb_median_2013_region), c("region","2013"))
lb_median_2013_region$`2013` <- as.numeric(lb_median_2013_region$`2013`)
lb_median_2013_region$`2013` <- round(lb_median_2013_region$`2013`, 0)
lb_median_2013_region$`2013` <- as.numeric(lb_median_2013_region$`2013`)
lb_median_2013_region$`2013` <- round(lb_median_2013_region$`2013`, 0)

# Upper Bound for Median Household Income by region
ub_median_2013_region <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = ub_median)
ub_median_2013_region$region <- as.character(ub_median_2013_region$region)
setnames(ub_median_2013_region, colnames(ub_median_2013_region), c("region","2013"))
ub_median_2013_region$`2013` <- as.numeric(ub_median_2013_region$`2013`)
ub_median_2013_region$`2013` <- round(ub_median_2013_region$`2013`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_2013_region <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = lb_mean)
lb_mean_2013_region$region <- as.character(lb_mean_2013_region$region)
setnames(lb_mean_2013_region, colnames(lb_mean_2013_region), c("region","2013"))
lb_mean_2013_region$`2013` <- as.numeric(lb_mean_2013_region$`2013`)
lb_mean_2013_region$`2013` <- round(lb_mean_2013_region$`2013`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_2013_region <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = ub_mean)
ub_mean_2013_region$region <- as.character(ub_mean_2013_region$region)
setnames(ub_mean_2013_region, colnames(ub_mean_2013_region), c("region","2013"))
ub_mean_2013_region$`2013` <- as.numeric(ub_mean_2013_region$`2013`)
ub_mean_2013_region$`2013` <- round(ub_mean_2013_region$`2013`, 0)

# Lower Bound for Gini Household Income by region
lb_gini_2013_region <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = lb_gini)
lb_gini_2013_region$region <- as.character(lb_gini_2013_region$region)
setnames(lb_gini_2013_region, colnames(lb_gini_2013_region), c("region","2013"))
lb_gini_2013_region$`2013` <- as.numeric(lb_gini_2013_region$`2013`)
lb_gini_2013_region$`2013` <- round(lb_gini_2013_region$`2013`, 3)

# Upper Bound for Gini Household Income by region
ub_gini_2013_region <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = ub_gini)
ub_gini_2013_region$region <- as.character(ub_gini_2013_region$region)
setnames(ub_gini_2013_region, colnames(ub_gini_2013_region), c("region","2013"))
ub_gini_2013_region$`2013` <- as.numeric(ub_gini_2013_region$`2013`)
ub_gini_2013_region$`2013` <- round(ub_gini_2013_region$`2013`, 3)
