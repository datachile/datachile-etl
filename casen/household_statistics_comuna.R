########
# 2015 #
########

# Median Household Income by comuna
median_2015_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2015, FUN = "median")
median_2015_comuna$comuna <- as.character(median_2015_comuna$comuna)
setnames(median_2015_comuna, colnames(median_2015_comuna), c("comuna","2015"))
median_2015_comuna <- insert_row(median_2015_comuna, c("Pa\u00eds", median(household_income_2015$ingreso_pc)), nrow(median_2015_comuna)+1)

# Average Household Income by comuna
mean_2015_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2015, FUN = "mean")
mean_2015_comuna$comuna <- as.character(mean_2015_comuna$comuna)
setnames(mean_2015_comuna, colnames(mean_2015_comuna), c("comuna","2015"))
mean_2015_comuna <- insert_row(mean_2015_comuna, c("Pa\u00eds", mean(household_income_2015$ingreso_pc)), nrow(mean_2015_comuna)+1)

# Gini by comuna
gini_2015_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2015, FUN = "Gini")
gini_2015_comuna$comuna <- as.character(gini_2015_comuna$comuna)
setnames(gini_2015_comuna, colnames(gini_2015_comuna), c("comuna","2015"))
gini_2015_comuna <- insert_row(gini_2015_comuna, c("Pa\u00eds", Gini(household_income_2015$ingreso_pc)), nrow(gini_2015_comuna)+1)

########
# 2013 #
########

# Median Household Income by comuna
median_2013_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2013, FUN = "median")
median_2013_comuna$comuna <- as.character(median_2013_comuna$comuna)
setnames(median_2013_comuna, colnames(median_2013_comuna), c("comuna","2013"))
median_2013_comuna <- insert_row(median_2013_comuna, c("Pa\u00eds", median(household_income_2013$ingreso_pc)), nrow(median_2013_comuna)+1)

# Average Household Income by comuna
mean_2013_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2013, FUN = "mean")
mean_2013_comuna$comuna <- as.character(mean_2013_comuna$comuna)
setnames(mean_2013_comuna, colnames(mean_2013_comuna), c("comuna","2013"))
mean_2013_comuna <- insert_row(mean_2013_comuna, c("Pa\u00eds", mean(household_income_2013$ingreso_pc)), nrow(mean_2013_comuna)+1)

# Gini by comuna
gini_2013_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2013, FUN = "Gini")
gini_2013_comuna$comuna <- as.character(gini_2013_comuna$comuna)
setnames(gini_2013_comuna, colnames(gini_2013_comuna), c("comuna","2013"))
gini_2013_comuna <- insert_row(gini_2013_comuna, c("Pa\u00eds", Gini(household_income_2013$ingreso_pc)), nrow(gini_2013_comuna)+1)

########
# 2011 #
########

# Median Household Income by comuna
median_2011_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2011, FUN = "median")
median_2011_comuna$comuna <- as.character(median_2011_comuna$comuna)
setnames(median_2011_comuna, colnames(median_2011_comuna), c("comuna","2011"))
median_2011_comuna <- insert_row(median_2011_comuna, c("Pa\u00eds", median(household_income_2011$ingreso_pc)), nrow(median_2011_comuna)+1)

# Average Household Income by comuna
mean_2011_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2011, FUN = "mean")
mean_2011_comuna$comuna <- as.character(mean_2011_comuna$comuna)
setnames(mean_2011_comuna, colnames(mean_2011_comuna), c("comuna","2011"))
mean_2011_comuna <- insert_row(mean_2011_comuna, c("Pa\u00eds", mean(household_income_2011$ingreso_pc)), nrow(mean_2011_comuna)+1)

# Gini by comuna
gini_2011_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2011, FUN = "Gini")
gini_2011_comuna$comuna <- as.character(gini_2011_comuna$comuna)
setnames(gini_2011_comuna, colnames(gini_2011_comuna), c("comuna","2011"))
gini_2011_comuna <- insert_row(gini_2011_comuna, c("Pa\u00eds", Gini(household_income_2011$ingreso_pc)), nrow(gini_2011_comuna)+1)

