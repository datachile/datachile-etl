########
# 2015 #
########

# Median Household Income by comuna
median_2015_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2015, FUN = median, na.rm = TRUE)
median_2015_comuna$comuna <- as.character(median_2015_comuna$comuna)
setnames(median_2015_comuna, colnames(median_2015_comuna), c("comuna","2015"))
median_2015_comuna$`2015` <- as.numeric(median_2015_comuna$`2015`)
median_2015_comuna$`2015` <- round(median_2015_comuna$`2015`, 0)

# Average Household Income by comuna
mean_2015_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2015, FUN = mean, na.rm = TRUE)
mean_2015_comuna$comuna <- as.character(mean_2015_comuna$comuna)
setnames(mean_2015_comuna, colnames(mean_2015_comuna), c("comuna","2015"))
mean_2015_comuna$`2015` <- as.numeric(mean_2015_comuna$`2015`)
mean_2015_comuna$`2015` <- round(mean_2015_comuna$`2015`, 0)

# Gini by comuna
gini_2015_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2015, FUN = Gini, na.rm = TRUE)
gini_2015_comuna$comuna <- as.character(gini_2015_comuna$comuna)
setnames(gini_2015_comuna, colnames(gini_2015_comuna), c("comuna","2015"))
gini_2015_comuna$`2015` <- as.numeric(gini_2015_comuna$`2015`)
gini_2015_comuna$`2015` <- round(gini_2015_comuna$`2015`, 3)

# Lower Bound for Median Household Income by comuna
lb_median_2015_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2015, FUN = lb_median)
lb_median_2015_comuna$comuna <- as.character(lb_median_2015_comuna$comuna)
setnames(lb_median_2015_comuna, colnames(lb_median_2015_comuna), c("comuna","2015"))
lb_median_2015_comuna$`2015` <- as.numeric(lb_median_2015_comuna$`2015`)
lb_median_2015_comuna$`2015` <- round(lb_median_2015_comuna$`2015`, 0)
lb_median_2015_comuna$`2015` <- as.numeric(lb_median_2015_comuna$`2015`)
lb_median_2015_comuna$`2015` <- round(lb_median_2015_comuna$`2015`, 0)

# Upper Bound for Median Household Income by comuna
ub_median_2015_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2015, FUN = ub_median)
ub_median_2015_comuna$comuna <- as.character(ub_median_2015_comuna$comuna)
setnames(ub_median_2015_comuna, colnames(ub_median_2015_comuna), c("comuna","2015"))
ub_median_2015_comuna$`2015` <- as.numeric(ub_median_2015_comuna$`2015`)
ub_median_2015_comuna$`2015` <- round(ub_median_2015_comuna$`2015`, 0)

# Lower Bound for Mean Household Income by comuna
lb_mean_2015_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2015, FUN = lb_mean)
lb_mean_2015_comuna$comuna <- as.character(lb_mean_2015_comuna$comuna)
setnames(lb_mean_2015_comuna, colnames(lb_mean_2015_comuna), c("comuna","2015"))
lb_mean_2015_comuna$`2015` <- as.numeric(lb_mean_2015_comuna$`2015`)
lb_mean_2015_comuna$`2015` <- round(lb_mean_2015_comuna$`2015`, 0)

# Upper Bound for Mean Household Income by comuna
ub_mean_2015_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2015, FUN = ub_mean)
ub_mean_2015_comuna$comuna <- as.character(ub_mean_2015_comuna$comuna)
setnames(ub_mean_2015_comuna, colnames(ub_mean_2015_comuna), c("comuna","2015"))
ub_mean_2015_comuna$`2015` <- as.numeric(ub_mean_2015_comuna$`2015`)
ub_mean_2015_comuna$`2015` <- round(ub_mean_2015_comuna$`2015`, 0)

# Lower Bound for Gini Household Income by comuna
lb_gini_2015_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2015, FUN = lb_gini)
lb_gini_2015_comuna$comuna <- as.character(lb_gini_2015_comuna$comuna)
setnames(lb_gini_2015_comuna, colnames(lb_gini_2015_comuna), c("comuna","2015"))
lb_gini_2015_comuna$`2015` <- as.numeric(lb_gini_2015_comuna$`2015`)
lb_gini_2015_comuna$`2015` <- round(lb_gini_2015_comuna$`2015`, 3)

# Upper Bound for Gini Household Income by comuna
ub_gini_2015_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2015, FUN = ub_gini)
ub_gini_2015_comuna$comuna <- as.character(ub_gini_2015_comuna$comuna)
setnames(ub_gini_2015_comuna, colnames(ub_gini_2015_comuna), c("comuna","2015"))
ub_gini_2015_comuna$`2015` <- as.numeric(ub_gini_2015_comuna$`2015`)
ub_gini_2015_comuna$`2015` <- round(ub_gini_2015_comuna$`2015`, 3)
