########
# 1992 #
########

# Median Household Income by comuna
median_1992_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1992, FUN = median, na.rm = TRUE)
median_1992_comuna$comuna <- as.character(median_1992_comuna$comuna)
setnames(median_1992_comuna, colnames(median_1992_comuna), c("comuna","1992"))
median_1992_comuna$`1992` <- as.numeric(median_1992_comuna$`1992`)
median_1992_comuna$`1992` <- round(median_1992_comuna$`1992`, 0)

# Average Household Income by comuna
mean_1992_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1992, FUN = mean, na.rm = TRUE)
mean_1992_comuna$comuna <- as.character(mean_1992_comuna$comuna)
setnames(mean_1992_comuna, colnames(mean_1992_comuna), c("comuna","1992"))
mean_1992_comuna$`1992` <- as.numeric(mean_1992_comuna$`1992`)
mean_1992_comuna$`1992` <- round(mean_1992_comuna$`1992`, 0)

# Gini by comuna
gini_1992_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1992, FUN = Gini, na.rm = TRUE)
gini_1992_comuna$comuna <- as.character(gini_1992_comuna$comuna)
setnames(gini_1992_comuna, colnames(gini_1992_comuna), c("comuna","1992"))
gini_1992_comuna$`1992` <- as.numeric(gini_1992_comuna$`1992`)
gini_1992_comuna$`1992` <- round(gini_1992_comuna$`1992`, 3)

# Lower Bound for Median Household Income by comuna
lb_median_1992_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1992, FUN = lb_median)
lb_median_1992_comuna$comuna <- as.character(lb_median_1992_comuna$comuna)
setnames(lb_median_1992_comuna, colnames(lb_median_1992_comuna), c("comuna","1992"))
lb_median_1992_comuna$`1992` <- as.numeric(lb_median_1992_comuna$`1992`)
lb_median_1992_comuna$`1992` <- round(lb_median_1992_comuna$`1992`, 0)
lb_median_1992_comuna$`1992` <- as.numeric(lb_median_1992_comuna$`1992`)
lb_median_1992_comuna$`1992` <- round(lb_median_1992_comuna$`1992`, 0)

# Upper Bound for Median Household Income by comuna
ub_median_1992_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1992, FUN = ub_median)
ub_median_1992_comuna$comuna <- as.character(ub_median_1992_comuna$comuna)
setnames(ub_median_1992_comuna, colnames(ub_median_1992_comuna), c("comuna","1992"))
ub_median_1992_comuna$`1992` <- as.numeric(ub_median_1992_comuna$`1992`)
ub_median_1992_comuna$`1992` <- round(ub_median_1992_comuna$`1992`, 0)

# Lower Bound for Mean Household Income by comuna
lb_mean_1992_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1992, FUN = lb_mean)
lb_mean_1992_comuna$comuna <- as.character(lb_mean_1992_comuna$comuna)
setnames(lb_mean_1992_comuna, colnames(lb_mean_1992_comuna), c("comuna","1992"))
lb_mean_1992_comuna$`1992` <- as.numeric(lb_mean_1992_comuna$`1992`)
lb_mean_1992_comuna$`1992` <- round(lb_mean_1992_comuna$`1992`, 0)

# Upper Bound for Mean Household Income by comuna
ub_mean_1992_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1992, FUN = ub_mean)
ub_mean_1992_comuna$comuna <- as.character(ub_mean_1992_comuna$comuna)
setnames(ub_mean_1992_comuna, colnames(ub_mean_1992_comuna), c("comuna","1992"))
ub_mean_1992_comuna$`1992` <- as.numeric(ub_mean_1992_comuna$`1992`)
ub_mean_1992_comuna$`1992` <- round(ub_mean_1992_comuna$`1992`, 0)

# Lower Bound for Gini Household Income by comuna
lb_gini_1992_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1992, FUN = lb_gini)
lb_gini_1992_comuna$comuna <- as.character(lb_gini_1992_comuna$comuna)
setnames(lb_gini_1992_comuna, colnames(lb_gini_1992_comuna), c("comuna","1992"))
lb_gini_1992_comuna$`1992` <- as.numeric(lb_gini_1992_comuna$`1992`)
lb_gini_1992_comuna$`1992` <- round(lb_gini_1992_comuna$`1992`, 3)

# Upper Bound for Gini Household Income by comuna
ub_gini_1992_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1992, FUN = ub_gini)
ub_gini_1992_comuna$comuna <- as.character(ub_gini_1992_comuna$comuna)
setnames(ub_gini_1992_comuna, colnames(ub_gini_1992_comuna), c("comuna","1992"))
ub_gini_1992_comuna$`1992` <- as.numeric(ub_gini_1992_comuna$`1992`)
ub_gini_1992_comuna$`1992` <- round(ub_gini_1992_comuna$`1992`, 3)
