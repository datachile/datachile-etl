########
# 2006 #
########

# Median Household Income by provincia
median_2006_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2006, FUN = median, na.rm = TRUE)
median_2006_provincia$provincia <- as.character(median_2006_provincia$provincia)
setnames(median_2006_provincia, colnames(median_2006_provincia), c("provincia","2006"))
median_2006_provincia$`2006` <- as.numeric(median_2006_provincia$`2006`)
median_2006_provincia$`2006` <- round(median_2006_provincia$`2006`, 0)

# Average Household Income by provincia
mean_2006_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2006, FUN = mean, na.rm = TRUE)
mean_2006_provincia$provincia <- as.character(mean_2006_provincia$provincia)
setnames(mean_2006_provincia, colnames(mean_2006_provincia), c("provincia","2006"))
mean_2006_provincia$`2006` <- as.numeric(mean_2006_provincia$`2006`)
mean_2006_provincia$`2006` <- round(mean_2006_provincia$`2006`, 0)

# Gini by provincia
gini_2006_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2006, FUN = Gini, na.rm = TRUE)
gini_2006_provincia$provincia <- as.character(gini_2006_provincia$provincia)
setnames(gini_2006_provincia, colnames(gini_2006_provincia), c("provincia","2006"))
gini_2006_provincia$`2006` <- as.numeric(gini_2006_provincia$`2006`)
gini_2006_provincia$`2006` <- round(gini_2006_provincia$`2006`, 3)

# Lower Bound for Median Household Income by provincia
lb_median_2006_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2006, FUN = lb_median)
lb_median_2006_provincia$provincia <- as.character(lb_median_2006_provincia$provincia)
setnames(lb_median_2006_provincia, colnames(lb_median_2006_provincia), c("provincia","2006"))
lb_median_2006_provincia$`2006` <- as.numeric(lb_median_2006_provincia$`2006`)
lb_median_2006_provincia$`2006` <- round(lb_median_2006_provincia$`2006`, 0)
lb_median_2006_provincia$`2006` <- as.numeric(lb_median_2006_provincia$`2006`)
lb_median_2006_provincia$`2006` <- round(lb_median_2006_provincia$`2006`, 0)

# Upper Bound for Median Household Income by provincia
ub_median_2006_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2006, FUN = ub_median)
ub_median_2006_provincia$provincia <- as.character(ub_median_2006_provincia$provincia)
setnames(ub_median_2006_provincia, colnames(ub_median_2006_provincia), c("provincia","2006"))
ub_median_2006_provincia$`2006` <- as.numeric(ub_median_2006_provincia$`2006`)
ub_median_2006_provincia$`2006` <- round(ub_median_2006_provincia$`2006`, 0)

# Lower Bound for Mean Household Income by provincia
lb_mean_2006_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2006, FUN = lb_mean)
lb_mean_2006_provincia$provincia <- as.character(lb_mean_2006_provincia$provincia)
setnames(lb_mean_2006_provincia, colnames(lb_mean_2006_provincia), c("provincia","2006"))
lb_mean_2006_provincia$`2006` <- as.numeric(lb_mean_2006_provincia$`2006`)
lb_mean_2006_provincia$`2006` <- round(lb_mean_2006_provincia$`2006`, 0)

# Upper Bound for Mean Household Income by provincia
ub_mean_2006_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2006, FUN = ub_mean)
ub_mean_2006_provincia$provincia <- as.character(ub_mean_2006_provincia$provincia)
setnames(ub_mean_2006_provincia, colnames(ub_mean_2006_provincia), c("provincia","2006"))
ub_mean_2006_provincia$`2006` <- as.numeric(ub_mean_2006_provincia$`2006`)
ub_mean_2006_provincia$`2006` <- round(ub_mean_2006_provincia$`2006`, 0)

# Lower Bound for Gini Household Income by provincia
lb_gini_2006_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2006, FUN = lb_gini)
lb_gini_2006_provincia$provincia <- as.character(lb_gini_2006_provincia$provincia)
setnames(lb_gini_2006_provincia, colnames(lb_gini_2006_provincia), c("provincia","2006"))
lb_gini_2006_provincia$`2006` <- as.numeric(lb_gini_2006_provincia$`2006`)
lb_gini_2006_provincia$`2006` <- round(lb_gini_2006_provincia$`2006`, 3)

# Upper Bound for Gini Household Income by provincia
ub_gini_2006_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2006, FUN = ub_gini)
ub_gini_2006_provincia$provincia <- as.character(ub_gini_2006_provincia$provincia)
setnames(ub_gini_2006_provincia, colnames(ub_gini_2006_provincia), c("provincia","2006"))
ub_gini_2006_provincia$`2006` <- as.numeric(ub_gini_2006_provincia$`2006`)
ub_gini_2006_provincia$`2006` <- round(ub_gini_2006_provincia$`2006`, 3)
