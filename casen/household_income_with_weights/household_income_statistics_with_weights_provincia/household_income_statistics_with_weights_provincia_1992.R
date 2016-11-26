########
# 1992 #
########

# Median Household Income by provincia

weighted_median_1992_provincia <- ddply(household_income_1992, .(provincia), summarise, FUN = matrixStats::weightedMedian(ingreso_pc, w = exp_region, na.rm = TRUE))
weighted_median_1992_provincia$provincia <- as.character(weighted_median_1992_provincia$provincia)
setnames(weighted_median_1992_provincia, colnames(weighted_median_1992_provincia), c("provincia","1992"))
#weighted_median_1992_provincia <- insert_row(weighted_median_1992_provincia, c("Pa\u00eds", weighted_median(household_income_1992$ingreso_pc, na.rm = TRUE)), nrow(weighted_median_1992_provincia)+1)
weighted_median_1992_provincia$`1992` <- as.numeric(weighted_median_1992_provincia$`1992`)
weighted_median_1992_provincia$`1992` <- round(weighted_median_1992_provincia$`1992`, 0)
weighted_median_1992_provincia$`1992` <- as.numeric(weighted_median_1992_provincia$`1992`)
weighted_median_1992_provincia$`1992` <- round(weighted_median_1992_provincia$`1992`, 0)

# Average Household Income by provincia
weighted_mean_1992_provincia <- ddply(household_income_1992, .(provincia), summarise, FUN = matrixStats::weightedMean(ingreso_pc, w = exp_region, na.rm = TRUE))
weighted_mean_1992_provincia$provincia <- as.character(weighted_mean_1992_provincia$provincia)
setnames(weighted_mean_1992_provincia, colnames(weighted_mean_1992_provincia), c("provincia","1992"))
weighted_mean_1992_provincia$`1992` <- as.numeric(weighted_mean_1992_provincia$`1992`)
weighted_mean_1992_provincia$`1992` <- round(weighted_mean_1992_provincia$`1992`, 0)
weighted_mean_1992_provincia$`1992` <- as.numeric(weighted_mean_1992_provincia$`1992`)
weighted_mean_1992_provincia$`1992` <- round(weighted_mean_1992_provincia$`1992`, 0)

# Gini by provincia
weighted_gini_1992_provincia <- ddply(household_income_1992, .(provincia), summarise, FUN = SciencesPo::Gini(ingreso_pc, weights = exp_region, na.rm = TRUE))
weighted_gini_1992_provincia$provincia <- as.character(weighted_gini_1992_provincia$provincia)
setnames(weighted_gini_1992_provincia, colnames(weighted_gini_1992_provincia), c("provincia","1992"))
weighted_gini_1992_provincia$`1992` <- as.numeric(weighted_gini_1992_provincia$`1992`)
weighted_gini_1992_provincia$`1992` <- round(weighted_gini_1992_provincia$`1992`, 3)

# Lower Bound for Median Household Income by provincia
lb_weighted_median_1992_provincia <- ddply(household_income_1992, .(provincia), summarise, FUN = lb_weighted_median_dplyr(ingreso_pc, exp_region))
lb_weighted_median_1992_provincia$provincia <- as.character(lb_weighted_median_1992_provincia$provincia)
setnames(lb_weighted_median_1992_provincia, colnames(lb_weighted_median_1992_provincia), c("provincia","1992"))
lb_weighted_median_1992_provincia$`1992` <- as.numeric(lb_weighted_median_1992_provincia$`1992`)
lb_weighted_median_1992_provincia$`1992` <- round(lb_weighted_median_1992_provincia$`1992`, 0)
lb_weighted_median_1992_provincia$`1992` <- as.numeric(lb_weighted_median_1992_provincia$`1992`)
lb_weighted_median_1992_provincia$`1992` <- round(lb_weighted_median_1992_provincia$`1992`, 0)

# Upper Bound for Median Household Income by provincia
ub_weighted_median_1992_provincia <- ddply(household_income_1992, .(provincia), summarise, FUN = ub_weighted_median_dplyr(ingreso_pc, exp_region))
ub_weighted_median_1992_provincia$provincia <- as.character(ub_weighted_median_1992_provincia$provincia)
setnames(ub_weighted_median_1992_provincia, colnames(ub_weighted_median_1992_provincia), c("provincia","1992"))
ub_weighted_median_1992_provincia$`1992` <- as.numeric(ub_weighted_median_1992_provincia$`1992`)
ub_weighted_median_1992_provincia$`1992` <- round(ub_weighted_median_1992_provincia$`1992`, 0)

# Lower Bound for Mean Household Income by provincia
lb_weighted_mean_1992_provincia <- ddply(household_income_1992, .(provincia), summarise, FUN = lb_weighted_mean_dplyr(ingreso_pc, exp_region))
lb_weighted_mean_1992_provincia$provincia <- as.character(lb_weighted_mean_1992_provincia$provincia)
setnames(lb_weighted_mean_1992_provincia, colnames(lb_weighted_mean_1992_provincia), c("provincia","1992"))
lb_weighted_mean_1992_provincia$`1992` <- as.numeric(lb_weighted_mean_1992_provincia$`1992`)
lb_weighted_mean_1992_provincia$`1992` <- round(lb_weighted_mean_1992_provincia$`1992`, 0)

# Upper Bound for Mean Household Income by provincia
ub_weighted_mean_1992_provincia <- ddply(household_income_1992, .(provincia), summarise, FUN = ub_weighted_mean_dplyr(ingreso_pc, exp_region))
ub_weighted_mean_1992_provincia$provincia <- as.character(ub_weighted_mean_1992_provincia$provincia)
setnames(ub_weighted_mean_1992_provincia, colnames(ub_weighted_mean_1992_provincia), c("provincia","1992"))
ub_weighted_mean_1992_provincia$`1992` <- as.numeric(ub_weighted_mean_1992_provincia$`1992`)
ub_weighted_mean_1992_provincia$`1992` <- round(ub_weighted_mean_1992_provincia$`1992`, 0)

# Lower Bound for Gini Household Income by provincia
lb_weighted_gini_1992_provincia <- ddply(household_income_1992, .(provincia), summarise, FUN = lb_weighted_gini_dplyr(ingreso_pc, exp_region))
lb_weighted_gini_1992_provincia$provincia <- as.character(lb_weighted_gini_1992_provincia$provincia)
setnames(lb_weighted_gini_1992_provincia, colnames(lb_weighted_gini_1992_provincia), c("provincia","1992"))
lb_weighted_gini_1992_provincia$`1992` <- as.numeric(lb_weighted_gini_1992_provincia$`1992`)
lb_weighted_gini_1992_provincia$`1992` <- round(lb_weighted_gini_1992_provincia$`1992`, 3)

# Upper Bound for Gini Household Income by provincia
ub_weighted_gini_1992_provincia <- ddply(household_income_1992, .(provincia), summarise, FUN = ub_weighted_gini_dplyr(ingreso_pc, exp_region))
ub_weighted_gini_1992_provincia$provincia <- as.character(ub_weighted_gini_1992_provincia$provincia)
setnames(ub_weighted_gini_1992_provincia, colnames(ub_weighted_gini_1992_provincia), c("provincia","1992"))
ub_weighted_gini_1992_provincia$`1992` <- as.numeric(ub_weighted_gini_1992_provincia$`1992`)
ub_weighted_gini_1992_provincia$`1992` <- round(ub_weighted_gini_1992_provincia$`1992`, 3)
