########
# 2015 #
########

# Median Household Income by provincia
median_2015_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2015, FUN = "median")
median_2015_provincia$provincia <- as.character(median_2015_provincia$provincia)
setnames(median_2015_provincia, colnames(median_2015_provincia), c("provincia","2015"))
median_2015_provincia <- insert_row(median_2015_provincia, c("Pa\u00eds", median(household_income_2015$ingreso_pc)), nrow(median_2015_provincia)+1)

# Average Household Income by provincia
mean_2015_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2015, FUN = "mean")
mean_2015_provincia$provincia <- as.character(mean_2015_provincia$provincia)
setnames(mean_2015_provincia, colnames(mean_2015_provincia), c("provincia","2015"))
mean_2015_provincia <- insert_row(mean_2015_provincia, c("Pa\u00eds", mean(household_income_2015$ingreso_pc)), nrow(mean_2015_provincia)+1)

# Gini by provincia
gini_2015_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2015, FUN = "Gini")
gini_2015_provincia$provincia <- as.character(gini_2015_provincia$provincia)
setnames(gini_2015_provincia, colnames(gini_2015_provincia), c("provincia","2015"))
gini_2015_provincia <- insert_row(gini_2015_provincia, c("Pa\u00eds", Gini(household_income_2015$ingreso_pc)), nrow(gini_2015_provincia)+1)

########
# 2013 #
########

# Median Household Income by provincia
median_2013_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2013, FUN = "median")
median_2013_provincia$provincia <- as.character(median_2013_provincia$provincia)
setnames(median_2013_provincia, colnames(median_2013_provincia), c("provincia","2013"))
median_2013_provincia <- insert_row(median_2013_provincia, c("Pa\u00eds", median(household_income_2013$ingreso_pc)), nrow(median_2013_provincia)+1)

# Average Household Income by provincia
mean_2013_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2013, FUN = "mean")
mean_2013_provincia$provincia <- as.character(mean_2013_provincia$provincia)
setnames(mean_2013_provincia, colnames(mean_2013_provincia), c("provincia","2013"))
mean_2013_provincia <- insert_row(mean_2013_provincia, c("Pa\u00eds", mean(household_income_2013$ingreso_pc)), nrow(mean_2013_provincia)+1)

# Gini by provincia
gini_2013_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2013, FUN = "Gini")
gini_2013_provincia$provincia <- as.character(gini_2013_provincia$provincia)
setnames(gini_2013_provincia, colnames(gini_2013_provincia), c("provincia","2013"))
gini_2013_provincia <- insert_row(gini_2013_provincia, c("Pa\u00eds", Gini(household_income_2013$ingreso_pc)), nrow(gini_2013_provincia)+1)

########
# 2011 #
########

# Median Household Income by provincia
median_2011_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2011, FUN = "median")
median_2011_provincia$provincia <- as.character(median_2011_provincia$provincia)
setnames(median_2011_provincia, colnames(median_2011_provincia), c("provincia","2011"))
median_2011_provincia <- insert_row(median_2011_provincia, c("Pa\u00eds", median(household_income_2011$ingreso_pc)), nrow(median_2011_provincia)+1)

# Average Household Income by provincia
mean_2011_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2011, FUN = "mean")
mean_2011_provincia$provincia <- as.character(mean_2011_provincia$provincia)
setnames(mean_2011_provincia, colnames(mean_2011_provincia), c("provincia","2011"))
mean_2011_provincia <- insert_row(mean_2011_provincia, c("Pa\u00eds", mean(household_income_2011$ingreso_pc)), nrow(mean_2011_provincia)+1)

# Gini by provincia
gini_2011_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2011, FUN = "Gini")
gini_2011_provincia$provincia <- as.character(gini_2011_provincia$provincia)
setnames(gini_2011_provincia, colnames(gini_2011_provincia), c("provincia","2011"))
gini_2011_provincia <- insert_row(gini_2011_provincia, c("Pa\u00eds", Gini(household_income_2011$ingreso_pc)), nrow(gini_2011_provincia)+1)

########
# 2009 #
########

