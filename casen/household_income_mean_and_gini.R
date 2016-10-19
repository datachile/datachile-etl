source("process_household_income.R")

########
# 2015 #
########

# Average Household Income by region
mean_2015 <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = "mean")
mean_2015$region <- as.character(mean_2015$region)
setnames(mean_2015, colnames(mean_2015), c("region","mean_2015"))
mean_2015 <- insert_row(mean_2015, c("Pa\u00eds", mean(household_income_2015$ingreso_pc)), nrow(mean_2015)+1)

# Gini by region
gini_2015 <- aggregate(ingreso_pc ~ region, data = household_income_2015, FUN = "Gini")
gini_2015$region <- as.character(gini_2015$region)
setnames(gini_2015, colnames(gini_2015), c("region","gini_2015"))
gini_2015 <- insert_row(gini_2015, c("Pa\u00eds", Gini(household_income_2015$ingreso_pc)), nrow(gini_2015)+1)

########
# 2013 #
########

# Average Household Income by region
mean_2013 <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = "mean")
mean_2013$region <- as.character(mean_2013$region)
setnames(mean_2013, colnames(mean_2013), c("region","mean_2013"))
mean_2013 <- insert_row(mean_2013, c("Pa\u00eds", mean(household_income_2013$ingreso_pc)), nrow(mean_2013)+1)

# Gini by region
gini_2013 <- aggregate(ingreso_pc ~ region, data = household_income_2013, FUN = "Gini")
gini_2013$region <- as.character(gini_2013$region)
setnames(gini_2013, colnames(gini_2013), c("region","gini_2013"))
gini_2013 <- insert_row(gini_2013, c("Pa\u00eds", Gini(household_income_2013$ingreso_pc)), nrow(gini_2013)+1)

########
# 2011 #
########

# Average Household Income by region
mean_2011 <- aggregate(ingreso_pc ~ region, data = household_income_2011, FUN = "mean")
mean_2011$region <- as.character(mean_2011$region)
setnames(mean_2011, colnames(mean_2011), c("region","mean_2011"))
mean_2011 <- insert_row(mean_2011, c("Pa\u00eds", mean(household_income_2011$ingreso_pc)), nrow(mean_2011)+1)

# Gini by region
gini_2011 <- aggregate(ingreso_pc ~ region, data = household_income_2011, FUN = "Gini")
gini_2011$region <- as.character(gini_2011$region)
setnames(gini_2011, colnames(gini_2011), c("region","gini_2011"))
gini_2011 <- insert_row(gini_2011, c("Pa\u00eds", Gini(household_income_2011$ingreso_pc)), nrow(gini_2011)+1)

########
# 2009 #
########

# Average Household Income by region
mean_2009 <- aggregate(ingreso_pc ~ region, data = household_income_2009, FUN = "mean")
mean_2009$region <- as.character(mean_2009$region)
setnames(mean_2009, colnames(mean_2009), c("region","mean_2009"))
mean_2009 <- insert_row(mean_2009, c("Pa\u00eds", mean(household_income_2009$ingreso_pc)), nrow(mean_2009)+1)

# Gini by region
gini_2009 <- aggregate(ingreso_pc ~ region, data = household_income_2009, FUN = "Gini")
gini_2009$region <- as.character(gini_2009$region)
setnames(gini_2009, colnames(gini_2009), c("region","gini_2009"))
gini_2009 <- insert_row(gini_2009, c("Pa\u00eds", Gini(household_income_2009$ingreso_pc)), nrow(gini_2009)+1)

########
# 2006 #
########

# Average Household Income by region
mean_2006 <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = "mean")
mean_2006$region <- as.character(mean_2006$region)
setnames(mean_2006, colnames(mean_2006), c("region","mean_2006"))
mean_2006 <- insert_row(mean_2006, c("Pa\u00eds", mean(household_income_2006$ingreso_pc)), nrow(mean_2006)+1)

# Gini by region
gini_2006 <- aggregate(ingreso_pc ~ region, data = household_income_2006, FUN = "Gini")
gini_2006$region <- as.character(gini_2006$region)
setnames(gini_2006, colnames(gini_2006), c("region","gini_2006"))
gini_2006 <- insert_row(gini_2006, c("Pa\u00eds", Gini(household_income_2006$ingreso_pc)), nrow(gini_2006)+1)

