########
# 2006 #
########

# Paste the relevant columns
household_income_2006 <- as.data.frame(cbind(as.character(casen_2006$comu), as.character(casen_2006$ymonehaj/casen_2006$numper), as.character(casen_2006$expc), as.character(casen_2006$expr)))
setnames(household_income_2006, colnames(household_income_2006), c("comuna","per_capita_income", "exp_region", "exp_comuna"))

# Keep only the households that reported their wage
household_income_2006$per_capita_income <- as.numeric(as.character(household_income_2006$per_capita_income))
household_income_2006 <- subset(household_income_2006, household_income_2006$per_capita_income > 0)

# Trim leading/ending whitespace
household_income_2006$comuna <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", household_income_2006$comuna, perl=TRUE)
household_income_2006$comuna <- gsub("^\\s+|\\s+$", "", household_income_2006$comuna)

# Fix characters/uppercase
household_income_2006$comuna <- gsub("\xe1", "\u00e1", household_income_2006$comuna) # a with acute
household_income_2006$comuna <- gsub("<e1>", "\u00e1", household_income_2006$comuna) # a with acute
household_income_2006$comuna <- gsub("<c1>", "\u00c1", household_income_2006$comuna) # A with acute
household_income_2006$comuna <- gsub("\xe9", "\u00e9", household_income_2006$comuna) # e with acute
household_income_2006$comuna <- gsub("<e9>", "\u00e9", household_income_2006$comuna) # e with acute
household_income_2006$comuna <- gsub("\xed", "\u00ed", household_income_2006$comuna) # i with acute
household_income_2006$comuna <- gsub("<ed>", "\u00ed", household_income_2006$comuna) # i with acute
household_income_2006$comuna <- gsub("\xf3", "\u00f3", household_income_2006$comuna) # o with acute
household_income_2006$comuna <- gsub("<f3>", "\u00f3", household_income_2006$comuna) # o with acute
household_income_2006$comuna <- gsub("\xfa", "\u00fa", household_income_2006$comuna) # u with acute
household_income_2006$comuna <- gsub("<fa>", "\u00fa", household_income_2006$comuna) # u with acute 
household_income_2006$comuna <- gsub("\xda", "\u00da", household_income_2006$comuna) # U with acute
household_income_2006$comuna <- gsub("<da>", "\u00da", household_income_2006$comuna) # U with acute
household_income_2006$comuna <- gsub("\xf1", "\u00f1", household_income_2006$comuna) # n with tilde
household_income_2006$comuna <- gsub("<f1>", "\u00f1", household_income_2006$comuna) # n with tilde
household_income_2006$comuna <- gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", household_income_2006$comuna) # n with tilde 
household_income_2006$comuna <- gsub("\xd1", "\u00d1", household_income_2006$comuna) # N with tilde
household_income_2006$comuna <- gsub("<d1>", "\u00d1", household_income_2006$comuna) # N with tilde
household_income_2006$comuna <- gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", household_income_2006$comuna) # N with tilde
household_income_2006$comuna <- gsub("\xb4", "\u0027", household_income_2006$comuna) # apostrophe
household_income_2006$comuna <- gsub("<b4>", "\u0027", household_income_2006$comuna) # apostrophe
household_income_2006$comuna <- gsub(" De ", " de ", household_income_2006$comuna)
household_income_2006$comuna <- gsub(" Del ", " del ", household_income_2006$comuna)
household_income_2006$comuna <- gsub(" La ", " la ", household_income_2006$comuna)
household_income_2006$comuna <- gsub(" Los ", " los ", household_income_2006$comuna)
household_income_2006$comuna <- gsub(" Y ", " y ", household_income_2006$comuna)

# Fix characters/uppercase
household_income_2006$comuna <- gsub("tarapac\u00e1", "Tarapac\u00e1", household_income_2006$comuna)
household_income_2006$comuna <- gsub("atacama", "Atacama", household_income_2006$comuna)
household_income_2006$comuna <- gsub("valpara\u00edso", "Valpara\u00edso", household_income_2006$comuna)
household_income_2006$comuna <- gsub("maule", "Maule", household_income_2006$comuna)
household_income_2006$comuna <- gsub("la araucan\u00eda", "Araucan\u00eda", household_income_2006$comuna)
household_income_2006$comuna <- gsub("ays\u00e9n", "Ays\u00e9n", household_income_2006$comuna)
household_income_2006$comuna <- gsub("regi\u00f3n metropolitana", "Metropolitana", household_income_2006$comuna)
household_income_2006$comuna <- gsub("arica y parinacota", "Arica y Parinacota", household_income_2006$comuna)
household_income_2006$comuna <- gsub("antofagasta", "Antofagasta", household_income_2006$comuna)
household_income_2006$comuna <- gsub("coquimbo", "Coquimbo", household_income_2006$comuna)
household_income_2006$comuna <- gsub("libertador bernardo o\u0027higgins", "O\u0027Higgins", household_income_2006$comuna)
household_income_2006$comuna <- gsub("b\u00edo b\u00edo", "B\u00edob\u00edo", household_income_2006$comuna)
household_income_2006$comuna <- gsub("los lagos", "Los Lagos", household_income_2006$comuna)
household_income_2006$comuna <- gsub("magallanes y la ant\u00e1rtica chilena", "Magallanes", household_income_2006$comuna)
household_income_2006$comuna <- gsub("los rios", "Los R\u00edos", household_income_2006$comuna)

# Fix comuna
household_income_2006$comuna <- gsub("Ollague", "Ollag\u00fce", household_income_2006$comuna)
household_income_2006$comuna <- gsub("Paihuano", "Paiguano", household_income_2006$comuna)
household_income_2006$comuna <- gsub("La Calera", "Calera", household_income_2006$comuna)
household_income_2006$comuna <- gsub("Llay Llay", "Llaillay", household_income_2006$comuna)
household_income_2006$comuna <- gsub("Los Angeles", "Los \u00c1ngeles", household_income_2006$comuna)
household_income_2006$comuna <- gsub("Alto B\u00edo B\u00edo", "Alto B\u00edob\u00edo", household_income_2006$comuna)
household_income_2006$comuna <- gsub("Trehuaco", "Treguaco", household_income_2006$comuna)
household_income_2006$comuna <- gsub("Teodoro Schimdt", "Teodoro Schmidt", household_income_2006$comuna)
household_income_2006$comuna <- gsub("Ais\u00e9n", "Ays\u00e9n", household_income_2006$comuna)
household_income_2006$comuna <- gsub("Los Alamos", "Los \u00c1lamos", household_income_2006$comuna)

# Add provincia and region
household_income_2006 <- join(household_income_2006, regiones_casen_2015, by = "comuna")
household_income_2006 <- household_income_2006[,c("region","provincia","comuna","per_capita_income", "exp_region", "exp_comuna")]

# Fix exp
household_income_2006$exp_comuna <- as.numeric(as.character(household_income_2006$exp_comuna))
household_income_2006$exp_region <- as.numeric(as.character(household_income_2006$exp_region))

household_income_2006$exp_region <- ifelse(household_income_2006$exp_region == 0, 1, household_income_2006$exp_comuna)
household_income_2006$exp_region <- ifelse(is.na(household_income_2006$exp_region), 1, household_income_2006$exp_comuna)

household_income_2006$exp_comuna <- ifelse(household_income_2006$exp_comuna == 0, 1, household_income_2006$exp_comuna)
household_income_2006$exp_comuna <- ifelse(is.na(household_income_2006$exp_comuna), 1, household_income_2006$exp_comuna)
