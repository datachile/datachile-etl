########
# 1998 #
########

# Median Household Income by comuna

weighted_median_1998_comuna <- ddply(household_income_1998, .(comuna), summarise, FUN = matrixStats::weightedMedian(ingreso_pc, w = exp_comuna, na.rm = TRUE))
weighted_median_1998_comuna$comuna <- as.character(weighted_median_1998_comuna$comuna)
setnames(weighted_median_1998_comuna, colnames(weighted_median_1998_comuna), c("comuna","1998"))
#weighted_median_1998_comuna <- insert_row(weighted_median_1998_comuna, c("Pa\u00eds", weighted_median(household_income_1998$ingreso_pc, na.rm = TRUE)), nrow(weighted_median_1998_comuna)+1)
weighted_median_1998_comuna$`1998` <- as.numeric(weighted_median_1998_comuna$`1998`)
weighted_median_1998_comuna$`1998` <- round(weighted_median_1998_comuna$`1998`, 0)
weighted_median_1998_comuna$`1998` <- as.numeric(weighted_median_1998_comuna$`1998`)
weighted_median_1998_comuna$`1998` <- round(weighted_median_1998_comuna$`1998`, 0)

# Average Household Income by comuna
weighted_mean_1998_comuna <- ddply(household_income_1998, .(comuna), summarise, FUN = matrixStats::weightedMean(ingreso_pc, w = exp_comuna, na.rm = TRUE))
weighted_mean_1998_comuna$comuna <- as.character(weighted_mean_1998_comuna$comuna)
setnames(weighted_mean_1998_comuna, colnames(weighted_mean_1998_comuna), c("comuna","1998"))
weighted_mean_1998_comuna$`1998` <- as.numeric(weighted_mean_1998_comuna$`1998`)
weighted_mean_1998_comuna$`1998` <- round(weighted_mean_1998_comuna$`1998`, 0)
weighted_mean_1998_comuna$`1998` <- as.numeric(weighted_mean_1998_comuna$`1998`)
weighted_mean_1998_comuna$`1998` <- round(weighted_mean_1998_comuna$`1998`, 0)

# Gini by comuna
weighted_gini_1998_comuna <- ddply(household_income_1998, .(comuna), summarise, FUN = SciencesPo::Gini(ingreso_pc, weights = exp_comuna, na.rm = TRUE))
weighted_gini_1998_comuna$comuna <- as.character(weighted_gini_1998_comuna$comuna)
setnames(weighted_gini_1998_comuna, colnames(weighted_gini_1998_comuna), c("comuna","1998"))
weighted_gini_1998_comuna$`1998` <- as.numeric(weighted_gini_1998_comuna$`1998`)
weighted_gini_1998_comuna$`1998` <- round(weighted_gini_1998_comuna$`1998`, 3)

# Lower Bound for Median Household Income by comuna
lb_weighted_median_1998_comuna <- ddply(household_income_1998, .(comuna), summarise, FUN = lb_weighted_median_dplyr(ingreso_pc, exp_comuna))
lb_weighted_median_1998_comuna$comuna <- as.character(lb_weighted_median_1998_comuna$comuna)
setnames(lb_weighted_median_1998_comuna, colnames(lb_weighted_median_1998_comuna), c("comuna","1998"))
lb_weighted_median_1998_comuna$`1998` <- as.numeric(lb_weighted_median_1998_comuna$`1998`)
lb_weighted_median_1998_comuna$`1998` <- round(lb_weighted_median_1998_comuna$`1998`, 0)
lb_weighted_median_1998_comuna$`1998` <- as.numeric(lb_weighted_median_1998_comuna$`1998`)
lb_weighted_median_1998_comuna$`1998` <- round(lb_weighted_median_1998_comuna$`1998`, 0)

# Upper Bound for Median Household Income by comuna
ub_weighted_median_1998_comuna <- ddply(household_income_1998, .(comuna), summarise, FUN = ub_weighted_median_dplyr(ingreso_pc, exp_comuna))
ub_weighted_median_1998_comuna$comuna <- as.character(ub_weighted_median_1998_comuna$comuna)
setnames(ub_weighted_median_1998_comuna, colnames(ub_weighted_median_1998_comuna), c("comuna","1998"))
ub_weighted_median_1998_comuna$`1998` <- as.numeric(ub_weighted_median_1998_comuna$`1998`)
ub_weighted_median_1998_comuna$`1998` <- round(ub_weighted_median_1998_comuna$`1998`, 0)

# Lower Bound for Mean Household Income by comuna
lb_weighted_mean_1998_comuna <- ddply(household_income_1998, .(comuna), summarise, FUN = lb_weighted_mean_dplyr(ingreso_pc, exp_comuna))
lb_weighted_mean_1998_comuna$comuna <- as.character(lb_weighted_mean_1998_comuna$comuna)
setnames(lb_weighted_mean_1998_comuna, colnames(lb_weighted_mean_1998_comuna), c("comuna","1998"))
lb_weighted_mean_1998_comuna$`1998` <- as.numeric(lb_weighted_mean_1998_comuna$`1998`)
lb_weighted_mean_1998_comuna$`1998` <- round(lb_weighted_mean_1998_comuna$`1998`, 0)

# Upper Bound for Mean Household Income by comuna
ub_weighted_mean_1998_comuna <- ddply(household_income_1998, .(comuna), summarise, FUN = ub_weighted_mean_dplyr(ingreso_pc, exp_comuna))
ub_weighted_mean_1998_comuna$comuna <- as.character(ub_weighted_mean_1998_comuna$comuna)
setnames(ub_weighted_mean_1998_comuna, colnames(ub_weighted_mean_1998_comuna), c("comuna","1998"))
ub_weighted_mean_1998_comuna$`1998` <- as.numeric(ub_weighted_mean_1998_comuna$`1998`)
ub_weighted_mean_1998_comuna$`1998` <- round(ub_weighted_mean_1998_comuna$`1998`, 0)

# Lower Bound for Gini Household Income by comuna
lb_weighted_gini_1998_comuna <- ddply(household_income_1998, .(comuna), summarise, FUN = lb_weighted_gini_dplyr(ingreso_pc, exp_comuna))
lb_weighted_gini_1998_comuna$comuna <- as.character(lb_weighted_gini_1998_comuna$comuna)
setnames(lb_weighted_gini_1998_comuna, colnames(lb_weighted_gini_1998_comuna), c("comuna","1998"))
lb_weighted_gini_1998_comuna$`1998` <- as.numeric(lb_weighted_gini_1998_comuna$`1998`)
lb_weighted_gini_1998_comuna$`1998` <- round(lb_weighted_gini_1998_comuna$`1998`, 3)

# Upper Bound for Gini Household Income by comuna
ub_weighted_gini_1998_comuna <- ddply(household_income_1998, .(comuna), summarise, FUN = ub_weighted_gini_dplyr(ingreso_pc, exp_comuna))
ub_weighted_gini_1998_comuna$comuna <- as.character(ub_weighted_gini_1998_comuna$comuna)
setnames(ub_weighted_gini_1998_comuna, colnames(ub_weighted_gini_1998_comuna), c("comuna","1998"))
ub_weighted_gini_1998_comuna$`1998` <- as.numeric(ub_weighted_gini_1998_comuna$`1998`)
ub_weighted_gini_1998_comuna$`1998` <- round(ub_weighted_gini_1998_comuna$`1998`, 3)