########
# 2009 #
########

# Median Household Income by comuna
median_2009_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2009, FUN = "median")
median_2009_comuna$comuna <- as.character(median_2009_comuna$comuna)
setnames(median_2009_comuna, colnames(median_2009_comuna), c("comuna","2009"))
median_2009_comuna <- insert_row(median_2009_comuna, c("Pa\u00eds", median(household_income_2009$ingreso_pc)), nrow(median_2009_comuna)+1)

# Average Household Income by comuna
mean_2009_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2009, FUN = "mean")
mean_2009_comuna$comuna <- as.character(mean_2009_comuna$comuna)
setnames(mean_2009_comuna, colnames(mean_2009_comuna), c("comuna","2009"))
mean_2009_comuna <- insert_row(mean_2009_comuna, c("Pa\u00eds", mean(household_income_2009$ingreso_pc)), nrow(mean_2009_comuna)+1)

# Gini by comuna
gini_2009_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2009, FUN = "Gini")
gini_2009_comuna$comuna <- as.character(gini_2009_comuna$comuna)
setnames(gini_2009_comuna, colnames(gini_2009_comuna), c("comuna","2009"))
gini_2009_comuna <- insert_row(gini_2009_comuna, c("Pa\u00eds", Gini(household_income_2009$ingreso_pc)), nrow(gini_2009_comuna)+1)

########
# 2006 #
########

# Median Household Income by comuna
median_2006_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2006, FUN = "median")
median_2006_comuna$comuna <- as.character(median_2006_comuna$comuna)
setnames(median_2006_comuna, colnames(median_2006_comuna), c("comuna","2006"))
median_2006_comuna <- insert_row(median_2006_comuna, c("Pa\u00eds", median(household_income_2006$ingreso_pc)), nrow(median_2006_comuna)+1)

# Average Household Income by comuna
mean_2006_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2006, FUN = "mean")
mean_2006_comuna$comuna <- as.character(mean_2006_comuna$comuna)
setnames(mean_2006_comuna, colnames(mean_2006_comuna), c("comuna","2006"))
mean_2006_comuna <- insert_row(mean_2006_comuna, c("Pa\u00eds", mean(household_income_2006$ingreso_pc)), nrow(mean_2006_comuna)+1)

# Gini by comuna
gini_2006_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2006, FUN = "Gini")
gini_2006_comuna$comuna <- as.character(gini_2006_comuna$comuna)
setnames(gini_2006_comuna, colnames(gini_2006_comuna), c("comuna","2006"))
gini_2006_comuna <- insert_row(gini_2006_comuna, c("Pa\u00eds", Gini(household_income_2006$ingreso_pc)), nrow(gini_2006_comuna)+1)

########
# 2003 #
########

# Median Household Income by comuna
median_2003_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2003, FUN = "median")
median_2003_comuna$comuna <- as.character(median_2003_comuna$comuna)
setnames(median_2003_comuna, colnames(median_2003_comuna), c("comuna","2003"))
median_2003_comuna <- insert_row(median_2003_comuna, c("Pa\u00eds", median(household_income_2003$ingreso_pc)), nrow(median_2003_comuna)+1)

# Average Household Income by comuna
mean_2003_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2003, FUN = "mean")
mean_2003_comuna$comuna <- as.character(mean_2003_comuna$comuna)
setnames(mean_2003_comuna, colnames(mean_2003_comuna), c("comuna","2003"))
mean_2003_comuna <- insert_row(mean_2003_comuna, c("Pa\u00eds", mean(household_income_2003$ingreso_pc)), nrow(mean_2003_comuna)+1)

# Gini by comuna
gini_2003_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2003, FUN = "Gini")
gini_2003_comuna$comuna <- as.character(gini_2003_comuna$comuna)
setnames(gini_2003_comuna, colnames(gini_2003_comuna), c("comuna","2003"))
gini_2003_comuna <- insert_row(gini_2003_comuna, c("Pa\u00eds", Gini(household_income_2003$ingreso_pc)), nrow(gini_2003_comuna)+1)

