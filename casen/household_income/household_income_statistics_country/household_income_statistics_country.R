##########
# Median #
##########

median_country <- c(median(household_income_1990$ingreso_pc, na.rm = TRUE),
                    median(household_income_1992$ingreso_pc, na.rm = TRUE),
                    median(household_income_1994$ingreso_pc, na.rm = TRUE),
                    median(household_income_1996$ingreso_pc, na.rm = TRUE),
                    median(household_income_1998$ingreso_pc, na.rm = TRUE),
                    median(household_income_2000$ingreso_pc, na.rm = TRUE),
                    median(household_income_2003$ingreso_pc, na.rm = TRUE),
                    median(household_income_2006$ingreso_pc, na.rm = TRUE),
                    median(household_income_2009$ingreso_pc, na.rm = TRUE),
                    median(household_income_2011$ingreso_pc, na.rm = TRUE),
                    median(household_income_2013$ingreso_pc, na.rm = TRUE),
                    median(household_income_2015$ingreso_pc, na.rm = TRUE))
median_country <- round(median_country, 0)

###########
# Average #
###########

mean_country <- c(mean(household_income_1990$ingreso_pc, na.rm = TRUE),
                  mean(household_income_1992$ingreso_pc, na.rm = TRUE),
                  mean(household_income_1994$ingreso_pc, na.rm = TRUE),
                  mean(household_income_1996$ingreso_pc, na.rm = TRUE),
                  mean(household_income_1998$ingreso_pc, na.rm = TRUE),
                  mean(household_income_2000$ingreso_pc, na.rm = TRUE),
                  mean(household_income_2003$ingreso_pc, na.rm = TRUE),
                  mean(household_income_2006$ingreso_pc, na.rm = TRUE),
                  mean(household_income_2009$ingreso_pc, na.rm = TRUE),
                  mean(household_income_2011$ingreso_pc, na.rm = TRUE),
                  mean(household_income_2013$ingreso_pc, na.rm = TRUE),
                  mean(household_income_2015$ingreso_pc, na.rm = TRUE))
mean_country <- round(mean_country, 0)

########
# Gini #
########

gini_country <- c(Gini(household_income_1990$ingreso_pc),
                  Gini(household_income_1992$ingreso_pc),
                  Gini(household_income_1994$ingreso_pc),
                  Gini(household_income_1996$ingreso_pc),
                  Gini(household_income_1998$ingreso_pc),
                  Gini(household_income_2000$ingreso_pc),
                  Gini(household_income_2003$ingreso_pc),
                  Gini(household_income_2006$ingreso_pc),
                  Gini(household_income_2009$ingreso_pc),
                  Gini(household_income_2011$ingreso_pc),
                  Gini(household_income_2013$ingreso_pc),
                  Gini(household_income_2015$ingreso_pc))
gini_country <- round(gini_country, 3)

###########################
# Intervals of confidence #
###########################

##########
# Median #
##########

lb_median_country <- c(lb_median(household_income_1990$ingreso_pc),
                       lb_median(household_income_1992$ingreso_pc),
                       lb_median(household_income_1994$ingreso_pc),
                       lb_median(household_income_1996$ingreso_pc),
                       lb_median(household_income_1998$ingreso_pc),
                       lb_median(household_income_2000$ingreso_pc),
                       lb_median(household_income_2003$ingreso_pc),
                       lb_median(household_income_2006$ingreso_pc),
                       lb_median(household_income_2009$ingreso_pc),
                       lb_median(household_income_2011$ingreso_pc),
                       lb_median(household_income_2013$ingreso_pc),
                       lb_median(household_income_2015$ingreso_pc))

ub_median_country <- c(ub_median(household_income_1990$ingreso_pc),
                       ub_median(household_income_1992$ingreso_pc),
                       ub_median(household_income_1994$ingreso_pc),
                       ub_median(household_income_1996$ingreso_pc),
                       ub_median(household_income_1998$ingreso_pc),
                       ub_median(household_income_2000$ingreso_pc),
                       ub_median(household_income_2003$ingreso_pc),
                       ub_median(household_income_2006$ingreso_pc),
                       ub_median(household_income_2009$ingreso_pc),
                       ub_median(household_income_2011$ingreso_pc),
                       ub_median(household_income_2013$ingreso_pc),
                       ub_median(household_income_2015$ingreso_pc))

########
# Mean #
########

lb_mean_country <- c(lb_mean(household_income_1990$ingreso_pc),
                     lb_mean(household_income_1992$ingreso_pc),
                     lb_mean(household_income_1994$ingreso_pc),
                     lb_mean(household_income_1996$ingreso_pc),
                     lb_mean(household_income_1998$ingreso_pc),
                     lb_mean(household_income_2000$ingreso_pc),
                     lb_mean(household_income_2003$ingreso_pc),
                     lb_mean(household_income_2006$ingreso_pc),
                     lb_mean(household_income_2009$ingreso_pc),
                     lb_mean(household_income_2011$ingreso_pc),
                     lb_mean(household_income_2013$ingreso_pc),
                     lb_mean(household_income_2015$ingreso_pc))

ub_mean_country <- c(ub_mean(household_income_1990$ingreso_pc),
                     ub_mean(household_income_1992$ingreso_pc),
                     ub_mean(household_income_1994$ingreso_pc),
                     ub_mean(household_income_1996$ingreso_pc),
                     ub_mean(household_income_1998$ingreso_pc),
                     ub_mean(household_income_2000$ingreso_pc),
                     ub_mean(household_income_2003$ingreso_pc),
                     ub_mean(household_income_2006$ingreso_pc),
                     ub_mean(household_income_2009$ingreso_pc),
                     ub_mean(household_income_2011$ingreso_pc),
                     ub_mean(household_income_2013$ingreso_pc),
                     ub_mean(household_income_2015$ingreso_pc))

########
# Gini #
########

lb_gini_country <- c(lb_gini(household_income_1990$ingreso_pc),
                     lb_gini(household_income_1992$ingreso_pc),
                     lb_gini(household_income_1994$ingreso_pc),
                     lb_gini(household_income_1996$ingreso_pc),
                     lb_gini(household_income_1998$ingreso_pc),
                     lb_gini(household_income_2000$ingreso_pc),
                     lb_gini(household_income_2003$ingreso_pc),
                     lb_gini(household_income_2006$ingreso_pc),
                     lb_gini(household_income_2009$ingreso_pc),
                     lb_gini(household_income_2011$ingreso_pc),
                     lb_gini(household_income_2013$ingreso_pc),
                     lb_gini(household_income_2015$ingreso_pc))

ub_gini_country <- c(ub_gini(household_income_1990$ingreso_pc),
                     ub_gini(household_income_1992$ingreso_pc),
                     ub_gini(household_income_1994$ingreso_pc),
                     ub_gini(household_income_1996$ingreso_pc),
                     ub_gini(household_income_1998$ingreso_pc),
                     ub_gini(household_income_2000$ingreso_pc),
                     ub_gini(household_income_2003$ingreso_pc),
                     ub_gini(household_income_2006$ingreso_pc),
                     ub_gini(household_income_2009$ingreso_pc),
                     ub_gini(household_income_2011$ingreso_pc),
                     ub_gini(household_income_2013$ingreso_pc),
                     ub_gini(household_income_2015$ingreso_pc))