########
# 2003 #
########

# Average Household Income by region
mean_2003 <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = "mean")
mean_2003$region <- as.character(mean_2003$region)
setnames(mean_2003, colnames(mean_2003), c("region","mean_2003"))
mean_2003 <- insert_row(mean_2003, c("Pa\u00eds", mean(household_income_2003$ingreso_pc)), nrow(mean_2003)+1)

# Gini by region
gini_2003 <- aggregate(ingreso_pc ~ region, data = household_income_2003, FUN = "Gini")
gini_2003$region <- as.character(gini_2003$region)
setnames(gini_2003, colnames(gini_2003), c("region","gini_2003"))
gini_2003 <- insert_row(gini_2003, c("Pa\u00eds", Gini(household_income_2003$ingreso_pc)), nrow(gini_2003)+1)

########
# 2000 #
########

# Household Average Income by region
mean_2000 <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = "mean")
mean_2000$region <- as.character(mean_2000$region)
setnames(mean_2000, colnames(mean_2000), c("region","mean_2000"))
mean_2000 <- insert_row(mean_2000, c("Pa\u00eds", mean(household_income_2000$ingreso_pc)), nrow(mean_2000)+1)

# Gini by region
gini_2000 <- aggregate(ingreso_pc ~ region, data = household_income_2000, FUN = "Gini")
gini_2000$region <- as.character(gini_2000$region)
setnames(gini_2000, colnames(gini_2000), c("region","gini_2000"))
gini_2000 <- insert_row(gini_2000, c("Pa\u00eds", Gini(household_income_2000$ingreso_pc)), nrow(gini_2000)+1)

########
# 1998 #
########

# Household Average Income by region
mean_1998 <- aggregate(ingreso_pc ~ region, data = household_income_1998, FUN = "mean")
mean_1998$region <- as.character(mean_1998$region)
setnames(mean_1998, colnames(mean_1998), c("region","mean_1998"))
mean_1998 <- insert_row(mean_1998, c("Pa\u00eds", mean(household_income_1998$ingreso_pc)), nrow(mean_1998)+1)

# Gini by region
gini_1998 <- aggregate(ingreso_pc ~ region, data = household_income_1998, FUN = "Gini")
gini_1998$region <- as.character(gini_1998$region)
setnames(gini_1998, colnames(gini_1998), c("region","gini_1998"))
gini_1998 <- insert_row(gini_1998, c("Pa\u00eds", Gini(household_income_1998$ingreso_pc)), nrow(gini_1998)+1)

########
# 1996 #
########

# Household Average Income by region
mean_1996 <- aggregate(ingreso_pc ~ region, data = household_income_1996, FUN = "mean")
mean_1996$region <- as.character(mean_1996$region)
setnames(mean_1996, colnames(mean_1996), c("region","mean_1996"))
mean_1996 <- insert_row(mean_1996, c("Pa\u00eds", mean(household_income_1996$ingreso_pc)), nrow(mean_1996)+1)

# Gini by region
gini_1996 <- aggregate(ingreso_pc ~ region, data = household_income_1996, FUN = "Gini")
gini_1996$region <- as.character(gini_1996$region)
setnames(gini_1996, colnames(gini_1996), c("region","gini_1996"))
gini_1996 <- insert_row(gini_1996, c("Pa\u00eds", Gini(household_income_1996$ingreso_pc)), nrow(gini_1996)+1)

########
# 1994 #
########

# Household Average Income by region
mean_1994 <- aggregate(ingreso_pc ~ region, data = household_income_1994, FUN = "mean")
mean_1994$region <- as.character(mean_1994$region)
setnames(mean_1994, colnames(mean_1994), c("region","mean_1994"))
mean_1994 <- insert_row(mean_1994, c("Pa\u00eds", mean(household_income_1994$ingreso_pc)), nrow(mean_1994)+1)

# Gini by region
gini_1994 <- aggregate(ingreso_pc ~ region, data = household_income_1994, FUN = "Gini")
gini_1994$region <- as.character(gini_1994$region)
setnames(gini_1994, colnames(gini_1994), c("region","gini_1994"))
gini_1994 <- insert_row(gini_1994, c("Pa\u00eds", Gini(household_income_1994$ingreso_pc)), nrow(gini_1994)+1)