########
# 2000 #
########

# Median Household Income by comuna
median_2000_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2000, FUN = "median")
median_2000_comuna$comuna <- as.character(median_2000_comuna$comuna)
setnames(median_2000_comuna, colnames(median_2000_comuna), c("comuna","2000"))
median_2000_comuna <- insert_row(median_2000_comuna, c("Pa\u00eds", median(household_income_2000$ingreso_pc)), nrow(median_2000_comuna)+1)

# Household Average Income by comuna
mean_2000_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2000, FUN = "mean")
mean_2000_comuna$comuna <- as.character(mean_2000_comuna$comuna)
setnames(mean_2000_comuna, colnames(mean_2000_comuna), c("comuna","2000"))
mean_2000_comuna <- insert_row(mean_2000_comuna, c("Pa\u00eds", mean(household_income_2000$ingreso_pc)), nrow(mean_2000_comuna)+1)

# Gini by comuna
gini_2000_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_2000, FUN = "Gini")
gini_2000_comuna$comuna <- as.character(gini_2000_comuna$comuna)
setnames(gini_2000_comuna, colnames(gini_2000_comuna), c("comuna","2000"))
gini_2000_comuna <- insert_row(gini_2000_comuna, c("Pa\u00eds", Gini(household_income_2000$ingreso_pc)), nrow(gini_2000_comuna)+1)

########
# 1998 #
########

# Median Household Income by comuna
median_1998_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1998, FUN = "median")
median_1998_comuna$comuna <- as.character(median_1998_comuna$comuna)
setnames(median_1998_comuna, colnames(median_1998_comuna), c("comuna","1998"))
median_1998_comuna <- insert_row(median_1998_comuna, c("Pa\u00eds", median(household_income_1998$ingreso_pc)), nrow(median_1998_comuna)+1)

# Household Average Income by comuna
mean_1998_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1998, FUN = "mean")
mean_1998_comuna$comuna <- as.character(mean_1998_comuna$comuna)
setnames(mean_1998_comuna, colnames(mean_1998_comuna), c("comuna","1998"))
mean_1998_comuna <- insert_row(mean_1998_comuna, c("Pa\u00eds", mean(household_income_1998$ingreso_pc)), nrow(mean_1998_comuna)+1)

# Gini by comuna
gini_1998_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1998, FUN = "Gini")
gini_1998_comuna$comuna <- as.character(gini_1998_comuna$comuna)
setnames(gini_1998_comuna, colnames(gini_1998_comuna), c("comuna","1998"))
gini_1998_comuna <- insert_row(gini_1998_comuna, c("Pa\u00eds", Gini(household_income_1998$ingreso_pc)), nrow(gini_1998_comuna)+1)

########
# 1996 #
########

# Median Household Income by comuna
median_1996_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1996, FUN = "median")
median_1996_comuna$comuna <- as.character(median_1996_comuna$comuna)
setnames(median_1996_comuna, colnames(median_1996_comuna), c("comuna","1996"))
median_1996_comuna <- insert_row(median_1996_comuna, c("Pa\u00eds", median(household_income_1996$ingreso_pc)), nrow(median_1996_comuna)+1)

# Household Average Income by comuna
mean_1996_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1996, FUN = "mean")
mean_1996_comuna$comuna <- as.character(mean_1996_comuna$comuna)
setnames(mean_1996_comuna, colnames(mean_1996_comuna), c("comuna","1996"))
mean_1996_comuna <- insert_row(mean_1996_comuna, c("Pa\u00eds", mean(household_income_1996$ingreso_pc)), nrow(mean_1996_comuna)+1)

# Gini by comuna
gini_1996_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1996, FUN = "Gini")
gini_1996_comuna$comuna <- as.character(gini_1996_comuna$comuna)
setnames(gini_1996_comuna, colnames(gini_1996_comuna), c("comuna","1996"))
gini_1996_comuna <- insert_row(gini_1996_comuna, c("Pa\u00eds", Gini(household_income_1996$ingreso_pc)), nrow(gini_1996_comuna)+1)

########
# 1994 #
########

