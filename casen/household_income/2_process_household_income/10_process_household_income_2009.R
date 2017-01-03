########
# 2009 #
########

# Paste the relevant columns
household_income_2009 <- as.data.frame(cbind(as.character(casen_2009$comu), as.character(casen_2009$ymonehaj/casen_2009$numper), as.character(casen_2009$expc), as.character(casen_2009$expr)))
setnames(household_income_2009, colnames(household_income_2009), c("comuna","per_capita_income", "exp_region", "exp_comuna"))

# Keep only the households that reported their wage
household_income_2009$per_capita_income <- as.numeric(as.character(household_income_2009$per_capita_income))
household_income_2009 <- subset(household_income_2009, household_income_2009$per_capita_income > 0)

# Trim leading/ending whitespace
household_income_2009$comuna <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", household_income_2009$comuna, perl=TRUE)
household_income_2009$comuna <- gsub("^\\s+|\\s+$", "", household_income_2009$comuna)

# Fix characters/uppercase
household_income_2009$comuna <- gsub("\xe1", "\u00e1", household_income_2009$comuna) # a with acute
household_income_2009$comuna <- gsub("<e1>", "\u00e1", household_income_2009$comuna) # a with acute
household_income_2009$comuna <- gsub("<c1>", "\u00c1", household_income_2009$comuna) # A with acute
household_income_2009$comuna <- gsub("\xe9", "\u00e9", household_income_2009$comuna) # e with acute
household_income_2009$comuna <- gsub("<e9>", "\u00e9", household_income_2009$comuna) # e with acute
household_income_2009$comuna <- gsub("\xed", "\u00ed", household_income_2009$comuna) # i with acute
household_income_2009$comuna <- gsub("<ed>", "\u00ed", household_income_2009$comuna) # i with acute
household_income_2009$comuna <- gsub("\xf3", "\u00f3", household_income_2009$comuna) # o with acute
household_income_2009$comuna <- gsub("<f3>", "\u00f3", household_income_2009$comuna) # o with acute
household_income_2009$comuna <- gsub("\xfa", "\u00fa", household_income_2009$comuna) # u with acute
household_income_2009$comuna <- gsub("<fa>", "\u00fa", household_income_2009$comuna) # u with acute 
household_income_2009$comuna <- gsub("\xda", "\u00da", household_income_2009$comuna) # U with acute
household_income_2009$comuna <- gsub("<da>", "\u00da", household_income_2009$comuna) # U with acute
household_income_2009$comuna <- gsub("\xf1", "\u00f1", household_income_2009$comuna) # n with tilde
household_income_2009$comuna <- gsub("<f1>", "\u00f1", household_income_2009$comuna) # n with tilde
household_income_2009$comuna <- gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", household_income_2009$comuna) # n with tilde 
household_income_2009$comuna <- gsub("\xd1", "\u00d1", household_income_2009$comuna) # N with tilde
household_income_2009$comuna <- gsub("<d1>", "\u00d1", household_income_2009$comuna) # N with tilde
household_income_2009$comuna <- gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", household_income_2009$comuna) # N with tilde
household_income_2009$comuna <- gsub("\xb4", "\u0027", household_income_2009$comuna) # apostrophe
household_income_2009$comuna <- gsub("<b4>", "\u0027", household_income_2009$comuna) # apostrophe
household_income_2009$comuna <- gsub(" De ", " de ", household_income_2009$comuna)
household_income_2009$comuna <- gsub(" Del ", " del ", household_income_2009$comuna)
household_income_2009$comuna <- gsub(" La ", " la ", household_income_2009$comuna)
household_income_2009$comuna <- gsub(" Los ", " los ", household_income_2009$comuna)
household_income_2009$comuna <- gsub(" Y ", " y ", household_income_2009$comuna)
household_income_2009$comuna <- gsub("\xfc", "\u00fc", household_income_2009$comuna) # u with diaeresis
household_income_2009$comuna <- gsub("<fc>", "\u00fc", household_income_2009$comuna) # u with diaeresis

# Fix comuna
household_income_2009$comuna <- gsub("Alto B\u00edo B\u00edo", "Alto B\u00edob\u00edo", household_income_2009$comuna)
household_income_2009$comuna <- gsub("Trehuaco", "Treguaco", household_income_2009$comuna)
household_income_2009$comuna <- gsub("La Calera", "Calera", household_income_2009$comuna)
household_income_2009$comuna <- gsub("Llay Llay", "Llaillay", household_income_2009$comuna)
household_income_2009$comuna <- gsub("Paihuano", "Paiguano", household_income_2009$comuna)
household_income_2009$comuna <- gsub("Los Alamos", "Los \u00c1lamos", household_income_2009$comuna)

# Add provincia and region
household_income_2009 <- join(household_income_2009, regiones_casen_2015, by = "comuna")
household_income_2009 <- household_income_2009[,c("region","provincia","comuna","per_capita_income", "exp_region", "exp_comuna")]

# Fix exp
household_income_2009$exp_comuna <- as.numeric(as.character(household_income_2009$exp_comuna))
household_income_2009$exp_region <- as.numeric(as.character(household_income_2009$exp_region))

household_income_2009$exp_region <- ifelse(household_income_2009$exp_region == 0, 1, household_income_2009$exp_comuna)
household_income_2009$exp_region <- ifelse(is.na(household_income_2009$exp_region), 1, household_income_2009$exp_comuna)

household_income_2009$exp_comuna <- ifelse(household_income_2009$exp_comuna == 0, 1, household_income_2009$exp_comuna)
household_income_2009$exp_comuna <- ifelse(is.na(household_income_2009$exp_comuna), 1, household_income_2009$exp_comuna)
