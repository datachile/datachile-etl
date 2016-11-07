########
# 1996 #
########

# Median Household Income by comuna
median_1996_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1996, FUN = median, na.rm = TRUE)
median_1996_comuna$comuna <- as.character(median_1996_comuna$comuna)
setnames(median_1996_comuna, colnames(median_1996_comuna), c("comuna","1996"))
median_1996_comuna$`1996` <- as.numeric(median_1996_comuna$`1996`)
median_1996_comuna$`1996` <- round(median_1996_comuna$`1996`, 0)

# Average Household Income by comuna
mean_1996_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1996, FUN = mean, na.rm = TRUE)
mean_1996_comuna$comuna <- as.character(mean_1996_comuna$comuna)
setnames(mean_1996_comuna, colnames(mean_1996_comuna), c("comuna","1996"))
mean_1996_comuna$`1996` <- as.numeric(mean_1996_comuna$`1996`)
mean_1996_comuna$`1996` <- round(mean_1996_comuna$`1996`, 0)

# Gini by comuna
gini_1996_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1996, FUN = Gini, na.rm = TRUE)
gini_1996_comuna$comuna <- as.character(gini_1996_comuna$comuna)
setnames(gini_1996_comuna, colnames(gini_1996_comuna), c("comuna","1996"))
gini_1996_comuna$`1996` <- as.numeric(gini_1996_comuna$`1996`)
gini_1996_comuna$`1996` <- round(gini_1996_comuna$`1996`, 3)

# Lower Bound for Median Household Income by comuna
lb_median_1996_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1996, FUN = lb_median)
lb_median_1996_comuna$comuna <- as.character(lb_median_1996_comuna$comuna)
setnames(lb_median_1996_comuna, colnames(lb_median_1996_comuna), c("comuna","1996"))
lb_median_1996_comuna$`1996` <- as.numeric(lb_median_1996_comuna$`1996`)
lb_median_1996_comuna$`1996` <- round(lb_median_1996_comuna$`1996`, 0)
lb_median_1996_comuna$`1996` <- as.numeric(lb_median_1996_comuna$`1996`)
lb_median_1996_comuna$`1996` <- round(lb_median_1996_comuna$`1996`, 0)

# Upper Bound for Median Household Income by comuna
ub_median_1996_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1996, FUN = ub_median)
ub_median_1996_comuna$comuna <- as.character(ub_median_1996_comuna$comuna)
setnames(ub_median_1996_comuna, colnames(ub_median_1996_comuna), c("comuna","1996"))
ub_median_1996_comuna$`1996` <- as.numeric(ub_median_1996_comuna$`1996`)
ub_median_1996_comuna$`1996` <- round(ub_median_1996_comuna$`1996`, 0)

# Lower Bound for Mean Household Income by comuna
lb_mean_1996_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1996, FUN = lb_mean)
lb_mean_1996_comuna$comuna <- as.character(lb_mean_1996_comuna$comuna)
setnames(lb_mean_1996_comuna, colnames(lb_mean_1996_comuna), c("comuna","1996"))
lb_mean_1996_comuna$`1996` <- as.numeric(lb_mean_1996_comuna$`1996`)
lb_mean_1996_comuna$`1996` <- round(lb_mean_1996_comuna$`1996`, 0)

# Upper Bound for Mean Household Income by comuna
ub_mean_1996_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1996, FUN = ub_mean)
ub_mean_1996_comuna$comuna <- as.character(ub_mean_1996_comuna$comuna)
setnames(ub_mean_1996_comuna, colnames(ub_mean_1996_comuna), c("comuna","1996"))
ub_mean_1996_comuna$`1996` <- as.numeric(ub_mean_1996_comuna$`1996`)
ub_mean_1996_comuna$`1996` <- round(ub_mean_1996_comuna$`1996`, 0)

# Lower Bound for Gini Household Income by comuna
lb_gini_1996_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1996, FUN = lb_gini)
lb_gini_1996_comuna$comuna <- as.character(lb_gini_1996_comuna$comuna)
setnames(lb_gini_1996_comuna, colnames(lb_gini_1996_comuna), c("comuna","1996"))
lb_gini_1996_comuna$`1996` <- as.numeric(lb_gini_1996_comuna$`1996`)
lb_gini_1996_comuna$`1996` <- round(lb_gini_1996_comuna$`1996`, 3)

# Upper Bound for Gini Household Income by comuna
ub_gini_1996_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1996, FUN = ub_gini)
ub_gini_1996_comuna$comuna <- as.character(ub_gini_1996_comuna$comuna)
setnames(ub_gini_1996_comuna, colnames(ub_gini_1996_comuna), c("comuna","1996"))
ub_gini_1996_comuna$`1996` <- as.numeric(ub_gini_1996_comuna$`1996`)
ub_gini_1996_comuna$`1996` <- round(ub_gini_1996_comuna$`1996`, 3)
