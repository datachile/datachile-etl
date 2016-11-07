########
# 1998 #
########

# Median Household Income by comuna
median_1998_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1998, FUN = median, na.rm = TRUE)
median_1998_comuna$comuna <- as.character(median_1998_comuna$comuna)
setnames(median_1998_comuna, colnames(median_1998_comuna), c("comuna","1998"))
median_1998_comuna$`1998` <- as.numeric(median_1998_comuna$`1998`)
median_1998_comuna$`1998` <- round(median_1998_comuna$`1998`, 0)

# Average Household Income by comuna
mean_1998_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1998, FUN = mean, na.rm = TRUE)
mean_1998_comuna$comuna <- as.character(mean_1998_comuna$comuna)
setnames(mean_1998_comuna, colnames(mean_1998_comuna), c("comuna","1998"))
mean_1998_comuna$`1998` <- as.numeric(mean_1998_comuna$`1998`)
mean_1998_comuna$`1998` <- round(mean_1998_comuna$`1998`, 0)

# Gini by comuna
gini_1998_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1998, FUN = Gini, na.rm = TRUE)
gini_1998_comuna$comuna <- as.character(gini_1998_comuna$comuna)
setnames(gini_1998_comuna, colnames(gini_1998_comuna), c("comuna","1998"))
gini_1998_comuna$`1998` <- as.numeric(gini_1998_comuna$`1998`)
gini_1998_comuna$`1998` <- round(gini_1998_comuna$`1998`, 3)

# Lower Bound for Median Household Income by comuna
lb_median_1998_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1998, FUN = lb_median)
lb_median_1998_comuna$comuna <- as.character(lb_median_1998_comuna$comuna)
setnames(lb_median_1998_comuna, colnames(lb_median_1998_comuna), c("comuna","1998"))
lb_median_1998_comuna$`1998` <- as.numeric(lb_median_1998_comuna$`1998`)
lb_median_1998_comuna$`1998` <- round(lb_median_1998_comuna$`1998`, 0)
lb_median_1998_comuna$`1998` <- as.numeric(lb_median_1998_comuna$`1998`)
lb_median_1998_comuna$`1998` <- round(lb_median_1998_comuna$`1998`, 0)

# Upper Bound for Median Household Income by comuna
ub_median_1998_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1998, FUN = ub_median)
ub_median_1998_comuna$comuna <- as.character(ub_median_1998_comuna$comuna)
setnames(ub_median_1998_comuna, colnames(ub_median_1998_comuna), c("comuna","1998"))
ub_median_1998_comuna$`1998` <- as.numeric(ub_median_1998_comuna$`1998`)
ub_median_1998_comuna$`1998` <- round(ub_median_1998_comuna$`1998`, 0)

# Lower Bound for Mean Household Income by comuna
lb_mean_1998_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1998, FUN = lb_mean)
lb_mean_1998_comuna$comuna <- as.character(lb_mean_1998_comuna$comuna)
setnames(lb_mean_1998_comuna, colnames(lb_mean_1998_comuna), c("comuna","1998"))
lb_mean_1998_comuna$`1998` <- as.numeric(lb_mean_1998_comuna$`1998`)
lb_mean_1998_comuna$`1998` <- round(lb_mean_1998_comuna$`1998`, 0)

# Upper Bound for Mean Household Income by comuna
ub_mean_1998_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1998, FUN = ub_mean)
ub_mean_1998_comuna$comuna <- as.character(ub_mean_1998_comuna$comuna)
setnames(ub_mean_1998_comuna, colnames(ub_mean_1998_comuna), c("comuna","1998"))
ub_mean_1998_comuna$`1998` <- as.numeric(ub_mean_1998_comuna$`1998`)
ub_mean_1998_comuna$`1998` <- round(ub_mean_1998_comuna$`1998`, 0)

# Lower Bound for Gini Household Income by comuna
lb_gini_1998_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1998, FUN = lb_gini)
lb_gini_1998_comuna$comuna <- as.character(lb_gini_1998_comuna$comuna)
setnames(lb_gini_1998_comuna, colnames(lb_gini_1998_comuna), c("comuna","1998"))
lb_gini_1998_comuna$`1998` <- as.numeric(lb_gini_1998_comuna$`1998`)
lb_gini_1998_comuna$`1998` <- round(lb_gini_1998_comuna$`1998`, 3)

# Upper Bound for Gini Household Income by comuna
ub_gini_1998_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1998, FUN = ub_gini)
ub_gini_1998_comuna$comuna <- as.character(ub_gini_1998_comuna$comuna)
setnames(ub_gini_1998_comuna, colnames(ub_gini_1998_comuna), c("comuna","1998"))
ub_gini_1998_comuna$`1998` <- as.numeric(ub_gini_1998_comuna$`1998`)
ub_gini_1998_comuna$`1998` <- round(ub_gini_1998_comuna$`1998`, 3)
