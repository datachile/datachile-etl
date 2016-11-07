########
# 1990 #
########

# Median Household Income by provincia
median_1990_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1990, FUN = median, na.rm = TRUE)
median_1990_provincia$provincia <- as.character(median_1990_provincia$provincia)
setnames(median_1990_provincia, colnames(median_1990_provincia), c("provincia","1990"))
median_1990_provincia$`1990` <- as.numeric(median_1990_provincia$`1990`)
median_1990_provincia$`1990` <- round(median_1990_provincia$`1990`, 0)

# Average Household Income by provincia
mean_1990_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1990, FUN = mean, na.rm = TRUE)
mean_1990_provincia$provincia <- as.character(mean_1990_provincia$provincia)
setnames(mean_1990_provincia, colnames(mean_1990_provincia), c("provincia","1990"))
mean_1990_provincia$`1990` <- as.numeric(mean_1990_provincia$`1990`)
mean_1990_provincia$`1990` <- round(mean_1990_provincia$`1990`, 0)

# Gini by provincia
gini_1990_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1990, FUN = Gini, na.rm = TRUE)
gini_1990_provincia$provincia <- as.character(gini_1990_provincia$provincia)
setnames(gini_1990_provincia, colnames(gini_1990_provincia), c("provincia","1990"))
gini_1990_provincia$`1990` <- as.numeric(gini_1990_provincia$`1990`)
gini_1990_provincia$`1990` <- round(gini_1990_provincia$`1990`, 3)

# Lower Bound for Median Household Income by provincia
lb_median_1990_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1990, FUN = lb_median)
lb_median_1990_provincia$provincia <- as.character(lb_median_1990_provincia$provincia)
setnames(lb_median_1990_provincia, colnames(lb_median_1990_provincia), c("provincia","1990"))
lb_median_1990_provincia$`1990` <- as.numeric(lb_median_1990_provincia$`1990`)
lb_median_1990_provincia$`1990` <- round(lb_median_1990_provincia$`1990`, 0)
lb_median_1990_provincia$`1990` <- as.numeric(lb_median_1990_provincia$`1990`)
lb_median_1990_provincia$`1990` <- round(lb_median_1990_provincia$`1990`, 0)

# Upper Bound for Median Household Income by provincia
ub_median_1990_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1990, FUN = ub_median)
ub_median_1990_provincia$provincia <- as.character(ub_median_1990_provincia$provincia)
setnames(ub_median_1990_provincia, colnames(ub_median_1990_provincia), c("provincia","1990"))
ub_median_1990_provincia$`1990` <- as.numeric(ub_median_1990_provincia$`1990`)
ub_median_1990_provincia$`1990` <- round(ub_median_1990_provincia$`1990`, 0)

# Lower Bound for Mean Household Income by provincia
lb_mean_1990_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1990, FUN = lb_mean)
lb_mean_1990_provincia$provincia <- as.character(lb_mean_1990_provincia$provincia)
setnames(lb_mean_1990_provincia, colnames(lb_mean_1990_provincia), c("provincia","1990"))
lb_mean_1990_provincia$`1990` <- as.numeric(lb_mean_1990_provincia$`1990`)
lb_mean_1990_provincia$`1990` <- round(lb_mean_1990_provincia$`1990`, 0)

# Upper Bound for Mean Household Income by provincia
ub_mean_1990_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1990, FUN = ub_mean)
ub_mean_1990_provincia$provincia <- as.character(ub_mean_1990_provincia$provincia)
setnames(ub_mean_1990_provincia, colnames(ub_mean_1990_provincia), c("provincia","1990"))
ub_mean_1990_provincia$`1990` <- as.numeric(ub_mean_1990_provincia$`1990`)
ub_mean_1990_provincia$`1990` <- round(ub_mean_1990_provincia$`1990`, 0)

# Lower Bound for Gini Household Income by provincia
lb_gini_1990_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1990, FUN = lb_gini)
lb_gini_1990_provincia$provincia <- as.character(lb_gini_1990_provincia$provincia)
setnames(lb_gini_1990_provincia, colnames(lb_gini_1990_provincia), c("provincia","1990"))
lb_gini_1990_provincia$`1990` <- as.numeric(lb_gini_1990_provincia$`1990`)
lb_gini_1990_provincia$`1990` <- round(lb_gini_1990_provincia$`1990`, 3)

# Upper Bound for Gini Household Income by provincia
ub_gini_1990_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1990, FUN = ub_gini)
ub_gini_1990_provincia$provincia <- as.character(ub_gini_1990_provincia$provincia)
setnames(ub_gini_1990_provincia, colnames(ub_gini_1990_provincia), c("provincia","1990"))
ub_gini_1990_provincia$`1990` <- as.numeric(ub_gini_1990_provincia$`1990`)
ub_gini_1990_provincia$`1990` <- round(ub_gini_1990_provincia$`1990`, 3)
