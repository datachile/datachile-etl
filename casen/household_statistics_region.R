########
# 2015 #
########

# Median Household Income by region
median_2015_region <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = "median")
median_2015_region$region <- as.character(median_2015_region$region)
setnames(median_2015_region, colnames(median_2015_region), c("region","2015"))
median_2015_region <- insert_row(median_2015_region, c("Pa\u00eds", median(household_income_2015$ingreso_pc)), nrow(median_2015_region)+1)

# Average Household Income by region
mean_2015_region <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = "mean")
mean_2015_region$region <- as.character(mean_2015_region$region)
setnames(mean_2015_region, colnames(mean_2015_region), c("region","2015"))
mean_2015_region <- insert_row(mean_2015_region, c("Pa\u00eds", mean(household_income_2015$ingreso_pc)), nrow(mean_2015_region)+1)

# Gini by region
gini_2015_region <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = "Gini")
gini_2015_region$region <- as.character(gini_2015_region$region)
setnames(gini_2015_region, colnames(gini_2015_region), c("region","2015"))
gini_2015_region <- insert_row(gini_2015_region, c("Pa\u00eds", Gini(household_income_2015$ingreso_pc)), nrow(gini_2015_region)+1)

########
# 2013 #
########

# Median Household Income by region
median_2013_region <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = "median")
median_2013_region$region <- as.character(median_2013_region$region)
setnames(median_2013_region, colnames(median_2013_region), c("region","2013"))
median_2013_region <- insert_row(median_2013_region, c("Pa\u00eds", median(household_income_2013$ingreso_pc)), nrow(median_2013_region)+1)

# Average Household Income by region
mean_2013_region <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = "mean")
mean_2013_region$region <- as.character(mean_2013_region$region)
setnames(mean_2013_region, colnames(mean_2013_region), c("region","2013"))
mean_2013_region <- insert_row(mean_2013_region, c("Pa\u00eds", mean(household_income_2013$ingreso_pc)), nrow(mean_2013_region)+1)

# Gini by region
gini_2013_region <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = "Gini")
gini_2013_region$region <- as.character(gini_2013_region$region)
setnames(gini_2013_region, colnames(gini_2013_region), c("region","2013"))
gini_2013_region <- insert_row(gini_2013_region, c("Pa\u00eds", Gini(household_income_2013$ingreso_pc)), nrow(gini_2013_region)+1)

########
# 2011 #
########

# Median Household Income by region
median_2011_region <- aggregate(ingreso_pc ~ region, data = household_income_2011, FUN = "median")
median_2011_region$region <- as.character(median_2011_region$region)
setnames(median_2011_region, colnames(median_2011_region), c("region","2011"))
median_2011_region <- insert_row(median_2011_region, c("Pa\u00eds", median(household_income_2011$ingreso_pc)), nrow(median_2011_region)+1)

# Average Household Income by region
mean_2011_region <- aggregate(ingreso_pc ~ region, data = household_income_2011, FUN = "mean")
mean_2011_region$region <- as.character(mean_2011_region$region)
setnames(mean_2011_region, colnames(mean_2011_region), c("region","2011"))
mean_2011_region <- insert_row(mean_2011_region, c("Pa\u00eds", mean(household_income_2011$ingreso_pc)), nrow(mean_2011_region)+1)

# Gini by region
gini_2011_region <- aggregate(ingreso_pc ~ region, data = household_income_2011, FUN = "Gini")
gini_2011_region$region <- as.character(gini_2011_region$region)
setnames(gini_2011_region, colnames(gini_2011_region), c("region","2011"))
gini_2011_region <- insert_row(gini_2011_region, c("Pa\u00eds", Gini(household_income_2011$ingreso_pc)), nrow(gini_2011_region)+1)

########
# 2009 #
########

# Median Household Income by region
median_2009_region <- aggregate(ingreso_pc ~ region, data = household_income_2009, FUN = "median")
median_2009_region$region <- as.character(median_2009_region$region)
setnames(median_2009_region, colnames(median_2009_region), c("region","2009"))
median_2009_region <- insert_row(median_2009_region, c("Pa\u00eds", median(household_income_2009$ingreso_pc)), nrow(median_2009_region)+1)

# Average Household Income by region
mean_2009_region <- aggregate(ingreso_pc ~ region, data = household_income_2009, FUN = "mean")
mean_2009_region$region <- as.character(mean_2009_region$region)
setnames(mean_2009_region, colnames(mean_2009_region), c("region","2009"))
mean_2009_region <- insert_row(mean_2009_region, c("Pa\u00eds", mean(household_income_2009$ingreso_pc)), nrow(mean_2009_region)+1)

# Gini by region
gini_2009_region <- aggregate(ingreso_pc ~ region, data = household_income_2009, FUN = "Gini")
gini_2009_region$region <- as.character(gini_2009_region$region)
setnames(gini_2009_region, colnames(gini_2009_region), c("region","2009"))
gini_2009_region <- insert_row(gini_2009_region, c("Pa\u00eds", Gini(household_income_2009$ingreso_pc)), nrow(gini_2009_region)+1)

