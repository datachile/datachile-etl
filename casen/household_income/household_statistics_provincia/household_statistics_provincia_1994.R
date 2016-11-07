########
# 1994 #
########

# Median Household Income by provincia
median_1994_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1994, FUN = median, na.rm = TRUE)
median_1994_provincia$provincia <- as.character(median_1994_provincia$provincia)
setnames(median_1994_provincia, colnames(median_1994_provincia), c("provincia","1994"))
median_1994_provincia$`1994` <- as.numeric(median_1994_provincia$`1994`)
median_1994_provincia$`1994` <- round(median_1994_provincia$`1994`, 0)

# Average Household Income by provincia
mean_1994_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1994, FUN = mean, na.rm = TRUE)
mean_1994_provincia$provincia <- as.character(mean_1994_provincia$provincia)
setnames(mean_1994_provincia, colnames(mean_1994_provincia), c("provincia","1994"))
mean_1994_provincia$`1994` <- as.numeric(mean_1994_provincia$`1994`)
mean_1994_provincia$`1994` <- round(mean_1994_provincia$`1994`, 0)

# Gini by provincia
gini_1994_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1994, FUN = Gini, na.rm = TRUE)
gini_1994_provincia$provincia <- as.character(gini_1994_provincia$provincia)
setnames(gini_1994_provincia, colnames(gini_1994_provincia), c("provincia","1994"))
gini_1994_provincia$`1994` <- as.numeric(gini_1994_provincia$`1994`)
gini_1994_provincia$`1994` <- round(gini_1994_provincia$`1994`, 3)

# Lower Bound for Median Household Income by provincia
lb_median_1994_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1994, FUN = lb_median)
lb_median_1994_provincia$provincia <- as.character(lb_median_1994_provincia$provincia)
setnames(lb_median_1994_provincia, colnames(lb_median_1994_provincia), c("provincia","1994"))
lb_median_1994_provincia$`1994` <- as.numeric(lb_median_1994_provincia$`1994`)
lb_median_1994_provincia$`1994` <- round(lb_median_1994_provincia$`1994`, 0)
lb_median_1994_provincia$`1994` <- as.numeric(lb_median_1994_provincia$`1994`)
lb_median_1994_provincia$`1994` <- round(lb_median_1994_provincia$`1994`, 0)

# Upper Bound for Median Household Income by provincia
ub_median_1994_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1994, FUN = ub_median)
ub_median_1994_provincia$provincia <- as.character(ub_median_1994_provincia$provincia)
setnames(ub_median_1994_provincia, colnames(ub_median_1994_provincia), c("provincia","1994"))
ub_median_1994_provincia$`1994` <- as.numeric(ub_median_1994_provincia$`1994`)
ub_median_1994_provincia$`1994` <- round(ub_median_1994_provincia$`1994`, 0)

# Lower Bound for Mean Household Income by provincia
lb_mean_1994_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1994, FUN = lb_mean)
lb_mean_1994_provincia$provincia <- as.character(lb_mean_1994_provincia$provincia)
setnames(lb_mean_1994_provincia, colnames(lb_mean_1994_provincia), c("provincia","1994"))
lb_mean_1994_provincia$`1994` <- as.numeric(lb_mean_1994_provincia$`1994`)
lb_mean_1994_provincia$`1994` <- round(lb_mean_1994_provincia$`1994`, 0)

# Upper Bound for Mean Household Income by provincia
ub_mean_1994_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1994, FUN = ub_mean)
ub_mean_1994_provincia$provincia <- as.character(ub_mean_1994_provincia$provincia)
setnames(ub_mean_1994_provincia, colnames(ub_mean_1994_provincia), c("provincia","1994"))
ub_mean_1994_provincia$`1994` <- as.numeric(ub_mean_1994_provincia$`1994`)
ub_mean_1994_provincia$`1994` <- round(ub_mean_1994_provincia$`1994`, 0)

# Lower Bound for Gini Household Income by provincia
lb_gini_1994_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1994, FUN = lb_gini)
lb_gini_1994_provincia$provincia <- as.character(lb_gini_1994_provincia$provincia)
setnames(lb_gini_1994_provincia, colnames(lb_gini_1994_provincia), c("provincia","1994"))
lb_gini_1994_provincia$`1994` <- as.numeric(lb_gini_1994_provincia$`1994`)
lb_gini_1994_provincia$`1994` <- round(lb_gini_1994_provincia$`1994`, 3)

# Upper Bound for Gini Household Income by provincia
ub_gini_1994_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1994, FUN = ub_gini)
ub_gini_1994_provincia$provincia <- as.character(ub_gini_1994_provincia$provincia)
setnames(ub_gini_1994_provincia, colnames(ub_gini_1994_provincia), c("provincia","1994"))
ub_gini_1994_provincia$`1994` <- as.numeric(ub_gini_1994_provincia$`1994`)
ub_gini_1994_provincia$`1994` <- round(ub_gini_1994_provincia$`1994`, 3)
