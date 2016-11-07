##########
# Median #
##########

median_country <- c(median(wage_by_gender_1990$ingreso_ocup_principal, na.rm = TRUE),
                        median(wage_by_gender_1992$ingreso_ocup_principal, na.rm = TRUE),
                        median(wage_by_gender_1994$ingreso_ocup_principal, na.rm = TRUE),
                        median(wage_by_gender_1996$ingreso_ocup_principal, na.rm = TRUE),
                        median(wage_by_gender_1998$ingreso_ocup_principal, na.rm = TRUE),
                        median(wage_by_gender_2000$ingreso_ocup_principal, na.rm = TRUE),
                        median(wage_by_gender_2003$ingreso_ocup_principal, na.rm = TRUE),
                        median(wage_by_gender_2006$ingreso_ocup_principal, na.rm = TRUE),
                        median(wage_by_gender_2009$ingreso_ocup_principal, na.rm = TRUE),
                        median(wage_by_gender_2011$ingreso_ocup_principal, na.rm = TRUE),
                        median(wage_by_gender_2013$ingreso_ocup_principal, na.rm = TRUE),
                        median(wage_by_gender_2013$ingreso_ocup_principal, na.rm = TRUE))
median_country <- round(median_country, 0)

###########
# Average #
###########

mean_country <- c(mean(wage_by_gender_1990$ingreso_ocup_principal, na.rm = TRUE),
                      mean(wage_by_gender_1992$ingreso_ocup_principal, na.rm = TRUE),
                      mean(wage_by_gender_1994$ingreso_ocup_principal, na.rm = TRUE),
                      mean(wage_by_gender_1996$ingreso_ocup_principal, na.rm = TRUE),
                      mean(wage_by_gender_1998$ingreso_ocup_principal, na.rm = TRUE),
                      mean(wage_by_gender_2000$ingreso_ocup_principal, na.rm = TRUE),
                      mean(wage_by_gender_2003$ingreso_ocup_principal, na.rm = TRUE),
                      mean(wage_by_gender_2006$ingreso_ocup_principal, na.rm = TRUE),
                      mean(wage_by_gender_2009$ingreso_ocup_principal, na.rm = TRUE),
                      mean(wage_by_gender_2011$ingreso_ocup_principal, na.rm = TRUE),
                      mean(wage_by_gender_2013$ingreso_ocup_principal, na.rm = TRUE),
                      mean(wage_by_gender_2015$ingreso_ocup_principal, na.rm = TRUE))
mean_country <- round(mean_country, 0)

###########################
# Intervals of confidence #
###########################

##########
# Median #
##########

lb_median_country <- c(lb_median(wage_by_gender_1990$ingreso_ocup_principal),
                       lb_median(wage_by_gender_1992$ingreso_ocup_principal),
                       lb_median(wage_by_gender_1994$ingreso_ocup_principal),
                       lb_median(wage_by_gender_1996$ingreso_ocup_principal),
                       lb_median(wage_by_gender_1998$ingreso_ocup_principal),
                       lb_median(wage_by_gender_2000$ingreso_ocup_principal),
                       lb_median(wage_by_gender_2003$ingreso_ocup_principal),
                       lb_median(wage_by_gender_2006$ingreso_ocup_principal),
                       lb_median(wage_by_gender_2009$ingreso_ocup_principal),
                       lb_median(wage_by_gender_2011$ingreso_ocup_principal),
                       lb_median(wage_by_gender_2013$ingreso_ocup_principal),
                       lb_median(wage_by_gender_2015$ingreso_ocup_principal))

ub_median_country <- c(ub_median(wage_by_gender_1990$ingreso_ocup_principal),
                       ub_median(wage_by_gender_1992$ingreso_ocup_principal),
                       ub_median(wage_by_gender_1994$ingreso_ocup_principal),
                       ub_median(wage_by_gender_1996$ingreso_ocup_principal),
                       ub_median(wage_by_gender_1998$ingreso_ocup_principal),
                       ub_median(wage_by_gender_2000$ingreso_ocup_principal),
                       ub_median(wage_by_gender_2003$ingreso_ocup_principal),
                       ub_median(wage_by_gender_2006$ingreso_ocup_principal),
                       ub_median(wage_by_gender_2009$ingreso_ocup_principal),
                       ub_median(wage_by_gender_2011$ingreso_ocup_principal),
                       ub_median(wage_by_gender_2013$ingreso_ocup_principal),
                       ub_median(wage_by_gender_2015$ingreso_ocup_principal))

########
# Mean #
########

lb_mean_country <- c(lb_mean(wage_by_gender_1990$ingreso_ocup_principal),
                     lb_mean(wage_by_gender_1992$ingreso_ocup_principal),
                     lb_mean(wage_by_gender_1994$ingreso_ocup_principal),
                     lb_mean(wage_by_gender_1996$ingreso_ocup_principal),
                     lb_mean(wage_by_gender_1998$ingreso_ocup_principal),
                     lb_mean(wage_by_gender_2000$ingreso_ocup_principal),
                     lb_mean(wage_by_gender_2003$ingreso_ocup_principal),
                     lb_mean(wage_by_gender_2006$ingreso_ocup_principal),
                     lb_mean(wage_by_gender_2009$ingreso_ocup_principal),
                     lb_mean(wage_by_gender_2011$ingreso_ocup_principal),
                     lb_mean(wage_by_gender_2013$ingreso_ocup_principal),
                     lb_mean(wage_by_gender_2015$ingreso_ocup_principal))

ub_mean_country <- c(ub_mean(wage_by_gender_1990$ingreso_ocup_principal),
                     ub_mean(wage_by_gender_1992$ingreso_ocup_principal),
                     ub_mean(wage_by_gender_1994$ingreso_ocup_principal),
                     ub_mean(wage_by_gender_1996$ingreso_ocup_principal),
                     ub_mean(wage_by_gender_1998$ingreso_ocup_principal),
                     ub_mean(wage_by_gender_2000$ingreso_ocup_principal),
                     ub_mean(wage_by_gender_2003$ingreso_ocup_principal),
                     ub_mean(wage_by_gender_2006$ingreso_ocup_principal),
                     ub_mean(wage_by_gender_2009$ingreso_ocup_principal),
                     ub_mean(wage_by_gender_2011$ingreso_ocup_principal),
                     ub_mean(wage_by_gender_2013$ingreso_ocup_principal),
                     ub_mean(wage_by_gender_2015$ingreso_ocup_principal))