########
# 2006 #
########

# Median Household Income by region
median_2006_region <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = "median")
median_2006_region$region <- as.character(median_2006_region$region)
setnames(median_2006_region, colnames(median_2006_region), c("region","2006"))
median_2006_region <- insert_row(median_2006_region, c("Pa\u00eds", median(household_income_2006$ingreso_pc)), nrow(median_2006_region)+1)

# Average Household Income by region
mean_2006_region <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = "mean")
mean_2006_region$region <- as.character(mean_2006_region$region)
setnames(mean_2006_region, colnames(mean_2006_region), c("region","2006"))
mean_2006_region <- insert_row(mean_2006_region, c("Pa\u00eds", mean(household_income_2006$ingreso_pc)), nrow(mean_2006_region)+1)

# Gini by region
gini_2006_region <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = "Gini")
gini_2006_region$region <- as.character(gini_2006_region$region)
setnames(gini_2006_region, colnames(gini_2006_region), c("region","2006"))
gini_2006_region <- insert_row(gini_2006_region, c("Pa\u00eds", Gini(household_income_2006$ingreso_pc)), nrow(gini_2006_region)+1)

########
# 2003 #
########

# Median Household Income by region
median_2003_region <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = "median")
median_2003_region$region <- as.character(median_2003_region$region)
setnames(median_2003_region, colnames(median_2003_region), c("region","2003"))
median_2003_region <- insert_row(median_2003_region, c("Pa\u00eds", median(household_income_2003$ingreso_pc)), nrow(median_2003_region)+1)

# Average Household Income by region
mean_2003_region <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = "mean")
mean_2003_region$region <- as.character(mean_2003_region$region)
setnames(mean_2003_region, colnames(mean_2003_region), c("region","2003"))
mean_2003_region <- insert_row(mean_2003_region, c("Pa\u00eds", mean(household_income_2003$ingreso_pc)), nrow(mean_2003_region)+1)

# Gini by region
gini_2003_region <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = "Gini")
gini_2003_region$region <- as.character(gini_2003_region$region)
setnames(gini_2003_region, colnames(gini_2003_region), c("region","2003"))
gini_2003_region <- insert_row(gini_2003_region, c("Pa\u00eds", Gini(household_income_2003$ingreso_pc)), nrow(gini_2003_region)+1)

########
# 2000 #
########

# Median Household Income by region
median_2000_region <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = "median")
median_2000_region$region <- as.character(median_2000_region$region)
setnames(median_2000_region, colnames(median_2000_region), c("region","2000"))
median_2000_region <- insert_row(median_2000_region, c("Pa\u00eds", median(household_income_2000$ingreso_pc)), nrow(median_2000_region)+1)

# Household Average Income by region
mean_2000_region <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = "mean")
mean_2000_region$region <- as.character(mean_2000_region$region)
setnames(mean_2000_region, colnames(mean_2000_region), c("region","2000"))
mean_2000_region <- insert_row(mean_2000_region, c("Pa\u00eds", mean(household_income_2000$ingreso_pc)), nrow(mean_2000_region)+1)

# Gini by region
gini_2000_region <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = "Gini")
gini_2000_region$region <- as.character(gini_2000_region$region)
setnames(gini_2000_region, colnames(gini_2000_region), c("region","2000"))
gini_2000_region <- insert_row(gini_2000_region, c("Pa\u00eds", Gini(household_income_2000$ingreso_pc)), nrow(gini_2000_region)+1)

########
# 1998 #
########

# Median Household Income by region
median_1998_region <- aggregate(ingreso_pc ~ region, data = household_income_1998, FUN = "median")
median_1998_region$region <- as.character(median_1998_region$region)
setnames(median_1998_region, colnames(median_1998_region), c("region","1998"))
median_1998_region <- insert_row(median_1998_region, c("Pa\u00eds", median(household_income_1998$ingreso_pc)), nrow(median_1998_region)+1)

# Household Average Income by region
mean_1998_region <- aggregate(ingreso_pc ~ region, data = household_income_1998, FUN = "mean")
mean_1998_region$region <- as.character(mean_1998_region$region)
setnames(mean_1998_region, colnames(mean_1998_region), c("region","1998"))
mean_1998_region <- insert_row(mean_1998_region, c("Pa\u00eds", mean(household_income_1998$ingreso_pc)), nrow(mean_1998_region)+1)

# Gini by region
gini_1998_region <- aggregate(ingreso_pc ~ region, data = household_income_1998, FUN = "Gini")
gini_1998_region$region <- as.character(gini_1998_region$region)
setnames(gini_1998_region, colnames(gini_1998_region), c("region","1998"))
gini_1998_region <- insert_row(gini_1998_region, c("Pa\u00eds", Gini(household_income_1998$ingreso_pc)), nrow(gini_1998_region)+1)

########
# 1996 #
########

