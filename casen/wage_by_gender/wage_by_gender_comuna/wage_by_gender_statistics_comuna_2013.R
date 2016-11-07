########
# 2013 #
########

# Median Household Income by comuna
median_2013_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2013, FUN = median, na.rm = TRUE)
median_2013_comuna$comuna <- as.character(median_2013_comuna$comuna)
setnames(median_2013_comuna, colnames(median_2013_comuna), c("comuna","2013"))
median_2013_comuna$`2013` <- as.numeric(median_2013_comuna$`2013`)
median_2013_comuna$`2013` <- round(median_2013_comuna$`2013`, 0)

# Average Household Income by comuna
mean_2013_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2013, FUN = mean, na.rm = TRUE)
mean_2013_comuna$comuna <- as.character(mean_2013_comuna$comuna)
setnames(mean_2013_comuna, colnames(mean_2013_comuna), c("comuna","2013"))
mean_2013_comuna$`2013` <- as.numeric(mean_2013_comuna$`2013`)
mean_2013_comuna$`2013` <- round(mean_2013_comuna$`2013`, 0)

# Gini by comuna
gini_2013_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2013, FUN = Gini, na.rm = TRUE)
gini_2013_comuna$comuna <- as.character(gini_2013_comuna$comuna)
setnames(gini_2013_comuna, colnames(gini_2013_comuna), c("comuna","2013"))
gini_2013_comuna$`2013` <- as.numeric(gini_2013_comuna$`2013`)
gini_2013_comuna$`2013` <- round(gini_2013_comuna$`2013`, 3)

# Lower Bound for Median Household Income by comuna
lb_median_2013_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2013, FUN = lb_median)
lb_median_2013_comuna$comuna <- as.character(lb_median_2013_comuna$comuna)
setnames(lb_median_2013_comuna, colnames(lb_median_2013_comuna), c("comuna","2013"))
lb_median_2013_comuna$`2013` <- as.numeric(lb_median_2013_comuna$`2013`)
lb_median_2013_comuna$`2013` <- round(lb_median_2013_comuna$`2013`, 0)
lb_median_2013_comuna$`2013` <- as.numeric(lb_median_2013_comuna$`2013`)
lb_median_2013_comuna$`2013` <- round(lb_median_2013_comuna$`2013`, 0)

# Upper Bound for Median Household Income by comuna
ub_median_2013_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2013, FUN = ub_median)
ub_median_2013_comuna$comuna <- as.character(ub_median_2013_comuna$comuna)
setnames(ub_median_2013_comuna, colnames(ub_median_2013_comuna), c("comuna","2013"))
ub_median_2013_comuna$`2013` <- as.numeric(ub_median_2013_comuna$`2013`)
ub_median_2013_comuna$`2013` <- round(ub_median_2013_comuna$`2013`, 0)

# Lower Bound for Mean Household Income by comuna
lb_mean_2013_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2013, FUN = lb_mean)
lb_mean_2013_comuna$comuna <- as.character(lb_mean_2013_comuna$comuna)
setnames(lb_mean_2013_comuna, colnames(lb_mean_2013_comuna), c("comuna","2013"))
lb_mean_2013_comuna$`2013` <- as.numeric(lb_mean_2013_comuna$`2013`)
lb_mean_2013_comuna$`2013` <- round(lb_mean_2013_comuna$`2013`, 0)

# Upper Bound for Mean Household Income by comuna
ub_mean_2013_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2013, FUN = ub_mean)
ub_mean_2013_comuna$comuna <- as.character(ub_mean_2013_comuna$comuna)
setnames(ub_mean_2013_comuna, colnames(ub_mean_2013_comuna), c("comuna","2013"))
ub_mean_2013_comuna$`2013` <- as.numeric(ub_mean_2013_comuna$`2013`)
ub_mean_2013_comuna$`2013` <- round(ub_mean_2013_comuna$`2013`, 0)

# Lower Bound for Gini Household Income by comuna
lb_gini_2013_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2013, FUN = lb_gini)
lb_gini_2013_comuna$comuna <- as.character(lb_gini_2013_comuna$comuna)
setnames(lb_gini_2013_comuna, colnames(lb_gini_2013_comuna), c("comuna","2013"))
lb_gini_2013_comuna$`2013` <- as.numeric(lb_gini_2013_comuna$`2013`)
lb_gini_2013_comuna$`2013` <- round(lb_gini_2013_comuna$`2013`, 3)

# Upper Bound for Gini Household Income by comuna
ub_gini_2013_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2013, FUN = ub_gini)
ub_gini_2013_comuna$comuna <- as.character(ub_gini_2013_comuna$comuna)
setnames(ub_gini_2013_comuna, colnames(ub_gini_2013_comuna), c("comuna","2013"))
ub_gini_2013_comuna$`2013` <- as.numeric(ub_gini_2013_comuna$`2013`)
ub_gini_2013_comuna$`2013` <- round(ub_gini_2013_comuna$`2013`, 3)
