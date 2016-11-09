########
# 2011 #
########

# Median Household Income by provincia
median_2011_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2011, FUN = median, na.rm = TRUE)
median_2011_provincia$provincia <- as.character(median_2011_provincia$provincia)
setnames(median_2011_provincia, colnames(median_2011_provincia), c("provincia","2011"))
median_2011_provincia$`2011` <- as.numeric(median_2011_provincia$`2011`)
median_2011_provincia$`2011` <- round(median_2011_provincia$`2011`, 0)

# Average Household Income by provincia
mean_2011_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2011, FUN = mean, na.rm = TRUE)
mean_2011_provincia$provincia <- as.character(mean_2011_provincia$provincia)
setnames(mean_2011_provincia, colnames(mean_2011_provincia), c("provincia","2011"))
mean_2011_provincia$`2011` <- as.numeric(mean_2011_provincia$`2011`)
mean_2011_provincia$`2011` <- round(mean_2011_provincia$`2011`, 0)

# Gini by provincia
gini_2011_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2011, FUN = Gini, na.rm = TRUE)
gini_2011_provincia$provincia <- as.character(gini_2011_provincia$provincia)
setnames(gini_2011_provincia, colnames(gini_2011_provincia), c("provincia","2011"))
gini_2011_provincia$`2011` <- as.numeric(gini_2011_provincia$`2011`)
gini_2011_provincia$`2011` <- round(gini_2011_provincia$`2011`, 3)

# Lower Bound for Median Household Income by provincia
lb_median_2011_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2011, FUN = lb_median)
lb_median_2011_provincia$provincia <- as.character(lb_median_2011_provincia$provincia)
setnames(lb_median_2011_provincia, colnames(lb_median_2011_provincia), c("provincia","2011"))
lb_median_2011_provincia$`2011` <- as.numeric(lb_median_2011_provincia$`2011`)
lb_median_2011_provincia$`2011` <- round(lb_median_2011_provincia$`2011`, 0)
lb_median_2011_provincia$`2011` <- as.numeric(lb_median_2011_provincia$`2011`)
lb_median_2011_provincia$`2011` <- round(lb_median_2011_provincia$`2011`, 0)

# Upper Bound for Median Household Income by provincia
ub_median_2011_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2011, FUN = ub_median)
ub_median_2011_provincia$provincia <- as.character(ub_median_2011_provincia$provincia)
setnames(ub_median_2011_provincia, colnames(ub_median_2011_provincia), c("provincia","2011"))
ub_median_2011_provincia$`2011` <- as.numeric(ub_median_2011_provincia$`2011`)
ub_median_2011_provincia$`2011` <- round(ub_median_2011_provincia$`2011`, 0)

# Lower Bound for Mean Household Income by provincia
lb_mean_2011_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2011, FUN = lb_mean)
lb_mean_2011_provincia$provincia <- as.character(lb_mean_2011_provincia$provincia)
setnames(lb_mean_2011_provincia, colnames(lb_mean_2011_provincia), c("provincia","2011"))
lb_mean_2011_provincia$`2011` <- as.numeric(lb_mean_2011_provincia$`2011`)
lb_mean_2011_provincia$`2011` <- round(lb_mean_2011_provincia$`2011`, 0)

# Upper Bound for Mean Household Income by provincia
ub_mean_2011_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2011, FUN = ub_mean)
ub_mean_2011_provincia$provincia <- as.character(ub_mean_2011_provincia$provincia)
setnames(ub_mean_2011_provincia, colnames(ub_mean_2011_provincia), c("provincia","2011"))
ub_mean_2011_provincia$`2011` <- as.numeric(ub_mean_2011_provincia$`2011`)
ub_mean_2011_provincia$`2011` <- round(ub_mean_2011_provincia$`2011`, 0)

# Lower Bound for Gini Household Income by provincia
lb_gini_2011_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2011, FUN = lb_gini)
lb_gini_2011_provincia$provincia <- as.character(lb_gini_2011_provincia$provincia)
setnames(lb_gini_2011_provincia, colnames(lb_gini_2011_provincia), c("provincia","2011"))
lb_gini_2011_provincia$`2011` <- as.numeric(lb_gini_2011_provincia$`2011`)
lb_gini_2011_provincia$`2011` <- round(lb_gini_2011_provincia$`2011`, 3)

# Upper Bound for Gini Household Income by provincia
ub_gini_2011_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2011, FUN = ub_gini)
ub_gini_2011_provincia$provincia <- as.character(ub_gini_2011_provincia$provincia)
setnames(ub_gini_2011_provincia, colnames(ub_gini_2011_provincia), c("provincia","2011"))
ub_gini_2011_provincia$`2011` <- as.numeric(ub_gini_2011_provincia$`2011`)
ub_gini_2011_provincia$`2011` <- round(ub_gini_2011_provincia$`2011`, 3)
