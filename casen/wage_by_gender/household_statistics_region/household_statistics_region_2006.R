########
# 2006 #
########

# Median Household Income by region
median_2006_region <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = median, na.rm = TRUE)
median_2006_region$region <- as.character(median_2006_region$region)
setnames(median_2006_region, colnames(median_2006_region), c("region","2006"))
#median_2006_region <- insert_row(median_2006_region, c("Pa\u00eds", median(household_income_2006$ingreso_pc, na.rm = TRUE)), nrow(median_2006_region)+1)
median_2006_region$`2006` <- as.numeric(median_2006_region$`2006`)
median_2006_region$`2006` <- round(median_2006_region$`2006`, 0)
median_2006_region$`2006` <- as.numeric(median_2006_region$`2006`)
median_2006_region$`2006` <- round(median_2006_region$`2006`, 0)

# Average Household Income by region
mean_2006_region <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = "mean")
mean_2006_region$region <- as.character(mean_2006_region$region)
setnames(mean_2006_region, colnames(mean_2006_region), c("region","2006"))
mean_2006_region$`2006` <- as.numeric(mean_2006_region$`2006`)
mean_2006_region$`2006` <- round(mean_2006_region$`2006`, 0)
mean_2006_region$`2006` <- as.numeric(mean_2006_region$`2006`)
mean_2006_region$`2006` <- round(mean_2006_region$`2006`, 0)

# Gini by region
gini_2006_region <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = "Gini")
gini_2006_region$region <- as.character(gini_2006_region$region)
setnames(gini_2006_region, colnames(gini_2006_region), c("region","2006"))
gini_2006_region$`2006` <- as.numeric(gini_2006_region$`2006`)
gini_2006_region$`2006` <- round(gini_2006_region$`2006`, 3)

# Lower Bound for Median Household Income by region
lb_median_2006_region <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = lb_median)
lb_median_2006_region$region <- as.character(lb_median_2006_region$region)
setnames(lb_median_2006_region, colnames(lb_median_2006_region), c("region","2006"))
lb_median_2006_region$`2006` <- as.numeric(lb_median_2006_region$`2006`)
lb_median_2006_region$`2006` <- round(lb_median_2006_region$`2006`, 0)
lb_median_2006_region$`2006` <- as.numeric(lb_median_2006_region$`2006`)
lb_median_2006_region$`2006` <- round(lb_median_2006_region$`2006`, 0)

# Upper Bound for Median Household Income by region
ub_median_2006_region <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = ub_median)
ub_median_2006_region$region <- as.character(ub_median_2006_region$region)
setnames(ub_median_2006_region, colnames(ub_median_2006_region), c("region","2006"))
ub_median_2006_region$`2006` <- as.numeric(ub_median_2006_region$`2006`)
ub_median_2006_region$`2006` <- round(ub_median_2006_region$`2006`, 0)

# Lower Bound for Mean Household Income by region
lb_mean_2006_region <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = lb_mean)
lb_mean_2006_region$region <- as.character(lb_mean_2006_region$region)
setnames(lb_mean_2006_region, colnames(lb_mean_2006_region), c("region","2006"))
lb_mean_2006_region$`2006` <- as.numeric(lb_mean_2006_region$`2006`)
lb_mean_2006_region$`2006` <- round(lb_mean_2006_region$`2006`, 0)

# Upper Bound for Mean Household Income by region
ub_mean_2006_region <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = ub_mean)
ub_mean_2006_region$region <- as.character(ub_mean_2006_region$region)
setnames(ub_mean_2006_region, colnames(ub_mean_2006_region), c("region","2006"))
ub_mean_2006_region$`2006` <- as.numeric(ub_mean_2006_region$`2006`)
ub_mean_2006_region$`2006` <- round(ub_mean_2006_region$`2006`, 0)

# Lower Bound for Gini Household Income by region
lb_gini_2006_region <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = lb_gini)
lb_gini_2006_region$region <- as.character(lb_gini_2006_region$region)
setnames(lb_gini_2006_region, colnames(lb_gini_2006_region), c("region","2006"))
lb_gini_2006_region$`2006` <- as.numeric(lb_gini_2006_region$`2006`)
lb_gini_2006_region$`2006` <- round(lb_gini_2006_region$`2006`, 3)

# Upper Bound for Gini Household Income by region
ub_gini_2006_region <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = ub_gini)
ub_gini_2006_region$region <- as.character(ub_gini_2006_region$region)
setnames(ub_gini_2006_region, colnames(ub_gini_2006_region), c("region","2006"))
ub_gini_2006_region$`2006` <- as.numeric(ub_gini_2006_region$`2006`)
ub_gini_2006_region$`2006` <- round(ub_gini_2006_region$`2006`, 3)
