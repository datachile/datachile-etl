########
# 2009 #
########

# Paste the relevant columns
household_income_with_weights_2009 <- as.data.frame(cbind(as.character(casen_2009$comu), as.character(casen_2009$ymonehaj/casen_2009$numper), as.character(casen_2009$expc), as.character(casen_2009$expr)))
setnames(household_income_with_weights_2009, colnames(household_income_with_weights_2009), c("comuna","per_capita_income", "exp_region", "exp_comuna"))

# Trim leading/ending whitespace
#household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) iconv(x)))
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix characters/uppercase
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("<e1>", "\u00e1", x))) # a with acute
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("<c1>", "\u00c1", x))) # A with acute
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("<e9>", "\u00e9", x))) # e with acute
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("<ed>", "\u00ed", x))) # i with acute
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("<f3>", "\u00f3", x))) # o with acute
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("\xfa", "\u00fa", x))) # u with acute
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("<fa>", "\u00fa", x))) # u with acute 
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("\xda", "\u00da", x))) # U with acute
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("<da>", "\u00da", x))) # U with acute
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("\xf1", "\u00f1", x))) # n with tilde
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("<f1>", "\u00f1", x))) # n with tilde
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("\xd1", "\u00d1", x))) # N with tilde
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("<d1>", "\u00d1", x))) # N with tilde
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("\xb4", "\u0027", x))) # apostrophe
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("<b4>", "\u0027", x))) # apostrophe
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub(" De ", " de ", x)))
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub(" Del ", " del ", x)))
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub(" La ", " la ", x)))
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub(" Los ", " los ", x)))
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub(" Y ", " y ", x)))
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("\xfc", "\u00fc", x))) # u with diaeresis
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("<fc>", "\u00fc", x))) # u with diaeresis

# Fix comuna
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("Alto B\u00edo B\u00edo", "Alto B\u00edob\u00edo", x)))
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("Trehuaco", "Treguaco", x)))
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("La Calera", "Calera", x)))
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("Llay Llay", "Llaillay", x)))
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("Paihuano", "Paiguano", x)))
household_income_with_weights_2009 <- as.data.frame(lapply(household_income_with_weights_2009, function(x) gsub("Los Alamos", "Los \u00c1lamos", x)))

# Add provincia and region
household_income_with_weights_2009 <- join(household_income_with_weights_2009, regiones_casen_2015, by = "comuna")
household_income_with_weights_2009 <- household_income_with_weights_2009[,c("region","provincia","comuna","per_capita_income", "exp_region", "exp_comuna")]

# Keep only the households that reported their wage
household_income_with_weights_2009$per_capita_income <- as.numeric(as.character(household_income_with_weights_2009$per_capita_income))
household_income_with_weights_2009 <- subset(household_income_with_weights_2009, household_income_with_weights_2009$per_capita_income > 0)

# Fix exp
household_income_with_weights_2009$exp_comuna <- as.numeric(as.character(household_income_with_weights_2009$exp_comuna))
household_income_with_weights_2009$exp_region <- as.numeric(as.character(household_income_with_weights_2009$exp_region))

household_income_with_weights_2009$exp_region <- ifelse(household_income_with_weights_2009$exp_region == 0, 1, household_income_with_weights_2009$exp_comuna)
household_income_with_weights_2009$exp_region <- ifelse(is.na(household_income_with_weights_2009$exp_region), 1, household_income_with_weights_2009$exp_comuna)

household_income_with_weights_2009$exp_comuna <- ifelse(household_income_with_weights_2009$exp_comuna == 0, 1, household_income_with_weights_2009$exp_comuna)
household_income_with_weights_2009$exp_comuna <- ifelse(is.na(household_income_with_weights_2009$exp_comuna), 1, household_income_with_weights_2009$exp_comuna)
