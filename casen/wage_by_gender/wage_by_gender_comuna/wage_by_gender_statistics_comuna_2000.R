########
# 2000 #
########

# Median Household Income by comuna
median_2000_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2000, FUN = median, na.rm = TRUE)
median_2000_comuna$comuna <- as.character(median_2000_comuna$comuna)
setnames(median_2000_comuna, colnames(median_2000_comuna), c("comuna","2000"))
median_2000_comuna$`2000` <- as.numeric(median_2000_comuna$`2000`)
median_2000_comuna$`2000` <- round(median_2000_comuna$`2000`, 0)

# Average Household Income by comuna
mean_2000_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2000, FUN = mean, na.rm = TRUE)
mean_2000_comuna$comuna <- as.character(mean_2000_comuna$comuna)
setnames(mean_2000_comuna, colnames(mean_2000_comuna), c("comuna","2000"))
mean_2000_comuna$`2000` <- as.numeric(mean_2000_comuna$`2000`)
mean_2000_comuna$`2000` <- round(mean_2000_comuna$`2000`, 0)

# Gini by comuna
gini_2000_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2000, FUN = Gini, na.rm = TRUE)
gini_2000_comuna$comuna <- as.character(gini_2000_comuna$comuna)
setnames(gini_2000_comuna, colnames(gini_2000_comuna), c("comuna","2000"))
gini_2000_comuna$`2000` <- as.numeric(gini_2000_comuna$`2000`)
gini_2000_comuna$`2000` <- round(gini_2000_comuna$`2000`, 3)

# Lower Bound for Median Household Income by comuna
lb_median_2000_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2000, FUN = lb_median)
lb_median_2000_comuna$comuna <- as.character(lb_median_2000_comuna$comuna)
setnames(lb_median_2000_comuna, colnames(lb_median_2000_comuna), c("comuna","2000"))
lb_median_2000_comuna$`2000` <- as.numeric(lb_median_2000_comuna$`2000`)
lb_median_2000_comuna$`2000` <- round(lb_median_2000_comuna$`2000`, 0)
lb_median_2000_comuna$`2000` <- as.numeric(lb_median_2000_comuna$`2000`)
lb_median_2000_comuna$`2000` <- round(lb_median_2000_comuna$`2000`, 0)

# Upper Bound for Median Household Income by comuna
ub_median_2000_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2000, FUN = ub_median)
ub_median_2000_comuna$comuna <- as.character(ub_median_2000_comuna$comuna)
setnames(ub_median_2000_comuna, colnames(ub_median_2000_comuna), c("comuna","2000"))
ub_median_2000_comuna$`2000` <- as.numeric(ub_median_2000_comuna$`2000`)
ub_median_2000_comuna$`2000` <- round(ub_median_2000_comuna$`2000`, 0)

# Lower Bound for Mean Household Income by comuna
lb_mean_2000_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2000, FUN = lb_mean)
lb_mean_2000_comuna$comuna <- as.character(lb_mean_2000_comuna$comuna)
setnames(lb_mean_2000_comuna, colnames(lb_mean_2000_comuna), c("comuna","2000"))
lb_mean_2000_comuna$`2000` <- as.numeric(lb_mean_2000_comuna$`2000`)
lb_mean_2000_comuna$`2000` <- round(lb_mean_2000_comuna$`2000`, 0)

# Upper Bound for Mean Household Income by comuna
ub_mean_2000_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2000, FUN = ub_mean)
ub_mean_2000_comuna$comuna <- as.character(ub_mean_2000_comuna$comuna)
setnames(ub_mean_2000_comuna, colnames(ub_mean_2000_comuna), c("comuna","2000"))
ub_mean_2000_comuna$`2000` <- as.numeric(ub_mean_2000_comuna$`2000`)
ub_mean_2000_comuna$`2000` <- round(ub_mean_2000_comuna$`2000`, 0)

# Lower Bound for Gini Household Income by comuna
lb_gini_2000_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2000, FUN = lb_gini)
lb_gini_2000_comuna$comuna <- as.character(lb_gini_2000_comuna$comuna)
setnames(lb_gini_2000_comuna, colnames(lb_gini_2000_comuna), c("comuna","2000"))
lb_gini_2000_comuna$`2000` <- as.numeric(lb_gini_2000_comuna$`2000`)
lb_gini_2000_comuna$`2000` <- round(lb_gini_2000_comuna$`2000`, 3)

# Upper Bound for Gini Household Income by comuna
ub_gini_2000_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2000, FUN = ub_gini)
ub_gini_2000_comuna$comuna <- as.character(ub_gini_2000_comuna$comuna)
setnames(ub_gini_2000_comuna, colnames(ub_gini_2000_comuna), c("comuna","2000"))
ub_gini_2000_comuna$`2000` <- as.numeric(ub_gini_2000_comuna$`2000`)
ub_gini_2000_comuna$`2000` <- round(ub_gini_2000_comuna$`2000`, 3)