# Median Household Income by provincia
median_2009_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2009, FUN = "median")
median_2009_provincia$provincia <- as.character(median_2009_provincia$provincia)
setnames(median_2009_provincia, colnames(median_2009_provincia), c("provincia","2009"))
median_2009_provincia <- insert_row(median_2009_provincia, c("Pa\u00eds", median(household_income_2009$ingreso_pc)), nrow(median_2009_provincia)+1)

# Average Household Income by provincia
mean_2009_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2009, FUN = "mean")
mean_2009_provincia$provincia <- as.character(mean_2009_provincia$provincia)
setnames(mean_2009_provincia, colnames(mean_2009_provincia), c("provincia","2009"))
mean_2009_provincia <- insert_row(mean_2009_provincia, c("Pa\u00eds", mean(household_income_2009$ingreso_pc)), nrow(mean_2009_provincia)+1)

# Gini by provincia
gini_2009_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2009, FUN = "Gini")
gini_2009_provincia$provincia <- as.character(gini_2009_provincia$provincia)
setnames(gini_2009_provincia, colnames(gini_2009_provincia), c("provincia","2009"))
gini_2009_provincia <- insert_row(gini_2009_provincia, c("Pa\u00eds", Gini(household_income_2009$ingreso_pc)), nrow(gini_2009_provincia)+1)

########
# 2006 #
########

# Median Household Income by provincia
median_2006_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2006, FUN = "median")
median_2006_provincia$provincia <- as.character(median_2006_provincia$provincia)
setnames(median_2006_provincia, colnames(median_2006_provincia), c("provincia","2006"))
median_2006_provincia <- insert_row(median_2006_provincia, c("Pa\u00eds", median(household_income_2006$ingreso_pc)), nrow(median_2006_provincia)+1)

# Average Household Income by provincia
mean_2006_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2006, FUN = "mean")
mean_2006_provincia$provincia <- as.character(mean_2006_provincia$provincia)
setnames(mean_2006_provincia, colnames(mean_2006_provincia), c("provincia","2006"))
mean_2006_provincia <- insert_row(mean_2006_provincia, c("Pa\u00eds", mean(household_income_2006$ingreso_pc)), nrow(mean_2006_provincia)+1)

# Gini by provincia
gini_2006_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2006, FUN = "Gini")
gini_2006_provincia$provincia <- as.character(gini_2006_provincia$provincia)
setnames(gini_2006_provincia, colnames(gini_2006_provincia), c("provincia","2006"))
gini_2006_provincia <- insert_row(gini_2006_provincia, c("Pa\u00eds", Gini(household_income_2006$ingreso_pc)), nrow(gini_2006_provincia)+1)

########
# 2003 #
########

# Median Household Income by provincia
median_2003_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2003, FUN = "median")
median_2003_provincia$provincia <- as.character(median_2003_provincia$provincia)
setnames(median_2003_provincia, colnames(median_2003_provincia), c("provincia","2003"))
median_2003_provincia <- insert_row(median_2003_provincia, c("Pa\u00eds", median(household_income_2003$ingreso_pc)), nrow(median_2003_provincia)+1)

# Average Household Income by provincia
mean_2003_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2003, FUN = "mean")
mean_2003_provincia$provincia <- as.character(mean_2003_provincia$provincia)
setnames(mean_2003_provincia, colnames(mean_2003_provincia), c("provincia","2003"))
mean_2003_provincia <- insert_row(mean_2003_provincia, c("Pa\u00eds", mean(household_income_2003$ingreso_pc)), nrow(mean_2003_provincia)+1)

# Gini by provincia
gini_2003_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2003, FUN = "Gini")
gini_2003_provincia$provincia <- as.character(gini_2003_provincia$provincia)
setnames(gini_2003_provincia, colnames(gini_2003_provincia), c("provincia","2003"))
gini_2003_provincia <- insert_row(gini_2003_provincia, c("Pa\u00eds", Gini(household_income_2003$ingreso_pc)), nrow(gini_2003_provincia)+1)

########
# 2000 #
########

