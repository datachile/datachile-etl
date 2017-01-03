########
# 1992 #
########

# Paste the relevant columns
household_income_1992 <- as.data.frame(cbind(as.character(casen_1992$comu), as.character(casen_1992$ymonehaj/casen_1992$numper), as.character(casen_1992$expc), as.character(casen_1992$expr)))
setnames(household_income_1992, colnames(household_income_1992), c("comuna","per_capita_income", "exp_region", "exp_comuna"))

# Keep only the households that reported their wage
household_income_1992$per_capita_income <- as.numeric(as.character(household_income_1992$per_capita_income))
household_income_1992 <- subset(household_income_1992, household_income_1992$per_capita_income > 0)

# Trim leading/ending whitespace + Fix uppercase
household_income_1992$comuna <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", household_income_1992$comuna, perl=TRUE)
household_income_1992$comuna <- gsub("^\\s+|\\s+$", "", household_income_1992$comuna)

# Fix characters/uppercase
household_income_1992$comuna <- gsub("\xe1", "\u00e1", household_income_1992$comuna) # a with acute
household_income_1992$comuna <- gsub("<e1>", "\u00e1", household_income_1992$comuna) # a with acute
household_income_1992$comuna <- gsub("<c1>", "\u00c1", household_income_1992$comuna) # A with acute
household_income_1992$comuna <- gsub("\xe9", "\u00e9", household_income_1992$comuna) # e with acute
household_income_1992$comuna <- gsub("<e9>", "\u00e9", household_income_1992$comuna) # e with acute
household_income_1992$comuna <- gsub("\xed", "\u00ed", household_income_1992$comuna) # i with acute
household_income_1992$comuna <- gsub("<ed>", "\u00ed", household_income_1992$comuna) # i with acute
household_income_1992$comuna <- gsub("\xf3", "\u00f3", household_income_1992$comuna) # o with acute
household_income_1992$comuna <- gsub("<f3>", "\u00f3", household_income_1992$comuna) # o with acute
household_income_1992$comuna <- gsub("\xfa", "\u00fa", household_income_1992$comuna) # u with acute
household_income_1992$comuna <- gsub("<fa>", "\u00fa", household_income_1992$comuna) # u with acute 
household_income_1992$comuna <- gsub("\xda", "\u00da", household_income_1992$comuna) # U with acute
household_income_1992$comuna <- gsub("<da>", "\u00da", household_income_1992$comuna) # U with acute
household_income_1992$comuna <- gsub("\xf1", "\u00f1", household_income_1992$comuna) # n with tilde
household_income_1992$comuna <- gsub("<f1>", "\u00f1", household_income_1992$comuna) # n with tilde
household_income_1992$comuna <- gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", household_income_1992$comuna) # n with tilde 
household_income_1992$comuna <- gsub("\xd1", "\u00d1", household_income_1992$comuna) # N with tilde
household_income_1992$comuna <- gsub("<d1>", "\u00d1", household_income_1992$comuna) # N with tilde
household_income_1992$comuna <- gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", household_income_1992$comuna) # N with tilde
household_income_1992$comuna <- gsub("\xb4", "\u0027", household_income_1992$comuna) # apostrophe
household_income_1992$comuna <- gsub("<b4>", "\u0027", household_income_1992$comuna) # apostrophe
household_income_1992$comuna <- gsub(" De ", " de ", household_income_1992$comuna)
household_income_1992$comuna <- gsub(" Del ", " del ", household_income_1992$comuna)
household_income_1992$comuna <- gsub(" La ", " la ", household_income_1992$comuna)
household_income_1992$comuna <- gsub(" Los ", " los ", household_income_1992$comuna)
household_income_1992$comuna <- gsub(" Y ", " y ", household_income_1992$comuna)

# Fix comuna
household_income_1992$comuna <- gsub("CorTarapac\u00e1l", "Coronel", household_income_1992$comuna)
household_income_1992$comuna <- gsub("Los Angeles", "Los \u00c1ngeles", household_income_1992$comuna)
household_income_1992$comuna <- gsub("Los Lagoso", "Los Lagos", household_income_1992$comuna)
household_income_1992$comuna <- gsub("MejillTarapac\u00e1s", "Mejillones", household_income_1992$comuna)
household_income_1992$comuna <- gsub("Teodoro Schimdt", "Teodoro Schmidt", household_income_1992$comuna)
household_income_1992$comuna <- gsub("Puerto Ais\u00e9n", "Ays\u00e9n", household_income_1992$comuna)
household_income_1992$comuna <- gsub("ParedTarapac\u00e1s", "Paredones", household_income_1992$comuna)
household_income_1992$comuna <- gsub("Trehuaco", "Treguaco", household_income_1992$comuna)
household_income_1992$comuna <- gsub("Los Alamos", "Los \u00c1lamos", household_income_1992$comuna)

# Add provincia and region
household_income_1992 <- join(household_income_1992, regiones_casen_2015, by = "comuna")
household_income_1992 <- household_income_1992[,c("region","provincia","comuna","per_capita_income", "exp_region", "exp_comuna")]

# Fix exp
household_income_1992$exp_comuna <- as.numeric(as.character(household_income_1992$exp_comuna))
household_income_1992$exp_region <- as.numeric(as.character(household_income_1992$exp_region))

household_income_1992$exp_region <- ifelse(household_income_1992$exp_region == 0, 1, household_income_1992$exp_comuna)
household_income_1992$exp_region <- ifelse(is.na(household_income_1992$exp_region), 1, household_income_1992$exp_comuna)

household_income_1992$exp_comuna <- ifelse(household_income_1992$exp_comuna == 0, 1, household_income_1992$exp_comuna)
household_income_1992$exp_comuna <- ifelse(is.na(household_income_1992$exp_comuna), 1, household_income_1992$exp_comuna)