########
# 1992 #
########

# Household Average Income by region
mean_1992 <- aggregate(ingreso_pc ~ region, data = household_income_1992, FUN = "mean")
mean_1992$region <- as.character(mean_1992$region)
setnames(mean_1992, colnames(mean_1992), c("region","mean_1992"))
mean_1992 <- insert_row(mean_1992, c("Pa\u00eds", mean(household_income_1992$ingreso_pc)), nrow(mean_1992)+1)

# Gini by region
gini_1992 <- aggregate(ingreso_pc ~ region, data = household_income_1992, FUN = "Gini")
gini_1992$region <- as.character(gini_1992$region)
setnames(gini_1992, colnames(gini_1992), c("region","gini_1992"))
gini_1992 <- insert_row(gini_1992, c("Pa\u00eds", Gini(household_income_1992$ingreso_pc)), nrow(gini_1992)+1)

########
# 1990 #
########

# Household Average Income by region
mean_1990 <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = "mean")
mean_1990$region <- as.character(mean_1990$region)
setnames(mean_1990, colnames(mean_1990), c("region","mean_1990"))
mean_1990 <- insert_row(mean_1990, c("Pa\u00eds", mean(household_income_1990$ingreso_pc)), nrow(mean_1990)+1)

# Gini by region
gini_1990 <- aggregate(ingreso_pc ~ region, data = household_income_1990, FUN = "Gini")
gini_1990$region <- as.character(gini_1990$region)
setnames(gini_1990, colnames(gini_1990), c("region","gini_1990"))
gini_1990 <- insert_row(gini_1990, c("Pa\u00eds", Gini(household_income_1990$ingreso_pc)), nrow(gini_1990)+1)


#############
# join mean #
#############

mean_income <- as.data.frame(unique(c(mean_1990$region, mean_2015$region)))
setnames(mean_income, colnames(mean_income), "region")

mean_income <- join(mean_income, mean_1990, type = "left")
mean_income <- join(mean_income, mean_1992, type = "left")
mean_income <- join(mean_income, mean_1994, type = "left")
mean_income <- join(mean_income, mean_1996, type = "left")
mean_income <- join(mean_income, mean_1998, type = "left")
mean_income <- join(mean_income, mean_2000, type = "left")
mean_income <- join(mean_income, mean_2003, type = "left")
mean_income <- join(mean_income, mean_2006, type = "left")
mean_income <- join(mean_income, mean_2009, type = "left")
mean_income <- join(mean_income, mean_2011, type = "left")
mean_income <- join(mean_income, mean_2013, type = "left")
mean_income <- join(mean_income, mean_2015, type = "left")

mean_income <- rbind(mean_income[!mean_income$region %in% c("Pa\u00eds"), ], mean_income[mean_income$region %in% c("Pa\u00eds"), ])
rownames(mean_income) <- c(seq(1:nrow(mean_income)))
mean_income[,-1] <- lapply(mean_income[,-1], function (x) as.numeric(x))

#############
# join gini #
#############

gini <- as.data.frame(unique(c(gini_1990$region, gini_2015$region)))
setnames(gini, colnames(gini), "region")

gini <- join(gini, gini_1990, type = "left")
gini <- join(gini, gini_1992, type = "left")
gini <- join(gini, gini_1994, type = "left")
gini <- join(gini, gini_1996, type = "left")
gini <- join(gini, gini_1998, type = "left")
gini <- join(gini, gini_2000, type = "left")
gini <- join(gini, gini_2003, type = "left")
gini <- join(gini, gini_2006, type = "left")
gini <- join(gini, gini_2009, type = "left")
gini <- join(gini, gini_2011, type = "left")
gini <- join(gini, gini_2013, type = "left")
gini <- join(gini, gini_2015, type = "left")

gini <- rbind(gini[!gini$region %in% c("Pa\u00eds"), ], gini[gini$region %in% c("Pa\u00eds"), ])
rownames(gini) <- c(seq(1:nrow(gini)))
gini[,-1] <- lapply(gini[,-1], function (x) as.numeric(x))

########
# save #
########

write.csv(mean_income, file = "mean_income.csv")
write.csv(gini, file = "gini.csv")