# Median Household Income by provincia
median_2000_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2000, FUN = "median")
median_2000_provincia$provincia <- as.character(median_2000_provincia$provincia)
setnames(median_2000_provincia, colnames(median_2000_provincia), c("provincia","2000"))
median_2000_provincia <- insert_row(median_2000_provincia, c("Pa\u00eds", median(household_income_2000$ingreso_pc)), nrow(median_2000_provincia)+1)

# Household Average Income by provincia
mean_2000_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2000, FUN = "mean")
mean_2000_provincia$provincia <- as.character(mean_2000_provincia$provincia)
setnames(mean_2000_provincia, colnames(mean_2000_provincia), c("provincia","2000"))
mean_2000_provincia <- insert_row(mean_2000_provincia, c("Pa\u00eds", mean(household_income_2000$ingreso_pc)), nrow(mean_2000_provincia)+1)

# Gini by provincia
gini_2000_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_2000, FUN = "Gini")
gini_2000_provincia$provincia <- as.character(gini_2000_provincia$provincia)
setnames(gini_2000_provincia, colnames(gini_2000_provincia), c("provincia","2000"))
gini_2000_provincia <- insert_row(gini_2000_provincia, c("Pa\u00eds", Gini(household_income_2000$ingreso_pc)), nrow(gini_2000_provincia)+1)

########
# 1998 #
########

# Median Household Income by provincia
median_1998_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1998, FUN = "median")
median_1998_provincia$provincia <- as.character(median_1998_provincia$provincia)
setnames(median_1998_provincia, colnames(median_1998_provincia), c("provincia","1998"))
median_1998_provincia <- insert_row(median_1998_provincia, c("Pa\u00eds", median(household_income_1998$ingreso_pc)), nrow(median_1998_provincia)+1)

# Household Average Income by provincia
mean_1998_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1998, FUN = "mean")
mean_1998_provincia$provincia <- as.character(mean_1998_provincia$provincia)
setnames(mean_1998_provincia, colnames(mean_1998_provincia), c("provincia","1998"))
mean_1998_provincia <- insert_row(mean_1998_provincia, c("Pa\u00eds", mean(household_income_1998$ingreso_pc)), nrow(mean_1998_provincia)+1)

# Gini by provincia
gini_1998_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1998, FUN = "Gini")
gini_1998_provincia$provincia <- as.character(gini_1998_provincia$provincia)
setnames(gini_1998_provincia, colnames(gini_1998_provincia), c("provincia","1998"))
gini_1998_provincia <- insert_row(gini_1998_provincia, c("Pa\u00eds", Gini(household_income_1998$ingreso_pc)), nrow(gini_1998_provincia)+1)

########
# 1996 #
########

# Median Household Income by provincia
median_1996_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1996, FUN = "median")
median_1996_provincia$provincia <- as.character(median_1996_provincia$provincia)
setnames(median_1996_provincia, colnames(median_1996_provincia), c("provincia","1996"))
median_1996_provincia <- insert_row(median_1996_provincia, c("Pa\u00eds", median(household_income_1996$ingreso_pc)), nrow(median_1996_provincia)+1)

# Household Average Income by provincia
mean_1996_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1996, FUN = "mean")
mean_1996_provincia$provincia <- as.character(mean_1996_provincia$provincia)
setnames(mean_1996_provincia, colnames(mean_1996_provincia), c("provincia","1996"))
mean_1996_provincia <- insert_row(mean_1996_provincia, c("Pa\u00eds", mean(household_income_1996$ingreso_pc)), nrow(mean_1996_provincia)+1)

# Gini by provincia
gini_1996_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1996, FUN = "Gini")
gini_1996_provincia$provincia <- as.character(gini_1996_provincia$provincia)
setnames(gini_1996_provincia, colnames(gini_1996_provincia), c("provincia","1996"))
gini_1996_provincia <- insert_row(gini_1996_provincia, c("Pa\u00eds", Gini(household_income_1996$ingreso_pc)), nrow(gini_1996_provincia)+1)

########
# 1994 #
########

