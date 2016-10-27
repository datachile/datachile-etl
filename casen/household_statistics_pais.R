##########
# Median #
##########

median_vector_pais <- c(median(household_income_2015$ingreso_pc),
                        median(household_income_2013$ingreso_pc),
                        median(household_income_2011$ingreso_pc),
                        median(household_income_2009$ingreso_pc),
                        median(household_income_2006$ingreso_pc),
                        median(household_income_2003$ingreso_pc),
                        median(household_income_2000$ingreso_pc),
                        median(household_income_1998$ingreso_pc),
                        median(household_income_1996$ingreso_pc),
                        median(household_income_1994$ingreso_pc),
                        median(household_income_1992$ingreso_pc),
                        median(household_income_1990$ingreso_pc))

###########
# Average #
###########

mean_vector_pais <- c(mean(household_income_2015$ingreso_pc),
                      mean(household_income_2013$ingreso_pc),
                      mean(household_income_2011$ingreso_pc),
                      mean(household_income_2009$ingreso_pc),
                      mean(household_income_2006$ingreso_pc),
                      mean(household_income_2003$ingreso_pc),
                      mean(household_income_2000$ingreso_pc),
                      mean(household_income_1998$ingreso_pc),
                      mean(household_income_1996$ingreso_pc),
                      mean(household_income_1994$ingreso_pc),
                      mean(household_income_1992$ingreso_pc),
                      mean(household_income_1990$ingreso_pc))

########
# Gini #
########

gini_vector_pais <- c(Gini(household_income_2015$ingreso_pc),
                      Gini(household_income_2013$ingreso_pc),
                      Gini(household_income_2011$ingreso_pc),
                      Gini(household_income_2009$ingreso_pc),
                      Gini(household_income_2006$ingreso_pc),
                      Gini(household_income_2003$ingreso_pc),
                      Gini(household_income_2000$ingreso_pc),
                      Gini(household_income_1998$ingreso_pc),
                      Gini(household_income_1996$ingreso_pc),
                      Gini(household_income_1994$ingreso_pc),
                      Gini(household_income_1992$ingreso_pc),
                      Gini(household_income_1990$ingreso_pc))
