########
# 2015 #
########

# Paste the relevant columns
household_income_with_weights_2015 <- as.data.frame(cbind(as.character(casen_2015$region), as.character(casen_2015$provincia), as.character(casen_2015$comuna), as.character(casen_2015$ymonecorh/casen_2015$numper), as.character(casen_2015$expr), as.character(casen_2015$expc)))
setnames(household_income_with_weights_2015, colnames(household_income_with_weights_2015), c("region","provincia","comuna","per_capita_income", "exp_region", "exp_comuna"))

# Keep only the people that reported their wage
household_income_with_weights_2015$per_capita_income <- as.numeric(as.character(household_income_with_weights_2015$per_capita_income))
household_income_with_weights_2015 <- subset(household_income_with_weights_2015, household_income_with_weights_2015$per_capita_income > 0)

# Trim leading/ending whitespace + Fix characters/uppercase
household_income_with_weights_2015$region <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", household_income_with_weights_2015$region, perl=TRUE)
household_income_with_weights_2015$region <- gsub("^\\s+|\\s+$", "", household_income_with_weights_2015$region)

household_income_with_weights_2015$provincia <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", household_income_with_weights_2015$provincia, perl=TRUE)
household_income_with_weights_2015$provincia <- gsub("^\\s+|\\s+$", "", household_income_with_weights_2015$provincia)

household_income_with_weights_2015$comuna <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", household_income_with_weights_2015$comuna, perl=TRUE)
household_income_with_weights_2015$comuna <- gsub("^\\s+|\\s+$", "", household_income_with_weights_2015$comuna)