# Median Household Income by provincia
median_1994_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1994, FUN = "median")
median_1994_provincia$provincia <- as.character(median_1994_provincia$provincia)
setnames(median_1994_provincia, colnames(median_1994_provincia), c("provincia","1994"))
median_1994_provincia <- insert_row(median_1994_provincia, c("Pa\u00eds", median(household_income_1994$ingreso_pc)), nrow(median_1994_provincia)+1)

# Household Average Income by provincia
mean_1994_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1994, FUN = "mean")
mean_1994_provincia$provincia <- as.character(mean_1994_provincia$provincia)
setnames(mean_1994_provincia, colnames(mean_1994_provincia), c("provincia","1994"))
mean_1994_provincia <- insert_row(mean_1994_provincia, c("Pa\u00eds", mean(household_income_1994$ingreso_pc)), nrow(mean_1994_provincia)+1)

# Gini by provincia
gini_1994_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1994, FUN = "Gini")
gini_1994_provincia$provincia <- as.character(gini_1994_provincia$provincia)
setnames(gini_1994_provincia, colnames(gini_1994_provincia), c("provincia","1994"))
gini_1994_provincia <- insert_row(gini_1994_provincia, c("Pa\u00eds", Gini(household_income_1994$ingreso_pc)), nrow(gini_1994_provincia)+1)

########
# 1992 #
########

# Median Household Income by provincia
median_1992_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1992, FUN = "median")
median_1992_provincia$provincia <- as.character(median_1992_provincia$provincia)
setnames(median_1992_provincia, colnames(median_1992_provincia), c("provincia","1992"))
median_1992_provincia <- insert_row(median_1992_provincia, c("Pa\u00eds", median(household_income_1992$ingreso_pc)), nrow(median_1992_provincia)+1)

# Household Average Income by provincia
mean_1992_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1992, FUN = "mean")
mean_1992_provincia$provincia <- as.character(mean_1992_provincia$provincia)
setnames(mean_1992_provincia, colnames(mean_1992_provincia), c("provincia","1992"))
mean_1992_provincia <- insert_row(mean_1992_provincia, c("Pa\u00eds", mean(household_income_1992$ingreso_pc)), nrow(mean_1992_provincia)+1)

# Gini by provincia
gini_1992_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1992, FUN = "Gini")
gini_1992_provincia$provincia <- as.character(gini_1992_provincia$provincia)
setnames(gini_1992_provincia, colnames(gini_1992_provincia), c("provincia","1992"))
gini_1992_provincia <- insert_row(gini_1992_provincia, c("Pa\u00eds", Gini(household_income_1992$ingreso_pc)), nrow(gini_1992_provincia)+1)

########
# 1990 #
########

# Median Household Income by provincia
median_1990_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1990, FUN = "median")
median_1990_provincia$provincia <- as.character(median_1990_provincia$provincia)
setnames(median_1990_provincia, colnames(median_1990_provincia), c("provincia","1990"))
median_1990_provincia <- insert_row(median_1990_provincia, c("Pa\u00eds", median(household_income_1990$ingreso_pc)), nrow(median_1990_provincia)+1)

# Household Average Income by provincia
mean_1990_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1990, FUN = "mean")
mean_1990_provincia$provincia <- as.character(mean_1990_provincia$provincia)
setnames(mean_1990_provincia, colnames(mean_1990_provincia), c("provincia","1990"))
mean_1990_provincia <- insert_row(mean_1990_provincia, c("Pa\u00eds", mean(household_income_1990$ingreso_pc)), nrow(mean_1990_provincia)+1)

# Gini by provincia
gini_1990_provincia <- aggregate(ingreso_pc ~ provincia, data = household_income_1990, FUN = "Gini")
gini_1990_provincia$provincia <- as.character(gini_1990_provincia$provincia)
setnames(gini_1990_provincia, colnames(gini_1990_provincia), c("provincia","1990"))
gini_1990_provincia <- insert_row(gini_1990_provincia, c("Pa\u00eds", Gini(household_income_1990$ingreso_pc)), nrow(gini_1990_provincia)+1)
