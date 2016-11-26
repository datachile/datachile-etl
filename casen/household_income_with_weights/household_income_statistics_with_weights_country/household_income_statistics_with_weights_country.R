##########
# Median #
##########

weighted_median_country <- c(matrixStats::weightedMedian(household_income_1990$ingreso_pc, w = household_income_1990$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_1992$ingreso_pc, w = household_income_1992$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_1994$ingreso_pc, w = household_income_1994$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_1996$ingreso_pc, w = household_income_1996$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_1998$ingreso_pc, w = household_income_1998$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_2000$ingreso_pc, w = household_income_2000$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_2003$ingreso_pc, w = household_income_2003$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_2006$ingreso_pc, w = household_income_2006$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_2009$ingreso_pc, w = household_income_2009$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_2011$ingreso_pc, w = household_income_2011$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_2013$ingreso_pc, w = household_income_2013$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_2015$ingreso_pc, w = household_income_2015$exp_region, na.rm = TRUE))
weighted_median_country <- round(weighted_median_country, 0)

###########
# Average #
###########

weighted_mean_country <- c(matrixStats::weightedMean(household_income_1990$ingreso_pc, household_income_1990$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_1992$ingreso_pc, household_income_1992$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_1994$ingreso_pc, household_income_1994$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_1996$ingreso_pc, household_income_1996$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_1998$ingreso_pc, household_income_1998$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_2000$ingreso_pc, household_income_2000$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_2003$ingreso_pc, household_income_2003$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_2006$ingreso_pc, household_income_2006$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_2009$ingreso_pc, household_income_2009$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_2011$ingreso_pc, household_income_2011$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_2013$ingreso_pc, household_income_2013$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_2015$ingreso_pc, household_income_2015$exp_region, na.rm = TRUE))
weighted_mean_country <- round(weighted_mean_country, 0)

########
# Gini #
########

weighted_gini_country <- c(SciencesPo::Gini(household_income_1990$ingreso_pc, weights = household_income_1990$exp_region),
                           SciencesPo::Gini(household_income_1992$ingreso_pc, weights = household_income_1992$exp_region),
                           SciencesPo::Gini(household_income_1994$ingreso_pc, weights = household_income_1994$exp_region),
                           SciencesPo::Gini(household_income_1996$ingreso_pc, weights = household_income_1996$exp_region),
                           SciencesPo::Gini(household_income_1998$ingreso_pc, weights = household_income_1998$exp_region),
                           SciencesPo::Gini(household_income_2000$ingreso_pc, weights = household_income_2000$exp_region),
                           SciencesPo::Gini(household_income_2003$ingreso_pc, weights = household_income_2003$exp_region),
                           SciencesPo::Gini(household_income_2006$ingreso_pc, weights = household_income_2006$exp_region),
                           SciencesPo::Gini(household_income_2009$ingreso_pc, weights = household_income_2009$exp_region),
                           SciencesPo::Gini(household_income_2011$ingreso_pc, weights = household_income_2011$exp_region),
                           SciencesPo::Gini(household_income_2013$ingreso_pc, weights = household_income_2013$exp_region),
                           SciencesPo::Gini(household_income_2015$ingreso_pc, weights = household_income_2015$exp_region))
weighted_gini_country <- round(weighted_gini_country, 3)

###########################
# Intervals of confidence #
###########################

##########
# Median #
##########

lb_weighted_median_country <- c(lb_weighted_median(household_income_1990),
                                lb_weighted_median(household_income_1992),
                                lb_weighted_median(household_income_1994),
                                lb_weighted_median(household_income_1996),
                                lb_weighted_median(household_income_1998),
                                lb_weighted_median(household_income_2000),
                                lb_weighted_median(household_income_2003),
                                lb_weighted_median(household_income_2006),
                                lb_weighted_median(household_income_2009),
                                lb_weighted_median(household_income_2011),
                                lb_weighted_median(household_income_2013),
                                lb_weighted_median(household_income_2015))

ub_weighted_median_country <- c(ub_weighted_median(household_income_1990),
                                ub_weighted_median(household_income_1992),
                                ub_weighted_median(household_income_1994),
                                ub_weighted_median(household_income_1996),
                                ub_weighted_median(household_income_1998),
                                ub_weighted_median(household_income_2000),
                                ub_weighted_median(household_income_2003),
                                ub_weighted_median(household_income_2006),
                                ub_weighted_median(household_income_2009),
                                ub_weighted_median(household_income_2011),
                                ub_weighted_median(household_income_2013),
                                ub_weighted_median(household_income_2015))

########
# Mean #
########

lb_weighted_mean_country <- c(lb_weighted_mean(household_income_1990),
                              lb_weighted_mean(household_income_1992),
                              lb_weighted_mean(household_income_1994),
                              lb_weighted_mean(household_income_1996),
                              lb_weighted_mean(household_income_1998),
                              lb_weighted_mean(household_income_2000),
                              lb_weighted_mean(household_income_2003),
                              lb_weighted_mean(household_income_2006),
                              lb_weighted_mean(household_income_2009),
                              lb_weighted_mean(household_income_2011),
                              lb_weighted_mean(household_income_2013),
                              lb_weighted_mean(household_income_2015))

ub_weighted_mean_country <- c(ub_weighted_mean(household_income_1990),
                              ub_weighted_mean(household_income_1992),
                              ub_weighted_mean(household_income_1994),
                              ub_weighted_mean(household_income_1996),
                              ub_weighted_mean(household_income_1998),
                              ub_weighted_mean(household_income_2000),
                              ub_weighted_mean(household_income_2003),
                              ub_weighted_mean(household_income_2006),
                              ub_weighted_mean(household_income_2009),
                              ub_weighted_mean(household_income_2011),
                              ub_weighted_mean(household_income_2013),
                              ub_weighted_mean(household_income_2015))

########
# Gini #
########

lb_weighted_gini_country <- c(lb_weighted_gini(household_income_1990),
                              lb_weighted_gini(household_income_1992),
                              lb_weighted_gini(household_income_1994),
                              lb_weighted_gini(household_income_1996),
                              lb_weighted_gini(household_income_1998),
                              lb_weighted_gini(household_income_2000),
                              lb_weighted_gini(household_income_2003),
                              lb_weighted_gini(household_income_2006),
                              lb_weighted_gini(household_income_2009),
                              lb_weighted_gini(household_income_2011),
                              lb_weighted_gini(household_income_2013),
                              lb_weighted_gini(household_income_2015))

ub_weighted_gini_country <- c(ub_weighted_gini(household_income_1990),
                              ub_weighted_gini(household_income_1992),
                              ub_weighted_gini(household_income_1994),
                              ub_weighted_gini(household_income_1996),
                              ub_weighted_gini(household_income_1998),
                              ub_weighted_gini(household_income_2000),
                              ub_weighted_gini(household_income_2003),
                              ub_weighted_gini(household_income_2006),
                              ub_weighted_gini(household_income_2009),
                              ub_weighted_gini(household_income_2011),
                              ub_weighted_gini(household_income_2013),
                              ub_weighted_gini(household_income_2015))
