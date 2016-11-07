########
# 1990 #
########

# Median Household Income by comuna
median_1990_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1990, FUN = median, na.rm = TRUE)
median_1990_comuna$comuna <- as.character(median_1990_comuna$comuna)
setnames(median_1990_comuna, colnames(median_1990_comuna), c("comuna","1990"))
median_1990_comuna$`1990` <- as.numeric(median_1990_comuna$`1990`)
median_1990_comuna$`1990` <- round(median_1990_comuna$`1990`, 0)

# Average Household Income by comuna
mean_1990_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1990, FUN = mean, na.rm = TRUE)
mean_1990_comuna$comuna <- as.character(mean_1990_comuna$comuna)
setnames(mean_1990_comuna, colnames(mean_1990_comuna), c("comuna","1990"))
mean_1990_comuna$`1990` <- as.numeric(mean_1990_comuna$`1990`)
mean_1990_comuna$`1990` <- round(mean_1990_comuna$`1990`, 0)

# Gini by comuna
gini_1990_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1990, FUN = Gini, na.rm = TRUE)
gini_1990_comuna$comuna <- as.character(gini_1990_comuna$comuna)
setnames(gini_1990_comuna, colnames(gini_1990_comuna), c("comuna","1990"))
gini_1990_comuna$`1990` <- as.numeric(gini_1990_comuna$`1990`)
gini_1990_comuna$`1990` <- round(gini_1990_comuna$`1990`, 3)

# Lower Bound for Median Household Income by comuna
lb_median_1990_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1990, FUN = lb_median)
lb_median_1990_comuna$comuna <- as.character(lb_median_1990_comuna$comuna)
setnames(lb_median_1990_comuna, colnames(lb_median_1990_comuna), c("comuna","1990"))
lb_median_1990_comuna$`1990` <- as.numeric(lb_median_1990_comuna$`1990`)
lb_median_1990_comuna$`1990` <- round(lb_median_1990_comuna$`1990`, 0)
lb_median_1990_comuna$`1990` <- as.numeric(lb_median_1990_comuna$`1990`)
lb_median_1990_comuna$`1990` <- round(lb_median_1990_comuna$`1990`, 0)

# Upper Bound for Median Household Income by comuna
ub_median_1990_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1990, FUN = ub_median)
ub_median_1990_comuna$comuna <- as.character(ub_median_1990_comuna$comuna)
setnames(ub_median_1990_comuna, colnames(ub_median_1990_comuna), c("comuna","1990"))
ub_median_1990_comuna$`1990` <- as.numeric(ub_median_1990_comuna$`1990`)
ub_median_1990_comuna$`1990` <- round(ub_median_1990_comuna$`1990`, 0)

# Lower Bound for Mean Household Income by comuna
lb_mean_1990_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1990, FUN = lb_mean)
lb_mean_1990_comuna$comuna <- as.character(lb_mean_1990_comuna$comuna)
setnames(lb_mean_1990_comuna, colnames(lb_mean_1990_comuna), c("comuna","1990"))
lb_mean_1990_comuna$`1990` <- as.numeric(lb_mean_1990_comuna$`1990`)
lb_mean_1990_comuna$`1990` <- round(lb_mean_1990_comuna$`1990`, 0)

# Upper Bound for Mean Household Income by comuna
ub_mean_1990_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1990, FUN = ub_mean)
ub_mean_1990_comuna$comuna <- as.character(ub_mean_1990_comuna$comuna)
setnames(ub_mean_1990_comuna, colnames(ub_mean_1990_comuna), c("comuna","1990"))
ub_mean_1990_comuna$`1990` <- as.numeric(ub_mean_1990_comuna$`1990`)
ub_mean_1990_comuna$`1990` <- round(ub_mean_1990_comuna$`1990`, 0)

# Lower Bound for Gini Household Income by comuna
lb_gini_1990_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1990, FUN = lb_gini)
lb_gini_1990_comuna$comuna <- as.character(lb_gini_1990_comuna$comuna)
setnames(lb_gini_1990_comuna, colnames(lb_gini_1990_comuna), c("comuna","1990"))
lb_gini_1990_comuna$`1990` <- as.numeric(lb_gini_1990_comuna$`1990`)
lb_gini_1990_comuna$`1990` <- round(lb_gini_1990_comuna$`1990`, 3)

# Upper Bound for Gini Household Income by comuna
ub_gini_1990_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1990, FUN = ub_gini)
ub_gini_1990_comuna$comuna <- as.character(ub_gini_1990_comuna$comuna)
setnames(ub_gini_1990_comuna, colnames(ub_gini_1990_comuna), c("comuna","1990"))
ub_gini_1990_comuna$`1990` <- as.numeric(ub_gini_1990_comuna$`1990`)
ub_gini_1990_comuna$`1990` <- round(ub_gini_1990_comuna$`1990`, 3)