# Fix characters/uppercase
household_income_with_weights_2015$region <- gsub("\xe1", "\u00e1", household_income_with_weights_2015$region) # a with acute
household_income_with_weights_2015$region <- gsub("<e1>", "\u00e1", household_income_with_weights_2015$region) # a with acute
household_income_with_weights_2015$region <- gsub("<c1>", "\u00c1", household_income_with_weights_2015$region) # A with acute
household_income_with_weights_2015$region <- gsub("\xe9", "\u00e9", household_income_with_weights_2015$region) # e with acute
household_income_with_weights_2015$region <- gsub("<e9>", "\u00e9", household_income_with_weights_2015$region) # e with acute
household_income_with_weights_2015$region <- gsub("\xed", "\u00ed", household_income_with_weights_2015$region) # i with acute
household_income_with_weights_2015$region <- gsub("<ed>", "\u00ed", household_income_with_weights_2015$region) # i with acute
household_income_with_weights_2015$region <- gsub("\xf3", "\u00f3", household_income_with_weights_2015$region) # o with acute
household_income_with_weights_2015$region <- gsub("<f3>", "\u00f3", household_income_with_weights_2015$region) # o with acute
household_income_with_weights_2015$region <- gsub("\xfa", "\u00fa", household_income_with_weights_2015$region) # u with acute
household_income_with_weights_2015$region <- gsub("<fa>", "\u00fa", household_income_with_weights_2015$region) # u with acute 
household_income_with_weights_2015$region <- gsub("\xda", "\u00da", household_income_with_weights_2015$region) # U with acute
household_income_with_weights_2015$region <- gsub("<da>", "\u00da", household_income_with_weights_2015$region) # U with acute
household_income_with_weights_2015$region <- gsub("\xf1", "\u00f1", household_income_with_weights_2015$region) # n with tilde
household_income_with_weights_2015$region <- gsub("<f1>", "\u00f1", household_income_with_weights_2015$region) # n with tilde
household_income_with_weights_2015$region <- gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", household_income_with_weights_2015$region) # n with tilde 
household_income_with_weights_2015$region <- gsub("\xd1", "\u00d1", household_income_with_weights_2015$region) # N with tilde
household_income_with_weights_2015$region <- gsub("<d1>", "\u00d1", household_income_with_weights_2015$region) # N with tilde
household_income_with_weights_2015$region <- gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", household_income_with_weights_2015$region) # N with tilde
household_income_with_weights_2015$region <- gsub("\xb4", "\u0027", household_income_with_weights_2015$region) # apostrophe
household_income_with_weights_2015$region <- gsub("<b4>", "\u0027", household_income_with_weights_2015$region) # apostrophe
household_income_with_weights_2015$region <- gsub(" De ", " de ", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub(" Del ", " del ", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub(" La ", " la ", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub(" Los ", " los ", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub(" Y ", " y ", household_income_with_weights_2015$region)

household_income_with_weights_2015$provincia <- gsub("\xe1", "\u00e1", household_income_with_weights_2015$provincia) # a with acute
household_income_with_weights_2015$provincia <- gsub("<e1>", "\u00e1", household_income_with_weights_2015$provincia) # a with acute
household_income_with_weights_2015$provincia <- gsub("<c1>", "\u00c1", household_income_with_weights_2015$provincia) # A with acute
household_income_with_weights_2015$provincia <- gsub("\xe9", "\u00e9", household_income_with_weights_2015$provincia) # e with acute
household_income_with_weights_2015$provincia <- gsub("<e9>", "\u00e9", household_income_with_weights_2015$provincia) # e with acute
household_income_with_weights_2015$provincia <- gsub("\xed", "\u00ed", household_income_with_weights_2015$provincia) # i with acute
household_income_with_weights_2015$provincia <- gsub("<ed>", "\u00ed", household_income_with_weights_2015$provincia) # i with acute
household_income_with_weights_2015$provincia <- gsub("\xf3", "\u00f3", household_income_with_weights_2015$provincia) # o with acute
household_income_with_weights_2015$provincia <- gsub("<f3>", "\u00f3", household_income_with_weights_2015$provincia) # o with acute
household_income_with_weights_2015$provincia <- gsub("\xfa", "\u00fa", household_income_with_weights_2015$provincia) # u with acute
household_income_with_weights_2015$provincia <- gsub("<fa>", "\u00fa", household_income_with_weights_2015$provincia) # u with acute 
household_income_with_weights_2015$provincia <- gsub("\xda", "\u00da", household_income_with_weights_2015$provincia) # U with acute
household_income_with_weights_2015$provincia <- gsub("<da>", "\u00da", household_income_with_weights_2015$provincia) # U with acute
household_income_with_weights_2015$provincia <- gsub("\xf1", "\u00f1", household_income_with_weights_2015$provincia) # n with tilde
household_income_with_weights_2015$provincia <- gsub("<f1>", "\u00f1", household_income_with_weights_2015$provincia) # n with tilde
household_income_with_weights_2015$provincia <- gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", household_income_with_weights_2015$provincia) # n with tilde 
household_income_with_weights_2015$provincia <- gsub("\xd1", "\u00d1", household_income_with_weights_2015$provincia) # N with tilde
household_income_with_weights_2015$provincia <- gsub("<d1>", "\u00d1", household_income_with_weights_2015$provincia) # N with tilde
household_income_with_weights_2015$provincia <- gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", household_income_with_weights_2015$provincia) # N with tilde
household_income_with_weights_2015$provincia <- gsub("\xb4", "\u0027", household_income_with_weights_2015$provincia) # apostrophe
household_income_with_weights_2015$provincia <- gsub("<b4>", "\u0027", household_income_with_weights_2015$provincia) # apostrophe
household_income_with_weights_2015$provincia <- gsub(" De ", " de ", household_income_with_weights_2015$provincia)
household_income_with_weights_2015$provincia <- gsub(" Del ", " del ", household_income_with_weights_2015$provincia)
household_income_with_weights_2015$provincia <- gsub(" La ", " la ", household_income_with_weights_2015$provincia)
household_income_with_weights_2015$provincia <- gsub(" Los ", " los ", household_income_with_weights_2015$provincia)
household_income_with_weights_2015$provincia <- gsub(" Y ", " y ", household_income_with_weights_2015$provincia)

household_income_with_weights_2015$comuna <- gsub("\xe1", "\u00e1", household_income_with_weights_2015$comuna) # a with acute
household_income_with_weights_2015$comuna <- gsub("<e1>", "\u00e1", household_income_with_weights_2015$comuna) # a with acute
household_income_with_weights_2015$comuna <- gsub("<c1>", "\u00c1", household_income_with_weights_2015$comuna) # A with acute
household_income_with_weights_2015$comuna <- gsub("\xe9", "\u00e9", household_income_with_weights_2015$comuna) # e with acute
household_income_with_weights_2015$comuna <- gsub("<e9>", "\u00e9", household_income_with_weights_2015$comuna) # e with acute
household_income_with_weights_2015$comuna <- gsub("\xed", "\u00ed", household_income_with_weights_2015$comuna) # i with acute
household_income_with_weights_2015$comuna <- gsub("<ed>", "\u00ed", household_income_with_weights_2015$comuna) # i with acute
household_income_with_weights_2015$comuna <- gsub("\xf3", "\u00f3", household_income_with_weights_2015$comuna) # o with acute
household_income_with_weights_2015$comuna <- gsub("<f3>", "\u00f3", household_income_with_weights_2015$comuna) # o with acute
household_income_with_weights_2015$comuna <- gsub("\xfa", "\u00fa", household_income_with_weights_2015$comuna) # u with acute
household_income_with_weights_2015$comuna <- gsub("<fa>", "\u00fa", household_income_with_weights_2015$comuna) # u with acute 
household_income_with_weights_2015$comuna <- gsub("\xda", "\u00da", household_income_with_weights_2015$comuna) # U with acute
household_income_with_weights_2015$comuna <- gsub("<da>", "\u00da", household_income_with_weights_2015$comuna) # U with acute
household_income_with_weights_2015$comuna <- gsub("\xf1", "\u00f1", household_income_with_weights_2015$comuna) # n with tilde
household_income_with_weights_2015$comuna <- gsub("<f1>", "\u00f1", household_income_with_weights_2015$comuna) # n with tilde
household_income_with_weights_2015$comuna <- gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", household_income_with_weights_2015$comuna) # n with tilde 
household_income_with_weights_2015$comuna <- gsub("\xd1", "\u00d1", household_income_with_weights_2015$comuna) # N with tilde
household_income_with_weights_2015$comuna <- gsub("<d1>", "\u00d1", household_income_with_weights_2015$comuna) # N with tilde
household_income_with_weights_2015$comuna <- gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", household_income_with_weights_2015$comuna) # N with tilde
household_income_with_weights_2015$comuna <- gsub("\xb4", "\u0027", household_income_with_weights_2015$comuna) # apostrophe
household_income_with_weights_2015$comuna <- gsub("<b4>", "\u0027", household_income_with_weights_2015$comuna) # apostrophe
household_income_with_weights_2015$comuna <- gsub(" De ", " de ", household_income_with_weights_2015$comuna)
household_income_with_weights_2015$comuna <- gsub(" Del ", " del ", household_income_with_weights_2015$comuna)
household_income_with_weights_2015$comuna <- gsub(" La ", " la ", household_income_with_weights_2015$comuna)
household_income_with_weights_2015$comuna <- gsub(" Los ", " los ", household_income_with_weights_2015$comuna)
household_income_with_weights_2015$comuna <- gsub(" Y ", " y ", household_income_with_weights_2015$comuna)

# Fix region
household_income_with_weights_2015$region <- gsub("Regi\u00f3n de Tarapac\u00e1", "Tarapac\u00e1", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n de Atacama", "Atacama", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n de Valpara\u00edso", "Valpara\u00edso", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n del Maule", "Maule", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n de la Araucan\u00eda", "Araucan\u00eda", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n de Ays\u00e9n del Gral. Carlos Ib\u00e1\u00f1ez del Campo", "Ays\u00e9n", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n Metropolitana de Santiago", "Metropolitana", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n de Arica y Parinacota", "Arica y Parinacota", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n de Antofagasta", "Antofagasta", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n de Coquimbo", "Coquimbo", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n del Libertador Gral. Bernardo O Higgins", "O\u0027Higgins", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n del Biob\u00edo", "B\u00edob\u00edo", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n de los Lagos", "Los Lagos", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n de Magallanes y de la Antártica Chilena", "Magallanes", household_income_with_weights_2015$region)
household_income_with_weights_2015$region <- gsub("Regi\u00f3n de los R\u00edos", "Los R\u00edos", household_income_with_weights_2015$region)

# Fix provincia
household_income_with_weights_2015$provincia <- revalue(household_income_with_weights_2015$provincia, c("San Felipe de Aconcagua" = "San Felipe"))
household_income_with_weights_2015$provincia <- revalue(household_income_with_weights_2015$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Fix comuna
household_income_with_weights_2015$comuna <- gsub("Alto Biob\u00edo", "Alto B\u00edob\u00edo", household_income_with_weights_2015$comuna)
household_income_with_weights_2015$comuna <- gsub("Los Alamos", "Los \u00c1lamos", household_income_with_weights_2015$comuna)

# Extract provincia
regiones_casen_2015 <- household_income_with_weights_2015[,c("region","provincia","comuna")]
regiones_casen_2015$region <- as.character(regiones_casen_2015$region)
regiones_casen_2015$provincia <- as.character(regiones_casen_2015$provincia)
regiones_casen_2015$comuna <- as.character(regiones_casen_2015$comuna)
# Here I'm adding by hand some missing information (government's link: http://www.subdere.gov.cl/documentacion/regiones-provincias-y-comunas-de-chile)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("B\u00edob\u00edo","Arauco","Los Alamos"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("B\u00edob\u00edo","B\u00edob\u00edo","Los \u00c1ngeles"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Magallanes","\u00daltima Esperanza","Natales"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Tarapac\u00e1","Tamarugal","Colchane"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Valpara\u00edso","Isla de Pascua","Isla de Pascua"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Los Lagos","Palena","Palena"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Los Lagos","Palena","Futaleuf\u00fa"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Los Lagos","Palena","Hualaihu\u00e9"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Los Lagos","Llanquihue","Cocham\u00f3"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Los Lagos","Palena","Chait\u00e9n"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Magallanes","Magallanes","San Gregorio"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Magallanes","Tierra del Fuego","Primavera"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Magallanes","Ant\u00e1rtica","Cabo de Hornos"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Arica y Parinacota","Parinacota","General Lagos"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Antofagasta","El Loa","Ollag\u00fce"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("Ays\u00e9n","Ays\u00e9n","Ays\u00e9n"), nrow(regiones_casen_2015)+1)
regiones_casen_2015 <- insert_row(regiones_casen_2015, c("O'Higgins","Colchagua","Ch\u00e9pica"), nrow(regiones_casen_2015)+1)

regiones_casen_2015 <- regiones_casen_2015[!duplicated(regiones_casen_2015[,"comuna"]),]
regiones_casen_2015 <- regiones_casen_2015[complete.cases(regiones_casen_2015),]

# Fix exp
household_income_with_weights_2015$exp_comuna <- as.numeric(as.character(household_income_with_weights_2015$exp_comuna))
household_income_with_weights_2015$exp_region <- as.numeric(as.character(household_income_with_weights_2015$exp_region))

household_income_with_weights_2015$exp_region <- ifelse(household_income_with_weights_2015$exp_region == 0, 1, household_income_with_weights_2015$exp_comuna)
household_income_with_weights_2015$exp_region <- ifelse(is.na(household_income_with_weights_2015$exp_region), 1, household_income_with_weights_2015$exp_comuna)

household_income_with_weights_2015$exp_comuna <- ifelse(household_income_with_weights_2015$exp_comuna == 0, 1, household_income_with_weights_2015$exp_comuna)
household_income_with_weights_2015$exp_comuna <- ifelse(is.na(household_income_with_weights_2015$exp_comuna), 1, household_income_with_weights_2015$exp_comuna)
