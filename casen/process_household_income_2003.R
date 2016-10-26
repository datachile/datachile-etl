########
# 2003 #
########

# Paste the two relevant columns here (region and household's income)
household_income_2003 <- as.data.frame(cbind(as.character(casen_2003$comu), as.character(casen_2003$ymonehaj/casen_2003$numper)))
setnames(household_income_2003, colnames(household_income_2003), c("comuna","ingreso_pc"))

# Trim leading/ending whitespace
#household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) iconv(x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix characters/uppercase
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("<e1>", "\u00e1", x))) # a with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("<c1>", "\u00c1", x))) # A with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("<e9>", "\u00e9", x))) # e with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("<ed>", "\u00ed", x))) # i with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("<f3>", "\u00f3", x))) # o with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xfa", "\u00fa", x))) # u with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("<fa>", "\u00fa", x))) # u with acute 
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xda", "\u00da", x))) # U with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("<da>", "\u00da", x))) # U with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xf1", "\u00f1", x))) # n with tilde
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("<f1>", "\u00f1", x))) # n with tilde
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xd1", "\u00d1", x))) # N with tilde
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("<d1>", "\u00d1", x))) # N with tilde
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xb4", "\u0027", x))) # apostrophe
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("<b4>", "\u0027", x))) # apostrophe
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub(" De ", " de ", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub(" Del ", " del ", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub(" La ", " la ", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub(" Los ", " los ", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub(" Y ", " y ", x)))

# Fix comuna
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("Paihuano", "Paiguano", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("Trehuaco", "Treguaco", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("Los Angeles", "Los \u00c1ngeles", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("Teodoro Schimdt", "Teodoro Schmidt", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("Imperial", "Nueva Imperial", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("Puerto Ais\u00e9n", "Ays\u00e9n", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("Los Alamos", "Los \u00c1lamos", x)))

# Add provincia and region
household_income_2003 <- join(household_income_2003, regiones_casen_2015, by = "comuna")
household_income_2003 <- household_income_2003[,c("comuna","provincia","region","ingreso_pc")]

# Keep only the households that reported their income
household_income_2003$ingreso_pc <- as.numeric(as.character(household_income_2003$ingreso_pc))
household_income_2003 <- subset(household_income_2003, household_income_2003$ingreso_pc > 0)
