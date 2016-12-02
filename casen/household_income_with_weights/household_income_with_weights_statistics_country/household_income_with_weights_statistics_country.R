##########
# Median #
##########

weighted_median_country <- c(matrixStats::weightedMedian(household_income_with_weights_1990$per_capita_income, w = household_income_with_weights_1990$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_with_weights_1992$per_capita_income, w = household_income_with_weights_1992$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_with_weights_1994$per_capita_income, w = household_income_with_weights_1994$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_with_weights_1996$per_capita_income, w = household_income_with_weights_1996$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_with_weights_1998$per_capita_income, w = household_income_with_weights_1998$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_with_weights_2000$per_capita_income, w = household_income_with_weights_2000$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_with_weights_2003$per_capita_income, w = household_income_with_weights_2003$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_with_weights_2006$per_capita_income, w = household_income_with_weights_2006$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_with_weights_2009$per_capita_income, w = household_income_with_weights_2009$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_with_weights_2011$per_capita_income, w = household_income_with_weights_2011$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_with_weights_2013$per_capita_income, w = household_income_with_weights_2013$exp_region, na.rm = TRUE),
                             matrixStats::weightedMedian(household_income_with_weights_2015$per_capita_income, w = household_income_with_weights_2015$exp_region, na.rm = TRUE))
weighted_median_country <- round(weighted_median_country, 0)

###########
# Average #
###########

weighted_mean_country <- c(matrixStats::weightedMean(household_income_with_weights_1990$per_capita_income, household_income_with_weights_1990$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_with_weights_1992$per_capita_income, household_income_with_weights_1992$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_with_weights_1994$per_capita_income, household_income_with_weights_1994$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_with_weights_1996$per_capita_income, household_income_with_weights_1996$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_with_weights_1998$per_capita_income, household_income_with_weights_1998$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_with_weights_2000$per_capita_income, household_income_with_weights_2000$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_with_weights_2003$per_capita_income, household_income_with_weights_2003$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_with_weights_2006$per_capita_income, household_income_with_weights_2006$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_with_weights_2009$per_capita_income, household_income_with_weights_2009$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_with_weights_2011$per_capita_income, household_income_with_weights_2011$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_with_weights_2013$per_capita_income, household_income_with_weights_2013$exp_region, na.rm = TRUE),
                           matrixStats::weightedMean(household_income_with_weights_2015$per_capita_income, household_income_with_weights_2015$exp_region, na.rm = TRUE))
weighted_mean_country <- round(weighted_mean_country, 0)

########
# Gini #
########

weighted_gini_country <- c(SciencesPo::Gini(household_income_with_weights_1990$per_capita_income, weights = household_income_with_weights_1990$exp_region),
                           SciencesPo::Gini(household_income_with_weights_1992$per_capita_income, weights = household_income_with_weights_1992$exp_region),
                           SciencesPo::Gini(household_income_with_weights_1994$per_capita_income, weights = household_income_with_weights_1994$exp_region),
                           SciencesPo::Gini(household_income_with_weights_1996$per_capita_income, weights = household_income_with_weights_1996$exp_region),
                           SciencesPo::Gini(household_income_with_weights_1998$per_capita_income, weights = household_income_with_weights_1998$exp_region),
                           SciencesPo::Gini(household_income_with_weights_2000$per_capita_income, weights = household_income_with_weights_2000$exp_region),
                           SciencesPo::Gini(household_income_with_weights_2003$per_capita_income, weights = household_income_with_weights_2003$exp_region),
                           SciencesPo::Gini(household_income_with_weights_2006$per_capita_income, weights = household_income_with_weights_2006$exp_region),
                           SciencesPo::Gini(household_income_with_weights_2009$per_capita_income, weights = household_income_with_weights_2009$exp_region),
                           SciencesPo::Gini(household_income_with_weights_2011$per_capita_income, weights = household_income_with_weights_2011$exp_region),
                           SciencesPo::Gini(household_income_with_weights_2013$per_capita_income, weights = household_income_with_weights_2013$exp_region),
                           SciencesPo::Gini(household_income_with_weights_2015$per_capita_income, weights = household_income_with_weights_2015$exp_region))
weighted_gini_country <- round(weighted_gini_country, 3)

###########################
# Intervals of confidence #
###########################

##########
# Median #
##########

