########
# 2003 #
########

# Median Household Income by provincia
median_2003_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2003, FUN = median, na.rm = TRUE)
median_2003_provincia$provincia <- as.character(median_2003_provincia$provincia)
setnames(median_2003_provincia, colnames(median_2003_provincia), c("provincia","2003"))
median_2003_provincia$`2003` <- as.numeric(median_2003_provincia$`2003`)
median_2003_provincia$`2003` <- round(median_2003_provincia$`2003`, 0)

# Average Household Income by provincia
mean_2003_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2003, FUN = mean, na.rm = TRUE)
mean_2003_provincia$provincia <- as.character(mean_2003_provincia$provincia)
setnames(mean_2003_provincia, colnames(mean_2003_provincia), c("provincia","2003"))
mean_2003_provincia$`2003` <- as.numeric(mean_2003_provincia$`2003`)
mean_2003_provincia$`2003` <- round(mean_2003_provincia$`2003`, 0)

# Gini by provincia
gini_2003_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2003, FUN = Gini, na.rm = TRUE)
gini_2003_provincia$provincia <- as.character(gini_2003_provincia$provincia)
setnames(gini_2003_provincia, colnames(gini_2003_provincia), c("provincia","2003"))
gini_2003_provincia$`2003` <- as.numeric(gini_2003_provincia$`2003`)
gini_2003_provincia$`2003` <- round(gini_2003_provincia$`2003`, 3)

# Lower Bound for Median Household Income by provincia
lb_median_2003_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2003, FUN = lb_median)
lb_median_2003_provincia$provincia <- as.character(lb_median_2003_provincia$provincia)
setnames(lb_median_2003_provincia, colnames(lb_median_2003_provincia), c("provincia","2003"))
lb_median_2003_provincia$`2003` <- as.numeric(lb_median_2003_provincia$`2003`)
lb_median_2003_provincia$`2003` <- round(lb_median_2003_provincia$`2003`, 0)
lb_median_2003_provincia$`2003` <- as.numeric(lb_median_2003_provincia$`2003`)
lb_median_2003_provincia$`2003` <- round(lb_median_2003_provincia$`2003`, 0)

# Upper Bound for Median Household Income by provincia
ub_median_2003_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2003, FUN = ub_median)
ub_median_2003_provincia$provincia <- as.character(ub_median_2003_provincia$provincia)
setnames(ub_median_2003_provincia, colnames(ub_median_2003_provincia), c("provincia","2003"))
ub_median_2003_provincia$`2003` <- as.numeric(ub_median_2003_provincia$`2003`)
ub_median_2003_provincia$`2003` <- round(ub_median_2003_provincia$`2003`, 0)

# Lower Bound for Mean Household Income by provincia
lb_mean_2003_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2003, FUN = lb_mean)
lb_mean_2003_provincia$provincia <- as.character(lb_mean_2003_provincia$provincia)
setnames(lb_mean_2003_provincia, colnames(lb_mean_2003_provincia), c("provincia","2003"))
lb_mean_2003_provincia$`2003` <- as.numeric(lb_mean_2003_provincia$`2003`)
lb_mean_2003_provincia$`2003` <- round(lb_mean_2003_provincia$`2003`, 0)

# Upper Bound for Mean Household Income by provincia
ub_mean_2003_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2003, FUN = ub_mean)
ub_mean_2003_provincia$provincia <- as.character(ub_mean_2003_provincia$provincia)
setnames(ub_mean_2003_provincia, colnames(ub_mean_2003_provincia), c("provincia","2003"))
ub_mean_2003_provincia$`2003` <- as.numeric(ub_mean_2003_provincia$`2003`)
ub_mean_2003_provincia$`2003` <- round(ub_mean_2003_provincia$`2003`, 0)

# Lower Bound for Gini Household Income by provincia
lb_gini_2003_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2003, FUN = lb_gini)
lb_gini_2003_provincia$provincia <- as.character(lb_gini_2003_provincia$provincia)
setnames(lb_gini_2003_provincia, colnames(lb_gini_2003_provincia), c("provincia","2003"))
lb_gini_2003_provincia$`2003` <- as.numeric(lb_gini_2003_provincia$`2003`)
lb_gini_2003_provincia$`2003` <- round(lb_gini_2003_provincia$`2003`, 3)

# Upper Bound for Gini Household Income by provincia
ub_gini_2003_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2003, FUN = ub_gini)
ub_gini_2003_provincia$provincia <- as.character(ub_gini_2003_provincia$provincia)
setnames(ub_gini_2003_provincia, colnames(ub_gini_2003_provincia), c("provincia","2003"))
ub_gini_2003_provincia$`2003` <- as.numeric(ub_gini_2003_provincia$`2003`)
ub_gini_2003_provincia$`2003` <- round(ub_gini_2003_provincia$`2003`, 3)