# Median Household Income by comuna
median_1994_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1994, FUN = "median")
median_1994_comuna$comuna <- as.character(median_1994_comuna$comuna)
setnames(median_1994_comuna, colnames(median_1994_comuna), c("comuna","1994"))
median_1994_comuna <- insert_row(median_1994_comuna, c("Pa\u00eds", median(household_income_1994$ingreso_pc)), nrow(median_1994_comuna)+1)

# Household Average Income by comuna
mean_1994_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1994, FUN = "mean")
mean_1994_comuna$comuna <- as.character(mean_1994_comuna$comuna)
setnames(mean_1994_comuna, colnames(mean_1994_comuna), c("comuna","1994"))
mean_1994_comuna <- insert_row(mean_1994_comuna, c("Pa\u00eds", mean(household_income_1994$ingreso_pc)), nrow(mean_1994_comuna)+1)

# Gini by comuna
gini_1994_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1994, FUN = "Gini")
gini_1994_comuna$comuna <- as.character(gini_1994_comuna$comuna)
setnames(gini_1994_comuna, colnames(gini_1994_comuna), c("comuna","1994"))
gini_1994_comuna <- insert_row(gini_1994_comuna, c("Pa\u00eds", Gini(household_income_1994$ingreso_pc)), nrow(gini_1994_comuna)+1)

########
# 1992 #
########

# Median Household Income by comuna
median_1992_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1992, FUN = "median")
median_1992_comuna$comuna <- as.character(median_1992_comuna$comuna)
setnames(median_1992_comuna, colnames(median_1992_comuna), c("comuna","1992"))
median_1992_comuna <- insert_row(median_1992_comuna, c("Pa\u00eds", median(household_income_1992$ingreso_pc)), nrow(median_1992_comuna)+1)

# Household Average Income by comuna
mean_1992_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1992, FUN = "mean")
mean_1992_comuna$comuna <- as.character(mean_1992_comuna$comuna)
setnames(mean_1992_comuna, colnames(mean_1992_comuna), c("comuna","1992"))
mean_1992_comuna <- insert_row(mean_1992_comuna, c("Pa\u00eds", mean(household_income_1992$ingreso_pc)), nrow(mean_1992_comuna)+1)

# Gini by comuna
gini_1992_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1992, FUN = "Gini")
gini_1992_comuna$comuna <- as.character(gini_1992_comuna$comuna)
setnames(gini_1992_comuna, colnames(gini_1992_comuna), c("comuna","1992"))
gini_1992_comuna <- insert_row(gini_1992_comuna, c("Pa\u00eds", Gini(household_income_1992$ingreso_pc)), nrow(gini_1992_comuna)+1)

########
# 1990 #
########

# Median Household Income by comuna
median_1990_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1990, FUN = "median")
median_1990_comuna$comuna <- as.character(median_1990_comuna$comuna)
setnames(median_1990_comuna, colnames(median_1990_comuna), c("comuna","1990"))
median_1990_comuna <- insert_row(median_1990_comuna, c("Pa\u00eds", median(household_income_1990$ingreso_pc)), nrow(median_1990_comuna)+1)

# Household Average Income by comuna
mean_1990_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1990, FUN = "mean")
mean_1990_comuna$comuna <- as.character(mean_1990_comuna$comuna)
setnames(mean_1990_comuna, colnames(mean_1990_comuna), c("comuna","1990"))
mean_1990_comuna <- insert_row(mean_1990_comuna, c("Pa\u00eds", mean(household_income_1990$ingreso_pc)), nrow(mean_1990_comuna)+1)

# Gini by comuna
gini_1990_comuna <- aggregate(ingreso_pc ~ comuna, data = household_income_1990, FUN = "Gini")
gini_1990_comuna$comuna <- as.character(gini_1990_comuna$comuna)
setnames(gini_1990_comuna, colnames(gini_1990_comuna), c("comuna","1990"))
gini_1990_comuna <- insert_row(gini_1990_comuna, c("Pa\u00eds", Gini(household_income_1990$ingreso_pc)), nrow(gini_1990_comuna)+1)