# Median Household Income by region
median_1996_region <- aggregate(ingreso_pc ~ region, data = household_income_1996, FUN = "median")
median_1996_region$region <- as.character(median_1996_region$region)
setnames(median_1996_region, colnames(median_1996_region), c("region","1996"))
median_1996_region <- insert_row(median_1996_region, c("Pa\u00eds", median(household_income_1996$ingreso_pc)), nrow(median_1996_region)+1)

# Household Average Income by region
mean_1996_region <- aggregate(ingreso_pc ~ region, data = household_income_1996, FUN = "mean")
mean_1996_region$region <- as.character(mean_1996_region$region)
setnames(mean_1996_region, colnames(mean_1996_region), c("region","1996"))
mean_1996_region <- insert_row(mean_1996_region, c("Pa\u00eds", mean(household_income_1996$ingreso_pc)), nrow(mean_1996_region)+1)

# Gini by region
gini_1996_region <- aggregate(ingreso_pc ~ region, data = household_income_1996, FUN = "Gini")
gini_1996_region$region <- as.character(gini_1996_region$region)
setnames(gini_1996_region, colnames(gini_1996_region), c("region","1996"))
gini_1996_region <- insert_row(gini_1996_region, c("Pa\u00eds", Gini(household_income_1996$ingreso_pc)), nrow(gini_1996_region)+1)

########
# 1994 #
########

# Median Household Income by region
median_1994_region <- aggregate(ingreso_pc ~ region, data = household_income_1994, FUN = "median")
median_1994_region$region <- as.character(median_1994_region$region)
setnames(median_1994_region, colnames(median_1994_region), c("region","1994"))
median_1994_region <- insert_row(median_1994_region, c("Pa\u00eds", median(household_income_1994$ingreso_pc)), nrow(median_1994_region)+1)

# Household Average Income by region
mean_1994_region <- aggregate(ingreso_pc ~ region, data = household_income_1994, FUN = "mean")
mean_1994_region$region <- as.character(mean_1994_region$region)
setnames(mean_1994_region, colnames(mean_1994_region), c("region","1994"))
mean_1994_region <- insert_row(mean_1994_region, c("Pa\u00eds", mean(household_income_1994$ingreso_pc)), nrow(mean_1994_region)+1)

# Gini by region
gini_1994_region <- aggregate(ingreso_pc ~ region, data = household_income_1994, FUN = "Gini")
gini_1994_region$region <- as.character(gini_1994_region$region)
setnames(gini_1994_region, colnames(gini_1994_region), c("region","1994"))
gini_1994_region <- insert_row(gini_1994_region, c("Pa\u00eds", Gini(household_income_1994$ingreso_pc)), nrow(gini_1994_region)+1)

########
# 1992 #
########

# Median Household Income by region
median_1992_region <- aggregate(ingreso_pc ~ region, data = household_income_1992, FUN = "median")
median_1992_region$region <- as.character(median_1992_region$region)
setnames(median_1992_region, colnames(median_1992_region), c("region","1992"))
median_1992_region <- insert_row(median_1992_region, c("Pa\u00eds", median(household_income_1992$ingreso_pc)), nrow(median_1992_region)+1)

# Household Average Income by region
mean_1992_region <- aggregate(ingreso_pc ~ region, data = household_income_1992, FUN = "mean")
mean_1992_region$region <- as.character(mean_1992_region$region)
setnames(mean_1992_region, colnames(mean_1992_region), c("region","1992"))
mean_1992_region <- insert_row(mean_1992_region, c("Pa\u00eds", mean(household_income_1992$ingreso_pc)), nrow(mean_1992_region)+1)

# Gini by region
gini_1992_region <- aggregate(ingreso_pc ~ region, data = household_income_1992, FUN = "Gini")
gini_1992_region$region <- as.character(gini_1992_region$region)
setnames(gini_1992_region, colnames(gini_1992_region), c("region","1992"))
gini_1992_region <- insert_row(gini_1992_region, c("Pa\u00eds", Gini(household_income_1992$ingreso_pc)), nrow(gini_1992_region)+1)

########
# 1990 #
########

# Median Household Income by region
median_1990_region <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = "median")
median_1990_region$region <- as.character(median_1990_region$region)
setnames(median_1990_region, colnames(median_1990_region), c("region","1990"))
median_1990_region <- insert_row(median_1990_region, c("Pa\u00eds", median(household_income_1990$ingreso_pc)), nrow(median_1990_region)+1)

# Household Average Income by region
mean_1990_region <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = "mean")
mean_1990_region$region <- as.character(mean_1990_region$region)
setnames(mean_1990_region, colnames(mean_1990_region), c("region","1990"))
mean_1990_region <- insert_row(mean_1990_region, c("Pa\u00eds", mean(household_income_1990$ingreso_pc)), nrow(mean_1990_region)+1)

# Gini by region
gini_1990_region <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = "Gini")
gini_1990_region$region <- as.character(gini_1990_region$region)
setnames(gini_1990_region, colnames(gini_1990_region), c("region","1990"))
gini_1990_region <- insert_row(gini_1990_region, c("Pa\u00eds", Gini(household_income_1990$ingreso_pc)), nrow(gini_1990_region)+1)
