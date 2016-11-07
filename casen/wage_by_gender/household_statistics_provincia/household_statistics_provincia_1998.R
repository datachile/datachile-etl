########
# 1998 #
########

# Median Household Income by provincia
median_1998_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1998, FUN = median, na.rm = TRUE)
median_1998_provincia$provincia <- as.character(median_1998_provincia$provincia)
setnames(median_1998_provincia, colnames(median_1998_provincia), c("provincia","1998"))
median_1998_provincia$`1998` <- as.numeric(median_1998_provincia$`1998`)
median_1998_provincia$`1998` <- round(median_1998_provincia$`1998`, 0)

# Average Household Income by provincia
mean_1998_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1998, FUN = mean, na.rm = TRUE)
mean_1998_provincia$provincia <- as.character(mean_1998_provincia$provincia)
setnames(mean_1998_provincia, colnames(mean_1998_provincia), c("provincia","1998"))
mean_1998_provincia$`1998` <- as.numeric(mean_1998_provincia$`1998`)
mean_1998_provincia$`1998` <- round(mean_1998_provincia$`1998`, 0)

# Gini by provincia
gini_1998_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1998, FUN = Gini, na.rm = TRUE)
gini_1998_provincia$provincia <- as.character(gini_1998_provincia$provincia)
setnames(gini_1998_provincia, colnames(gini_1998_provincia), c("provincia","1998"))
gini_1998_provincia$`1998` <- as.numeric(gini_1998_provincia$`1998`)
gini_1998_provincia$`1998` <- round(gini_1998_provincia$`1998`, 3)

# Lower Bound for Median Household Income by provincia
lb_median_1998_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1998, FUN = lb_median)
lb_median_1998_provincia$provincia <- as.character(lb_median_1998_provincia$provincia)
setnames(lb_median_1998_provincia, colnames(lb_median_1998_provincia), c("provincia","1998"))
lb_median_1998_provincia$`1998` <- as.numeric(lb_median_1998_provincia$`1998`)
lb_median_1998_provincia$`1998` <- round(lb_median_1998_provincia$`1998`, 0)
lb_median_1998_provincia$`1998` <- as.numeric(lb_median_1998_provincia$`1998`)
lb_median_1998_provincia$`1998` <- round(lb_median_1998_provincia$`1998`, 0)

# Upper Bound for Median Household Income by provincia
ub_median_1998_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1998, FUN = ub_median)
ub_median_1998_provincia$provincia <- as.character(ub_median_1998_provincia$provincia)
setnames(ub_median_1998_provincia, colnames(ub_median_1998_provincia), c("provincia","1998"))
ub_median_1998_provincia$`1998` <- as.numeric(ub_median_1998_provincia$`1998`)
ub_median_1998_provincia$`1998` <- round(ub_median_1998_provincia$`1998`, 0)

# Lower Bound for Mean Household Income by provincia
lb_mean_1998_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1998, FUN = lb_mean)
lb_mean_1998_provincia$provincia <- as.character(lb_mean_1998_provincia$provincia)
setnames(lb_mean_1998_provincia, colnames(lb_mean_1998_provincia), c("provincia","1998"))
lb_mean_1998_provincia$`1998` <- as.numeric(lb_mean_1998_provincia$`1998`)
lb_mean_1998_provincia$`1998` <- round(lb_mean_1998_provincia$`1998`, 0)

# Upper Bound for Mean Household Income by provincia
ub_mean_1998_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1998, FUN = ub_mean)
ub_mean_1998_provincia$provincia <- as.character(ub_mean_1998_provincia$provincia)
setnames(ub_mean_1998_provincia, colnames(ub_mean_1998_provincia), c("provincia","1998"))
ub_mean_1998_provincia$`1998` <- as.numeric(ub_mean_1998_provincia$`1998`)
ub_mean_1998_provincia$`1998` <- round(ub_mean_1998_provincia$`1998`, 0)

# Lower Bound for Gini Household Income by provincia
lb_gini_1998_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1998, FUN = lb_gini)
lb_gini_1998_provincia$provincia <- as.character(lb_gini_1998_provincia$provincia)
setnames(lb_gini_1998_provincia, colnames(lb_gini_1998_provincia), c("provincia","1998"))
lb_gini_1998_provincia$`1998` <- as.numeric(lb_gini_1998_provincia$`1998`)
lb_gini_1998_provincia$`1998` <- round(lb_gini_1998_provincia$`1998`, 3)

# Upper Bound for Gini Household Income by provincia
ub_gini_1998_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1998, FUN = ub_gini)
ub_gini_1998_provincia$provincia <- as.character(ub_gini_1998_provincia$provincia)
setnames(ub_gini_1998_provincia, colnames(ub_gini_1998_provincia), c("provincia","1998"))
ub_gini_1998_provincia$`1998` <- as.numeric(ub_gini_1998_provincia$`1998`)
ub_gini_1998_provincia$`1998` <- round(ub_gini_1998_provincia$`1998`, 3)
