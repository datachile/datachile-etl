########
# 2003 #
########

# Median Household Income by comuna
median_2003_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2003, FUN = median, na.rm = TRUE)
median_2003_comuna$comuna <- as.character(median_2003_comuna$comuna)
setnames(median_2003_comuna, colnames(median_2003_comuna), c("comuna","2003"))
median_2003_comuna$`2003` <- as.numeric(median_2003_comuna$`2003`)
median_2003_comuna$`2003` <- round(median_2003_comuna$`2003`, 0)

# Average Household Income by comuna
mean_2003_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2003, FUN = mean, na.rm = TRUE)
mean_2003_comuna$comuna <- as.character(mean_2003_comuna$comuna)
setnames(mean_2003_comuna, colnames(mean_2003_comuna), c("comuna","2003"))
mean_2003_comuna$`2003` <- as.numeric(mean_2003_comuna$`2003`)
mean_2003_comuna$`2003` <- round(mean_2003_comuna$`2003`, 0)

# Gini by comuna
gini_2003_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2003, FUN = Gini, na.rm = TRUE)
gini_2003_comuna$comuna <- as.character(gini_2003_comuna$comuna)
setnames(gini_2003_comuna, colnames(gini_2003_comuna), c("comuna","2003"))
gini_2003_comuna$`2003` <- as.numeric(gini_2003_comuna$`2003`)
gini_2003_comuna$`2003` <- round(gini_2003_comuna$`2003`, 3)

# Lower Bound for Median Household Income by comuna
lb_median_2003_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2003, FUN = lb_median)
lb_median_2003_comuna$comuna <- as.character(lb_median_2003_comuna$comuna)
setnames(lb_median_2003_comuna, colnames(lb_median_2003_comuna), c("comuna","2003"))
lb_median_2003_comuna$`2003` <- as.numeric(lb_median_2003_comuna$`2003`)
lb_median_2003_comuna$`2003` <- round(lb_median_2003_comuna$`2003`, 0)
lb_median_2003_comuna$`2003` <- as.numeric(lb_median_2003_comuna$`2003`)
lb_median_2003_comuna$`2003` <- round(lb_median_2003_comuna$`2003`, 0)

# Upper Bound for Median Household Income by comuna
ub_median_2003_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2003, FUN = ub_median)
ub_median_2003_comuna$comuna <- as.character(ub_median_2003_comuna$comuna)
setnames(ub_median_2003_comuna, colnames(ub_median_2003_comuna), c("comuna","2003"))
ub_median_2003_comuna$`2003` <- as.numeric(ub_median_2003_comuna$`2003`)
ub_median_2003_comuna$`2003` <- round(ub_median_2003_comuna$`2003`, 0)

# Lower Bound for Mean Household Income by comuna
lb_mean_2003_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2003, FUN = lb_mean)
lb_mean_2003_comuna$comuna <- as.character(lb_mean_2003_comuna$comuna)
setnames(lb_mean_2003_comuna, colnames(lb_mean_2003_comuna), c("comuna","2003"))
lb_mean_2003_comuna$`2003` <- as.numeric(lb_mean_2003_comuna$`2003`)
lb_mean_2003_comuna$`2003` <- round(lb_mean_2003_comuna$`2003`, 0)

# Upper Bound for Mean Household Income by comuna
ub_mean_2003_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2003, FUN = ub_mean)
ub_mean_2003_comuna$comuna <- as.character(ub_mean_2003_comuna$comuna)
setnames(ub_mean_2003_comuna, colnames(ub_mean_2003_comuna), c("comuna","2003"))
ub_mean_2003_comuna$`2003` <- as.numeric(ub_mean_2003_comuna$`2003`)
ub_mean_2003_comuna$`2003` <- round(ub_mean_2003_comuna$`2003`, 0)

# Lower Bound for Gini Household Income by comuna
lb_gini_2003_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2003, FUN = lb_gini)
lb_gini_2003_comuna$comuna <- as.character(lb_gini_2003_comuna$comuna)
setnames(lb_gini_2003_comuna, colnames(lb_gini_2003_comuna), c("comuna","2003"))
lb_gini_2003_comuna$`2003` <- as.numeric(lb_gini_2003_comuna$`2003`)
lb_gini_2003_comuna$`2003` <- round(lb_gini_2003_comuna$`2003`, 3)

# Upper Bound for Gini Household Income by comuna
ub_gini_2003_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2003, FUN = ub_gini)
ub_gini_2003_comuna$comuna <- as.character(ub_gini_2003_comuna$comuna)
setnames(ub_gini_2003_comuna, colnames(ub_gini_2003_comuna), c("comuna","2003"))
ub_gini_2003_comuna$`2003` <- as.numeric(ub_gini_2003_comuna$`2003`)
ub_gini_2003_comuna$`2003` <- round(ub_gini_2003_comuna$`2003`, 3)
