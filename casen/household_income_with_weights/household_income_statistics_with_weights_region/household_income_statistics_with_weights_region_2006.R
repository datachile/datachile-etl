########
# 2006 #
########

# Median Household Income by region

weighted_median_2006_region <- ddply(household_income_2006, .(region), summarise, FUN = matrixStats::weightedMedian(ingreso_pc, w = exp_region, na.rm = TRUE))
weighted_median_2006_region$region <- as.character(weighted_median_2006_region$region)
setnames(weighted_median_2006_region, colnames(weighted_median_2006_region), c("region","2006"))
#weighted_median_2006_region <- insert_row(weighted_median_2006_region, c("Pa\u00eds", weighted_median(household_income_2006$ingreso_pc, na.rm = TRUE)), nrow(weighted_median_2006_region)+1)
weighted_median_2006_region$`2006` <- as.numeric(weighted_median_2006_region$`2006`)
weighted_median_2006_region$`2006` <- round(weighted_median_2006_region$`2006`, 0)
weighted_median_2006_region$`2006` <- as.numeric(weighted_median_2006_region$`2006`)
weighted_median_2006_region$`2006` <- round(weighted_median_2006_region$`2006`, 0)

# Average Household Income by region
weighted_mean_2006_region <- ddply(household_income_2006, .(region), summarise, FUN = matrixStats::weightedMean(ingreso_pc, w = exp_region, na.rm = TRUE))
weighted_mean_2006_region$region <- as.character(weighted_mean_2006_region$region)
setnames(weighted_mean_2006_region, colnames(weighted_mean_2006_region), c("region","2006"))
weighted_mean_2006_region$`2006` <- as.numeric(weighted_mean_2006_region$`2006`)
weighted_mean_2006_region$`2006` <- round(weighted_mean_2006_region$`2006`, 0)
weighted_mean_2006_region$`2006` <- as.numeric(weighted_mean_2006_region$`2006`)
weighted_mean_2006_region$`2006` <- round(weighted_mean_2006_region$`2006`, 0)

# Gini by region
weighted_gini_2006_region <- ddply(household_income_2006, .(region), summarise, FUN = SciencesPo::Gini(ingreso_pc, weights = exp_region, na.rm = TRUE))
weighted_gini_2006_region$region <- as.character(weighted_gini_2006_region$region)
setnames(weighted_gini_2006_region, colnames(weighted_gini_2006_region), c("region","2006"))
weighted_gini_2006_region$`2006` <- as.numeric(weighted_gini_2006_region$`2006`)
weighted_gini_2006_region$`2006` <- round(weighted_gini_2006_region$`2006`, 3)

# Lower Bound for Median Household Income by region
lb_weighted_median_2006_region <- ddply(household_income_2006, .(region), summarise, FUN = lb_weighted_median_dplyr(ingreso_pc, exp_region))
lb_weighted_median_2006_region$region <- as.character(lb_weighted_median_2006_region$region)
setnames(lb_weighted_median_2006_region, colnames(lb_weighted_median_2006_region), c("region","2006"))
lb_weighted_median_2006_region$`2006` <- as.numeric(lb_weighted_median_2006_region$`2006`)
lb_weighted_median_2006_region$`2006` <- round(lb_weighted_median_2006_region$`2006`, 0)
lb_weighted_median_2006_region$`2006` <- as.numeric(lb_weighted_median_2006_region$`2006`)
lb_weighted_median_2006_region$`2006` <- round(lb_weighted_median_2006_region$`2006`, 0)

# Upper Bound for Median Household Income by region
ub_weighted_median_2006_region <- ddply(household_income_2006, .(region), summarise, FUN = ub_weighted_median_dplyr(ingreso_pc, exp_region))
ub_weighted_median_2006_region$region <- as.character(ub_weighted_median_2006_region$region)
setnames(ub_weighted_median_2006_region, colnames(ub_weighted_median_2006_region), c("region","2006"))
ub_weighted_median_2006_region$`2006` <- as.numeric(ub_weighted_median_2006_region$`2006`)
ub_weighted_median_2006_region$`2006` <- round(ub_weighted_median_2006_region$`2006`, 0)

# Lower Bound for Mean Household Income by region
lb_weighted_mean_2006_region <- ddply(household_income_2006, .(region), summarise, FUN = lb_weighted_mean_dplyr(ingreso_pc, exp_region))
lb_weighted_mean_2006_region$region <- as.character(lb_weighted_mean_2006_region$region)
setnames(lb_weighted_mean_2006_region, colnames(lb_weighted_mean_2006_region), c("region","2006"))
lb_weighted_mean_2006_region$`2006` <- as.numeric(lb_weighted_mean_2006_region$`2006`)
lb_weighted_mean_2006_region$`2006` <- round(lb_weighted_mean_2006_region$`2006`, 0)

# Upper Bound for Mean Household Income by region
ub_weighted_mean_2006_region <- ddply(household_income_2006, .(region), summarise, FUN = ub_weighted_mean_dplyr(ingreso_pc, exp_region))
ub_weighted_mean_2006_region$region <- as.character(ub_weighted_mean_2006_region$region)
setnames(ub_weighted_mean_2006_region, colnames(ub_weighted_mean_2006_region), c("region","2006"))
ub_weighted_mean_2006_region$`2006` <- as.numeric(ub_weighted_mean_2006_region$`2006`)
ub_weighted_mean_2006_region$`2006` <- round(ub_weighted_mean_2006_region$`2006`, 0)

# Lower Bound for Gini Household Income by region
lb_weighted_gini_2006_region <- ddply(household_income_2006, .(region), summarise, FUN = lb_weighted_gini_dplyr(ingreso_pc, exp_region))
lb_weighted_gini_2006_region$region <- as.character(lb_weighted_gini_2006_region$region)
setnames(lb_weighted_gini_2006_region, colnames(lb_weighted_gini_2006_region), c("region","2006"))
lb_weighted_gini_2006_region$`2006` <- as.numeric(lb_weighted_gini_2006_region$`2006`)
lb_weighted_gini_2006_region$`2006` <- round(lb_weighted_gini_2006_region$`2006`, 3)

# Upper Bound for Gini Household Income by region
ub_weighted_gini_2006_region <- ddply(household_income_2006, .(region), summarise, FUN = ub_weighted_gini_dplyr(ingreso_pc, exp_region))
ub_weighted_gini_2006_region$region <- as.character(ub_weighted_gini_2006_region$region)
setnames(ub_weighted_gini_2006_region, colnames(ub_weighted_gini_2006_region), c("region","2006"))
ub_weighted_gini_2006_region$`2006` <- as.numeric(ub_weighted_gini_2006_region$`2006`)
ub_weighted_gini_2006_region$`2006` <- round(ub_weighted_gini_2006_region$`2006`, 3)