lb_weighted_median_country <- c(lb_weighted_median_r(household_income_with_weights_1990),
                                lb_weighted_median_r(household_income_with_weights_1992),
                                lb_weighted_median_r(household_income_with_weights_1994),
                                lb_weighted_median_r(household_income_with_weights_1996),
                                lb_weighted_median_r(household_income_with_weights_1998),
                                lb_weighted_median_r(household_income_with_weights_2000),
                                lb_weighted_median_r(household_income_with_weights_2003),
                                lb_weighted_median_r(household_income_with_weights_2006),
                                lb_weighted_median_r(household_income_with_weights_2009),
                                lb_weighted_median_r(household_income_with_weights_2011),
                                lb_weighted_median_r(household_income_with_weights_2013),
                                lb_weighted_median_r(household_income_with_weights_2015))

ub_weighted_median_country <- c(ub_weighted_median_r(household_income_with_weights_1990),
                                ub_weighted_median_r(household_income_with_weights_1992),
                                ub_weighted_median_r(household_income_with_weights_1994),
                                ub_weighted_median_r(household_income_with_weights_1996),
                                ub_weighted_median_r(household_income_with_weights_1998),
                                ub_weighted_median_r(household_income_with_weights_2000),
                                ub_weighted_median_r(household_income_with_weights_2003),
                                ub_weighted_median_r(household_income_with_weights_2006),
                                ub_weighted_median_r(household_income_with_weights_2009),
                                ub_weighted_median_r(household_income_with_weights_2011),
                                ub_weighted_median_r(household_income_with_weights_2013),
                                ub_weighted_median_r(household_income_with_weights_2015))

########
# Mean #
########

lb_weighted_mean_country <- c(lb_weighted_mean_r(household_income_with_weights_1990),
                              lb_weighted_mean_r(household_income_with_weights_1992),
                              lb_weighted_mean_r(household_income_with_weights_1994),
                              lb_weighted_mean_r(household_income_with_weights_1996),
                              lb_weighted_mean_r(household_income_with_weights_1998),
                              lb_weighted_mean_r(household_income_with_weights_2000),
                              lb_weighted_mean_r(household_income_with_weights_2003),
                              lb_weighted_mean_r(household_income_with_weights_2006),
                              lb_weighted_mean_r(household_income_with_weights_2009),
                              lb_weighted_mean_r(household_income_with_weights_2011),
                              lb_weighted_mean_r(household_income_with_weights_2013),
                              lb_weighted_mean_r(household_income_with_weights_2015))

ub_weighted_mean_country <- c(ub_weighted_mean_r(household_income_with_weights_1990),
                              ub_weighted_mean_r(household_income_with_weights_1992),
                              ub_weighted_mean_r(household_income_with_weights_1994),
                              ub_weighted_mean_r(household_income_with_weights_1996),
                              ub_weighted_mean_r(household_income_with_weights_1998),
                              ub_weighted_mean_r(household_income_with_weights_2000),
                              ub_weighted_mean_r(household_income_with_weights_2003),
                              ub_weighted_mean_r(household_income_with_weights_2006),
                              ub_weighted_mean_r(household_income_with_weights_2009),
                              ub_weighted_mean_r(household_income_with_weights_2011),
                              ub_weighted_mean_r(household_income_with_weights_2013),
                              ub_weighted_mean_r(household_income_with_weights_2015))

########
# Gini #
########

lb_weighted_gini_country <- c(lb_weighted_gini_r(household_income_with_weights_1990),
                              lb_weighted_gini_r(household_income_with_weights_1992),
                              lb_weighted_gini_r(household_income_with_weights_1994),
                              lb_weighted_gini_r(household_income_with_weights_1996),
                              lb_weighted_gini_r(household_income_with_weights_1998),
                              lb_weighted_gini_r(household_income_with_weights_2000),
                              lb_weighted_gini_r(household_income_with_weights_2003),
                              lb_weighted_gini_r(household_income_with_weights_2006),
                              lb_weighted_gini_r(household_income_with_weights_2009),
                              lb_weighted_gini_r(household_income_with_weights_2011),
                              lb_weighted_gini_r(household_income_with_weights_2013),
                              lb_weighted_gini_r(household_income_with_weights_2015))

ub_weighted_gini_country <- c(ub_weighted_gini_r(household_income_with_weights_1990),
                              ub_weighted_gini_r(household_income_with_weights_1992),
                              ub_weighted_gini_r(household_income_with_weights_1994),
                              ub_weighted_gini_r(household_income_with_weights_1996),
                              ub_weighted_gini_r(household_income_with_weights_1998),
                              ub_weighted_gini_r(household_income_with_weights_2000),
                              ub_weighted_gini_r(household_income_with_weights_2003),
                              ub_weighted_gini_r(household_income_with_weights_2006),
                              ub_weighted_gini_r(household_income_with_weights_2009),
                              ub_weighted_gini_r(household_income_with_weights_2011),
                              ub_weighted_gini_r(household_income_with_weights_2013),
                              ub_weighted_gini_r(household_income_with_weights_2015))
