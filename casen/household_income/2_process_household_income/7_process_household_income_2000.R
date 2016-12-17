########
# 2000 #
########

# Paste the relevant columns
household_income_2000 <- as.data.frame(cbind(as.character(casen_2000$comu), as.character(casen_2000$ymonehaj/casen_2000$numper), as.character(casen_2000$expc), as.character(casen_2000$expr)))
setnames(household_income_2000, colnames(household_income_2000), c("comuna","per_capita_income", "exp_region", "exp_comuna"))

# Keep only the households that reported their wage
household_income_2000$per_capita_income <- as.numeric(as.character(household_income_2000$per_capita_income))
household_income_2000 <- subset(household_income_2000, household_income_2000$per_capita_income > 0)

# Trim leading/ending whitespace
household_income_2000$comuna <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", household_income_2000$comuna, perl=TRUE)
household_income_2000$comuna <- gsub("^\\s+|\\s+$", "", household_income_2000$comuna)

# Fix characters/uppercase
household_income_2000$comuna <- gsub("\xe1", "\u00e1", household_income_2000$comuna) # a with acute
household_income_2000$comuna <- gsub("<e1>", "\u00e1", household_income_2000$comuna) # a with acute
household_income_2000$comuna <- gsub("<c1>", "\u00c1", household_income_2000$comuna) # A with acute
household_income_2000$comuna <- gsub("\xe9", "\u00e9", household_income_2000$comuna) # e with acute
household_income_2000$comuna <- gsub("<e9>", "\u00e9", household_income_2000$comuna) # e with acute
household_income_2000$comuna <- gsub("\xed", "\u00ed", household_income_2000$comuna) # i with acute
household_income_2000$comuna <- gsub("<ed>", "\u00ed", household_income_2000$comuna) # i with acute
household_income_2000$comuna <- gsub("\xf3", "\u00f3", household_income_2000$comuna) # o with acute
household_income_2000$comuna <- gsub("<f3>", "\u00f3", household_income_2000$comuna) # o with acute
household_income_2000$comuna <- gsub("\xfa", "\u00fa", household_income_2000$comuna) # u with acute
household_income_2000$comuna <- gsub("<fa>", "\u00fa", household_income_2000$comuna) # u with acute 
household_income_2000$comuna <- gsub("\xda", "\u00da", household_income_2000$comuna) # U with acute
household_income_2000$comuna <- gsub("<da>", "\u00da", household_income_2000$comuna) # U with acute
household_income_2000$comuna <- gsub("\xf1", "\u00f1", household_income_2000$comuna) # n with tilde
household_income_2000$comuna <- gsub("<f1>", "\u00f1", household_income_2000$comuna) # n with tilde
household_income_2000$comuna <- gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", household_income_2000$comuna) # n with tilde 
household_income_2000$comuna <- gsub("\xd1", "\u00d1", household_income_2000$comuna) # N with tilde
household_income_2000$comuna <- gsub("<d1>", "\u00d1", household_income_2000$comuna) # N with tilde
household_income_2000$comuna <- gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", household_income_2000$comuna) # N with tilde
household_income_2000$comuna <- gsub("\xb4", "\u0027", household_income_2000$comuna) # apostrophe
household_income_2000$comuna <- gsub("<b4>", "\u0027", household_income_2000$comuna) # apostrophe
household_income_2000$comuna <- gsub(" De ", " de ", household_income_2000$comuna)
household_income_2000$comuna <- gsub(" Del ", " del ", household_income_2000$comuna)
household_income_2000$comuna <- gsub(" La ", " la ", household_income_2000$comuna)
household_income_2000$comuna <- gsub(" Los ", " los ", household_income_2000$comuna)
household_income_2000$comuna <- gsub(" Y ", " y ", household_income_2000$comuna)

# Fix comuna

# a
household_income_2000$comuna <- gsub("Combarbala", "Combarbal\u00e1", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Chillan", "Chill\u00e1n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Combarbala", "Combarbal\u00e1", household_income_2000$comuna)
household_income_2000$comuna <- gsub("San Fabian", "San Fabi\u00e1n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Ranquil", "R\u00e1nquil", household_income_2000$comuna)
household_income_2000$comuna <- gsub("San Nicolas", "San Nicol\u00e1s", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Santa Barbara", "Santa B\u00e1rbara", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Los Angeles", "Los \u00c1ngeles", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Los Alamos", "Los \u00c1lamos", household_income_2000$comuna)

# e
household_income_2000$comuna <- gsub("Alhue", "Alhu\u00e9", household_income_2000$comuna)
household_income_2000$comuna <- gsub("San Jose de Maipo", "San Jos\u00e9 de Maipo", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Puerto Aisen", "Ays\u00e9n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Puren", "Pur\u00e9n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Quilpue", "Quilpu\u00e9", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Olmue", "Olmu\u00e9", household_income_2000$comuna)
household_income_2000$comuna <- gsub("\u00d1iquen", "\u00d1iqu\u00e9n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Licanten", "Licant\u00e9n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Vichuquen", "Vichuqu\u00e9n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Mulchen", "Mulch\u00e9n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Tome", "Tom\u00e9", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Traiguen", "Traigu\u00e9n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Pitrufquen", "Pitrufqu\u00e9n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Tolten", "Tolt\u00e9n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Curaco de Velez", "Curaco de V\u00e9lez", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Hualaihue", "Hualaihu\u00e9", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Chepica", "Ch\u00e9pica", household_income_2000$comuna)

# i
household_income_2000$comuna <- gsub("Maullin", "Maull\u00edn", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Rio Bueno", "R\u00edo Bueno", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Rio Negro", "R\u00edo Negro", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Rio Claro", "R\u00edo Claro", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Rio Hurtado", "R\u00edo Hurtado", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Maria Pinto", "Mar\u00eda Pinto", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Santa Maria", "Santa Mar\u00eda", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Maria Elena", "Mar\u00eda Elena", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Curacavi", "Curacav\u00ed", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Conchali", "Conchal\u00ed", household_income_2000$comuna)
household_income_2000$comuna <- gsub("San Joaquin", "San Joaqu\u00edn", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Valparaiso", "Valpara\u00edso", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Puchuncavi", "Puchuncav\u00ed", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Longavi", "Longav\u00ed", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Machali", "Machal\u00ed", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Requinoa", "Requ\u00ednoa", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Curacautin", "Curacaut\u00edn", household_income_2000$comuna)

# o
household_income_2000$comuna <- gsub("San Ramon", "San Ram\u00f3n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("La Union", "La Uni\u00f3n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Estacion Central", "Estaci\u00f3n Central", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Copiapo", "Copiap\u00f3", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Con -con", "Conc\u00f3n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Curico", "Curic\u00f3", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Constitucion", "Constituci\u00f3n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Quillon", "Quill\u00f3n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Concepcion", "Concepci\u00f3n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Pucon", "Puc\u00f3n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Cochamo", "Cocham\u00f3", household_income_2000$comuna)

# u
household_income_2000$comuna <- gsub("Maipu", "Maip\u00fa", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Vilcun", "Vilc\u00fan", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Colbun", "Colb\u00fan", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Tirua", "Tir\u00faa", household_income_2000$comuna)

# ñ
household_income_2000$comuna <- gsub("Cami\u00d1a", "Cami\u00f1a", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Cha\u00d1aral", "Cha\u00f1aral", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Vicu\u00d1a", "Vicu\u00f1a", household_income_2000$comuna)
household_income_2000$comuna <- gsub("\u00d1u\u00d1oa", "\u00d1u\u00f1oa", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Pe\u00d1aflor", "Pe\u00f1aflor", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Pe\u00d1alolen", "Pe\u00f1alol\u00e9n", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Vi\u00d1a del Mar", "Vi\u00f1a del Mar", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Do\u00d1ihue", "Do\u00f1ihue", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Huala\u00d1e", "Huala\u00f1\u00e9", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Puerto Iba\u00d1ez", "R\u00edo Ib\u00e1\u00f1ez", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Ca\u00d1ete", "Ca\u00f1ete", household_income_2000$comuna)

household_income_2000$comuna <- gsub("Paihuano", "Paiguano", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Coihaique", "Coyhaique", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Llay-llay", "Llaillay", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Trehuaco", "Treguaco", household_income_2000$comuna)
household_income_2000$comuna <- gsub("Puerto Cisnes", "Cisnes", household_income_2000$comuna)

# Add provincia and region
household_income_2000 <- join(household_income_2000, regiones_casen_2015, by = "comuna")
household_income_2000 <- household_income_2000[,c("region","provincia","comuna","per_capita_income", "exp_region", "exp_comuna")]

# Fix exp
household_income_2000$exp_comuna <- as.numeric(as.character(household_income_2000$exp_comuna))
household_income_2000$exp_region <- as.numeric(as.character(household_income_2000$exp_region))

household_income_2000$exp_region <- ifelse(household_income_2000$exp_region == 0, 1, household_income_2000$exp_comuna)
household_income_2000$exp_region <- ifelse(is.na(household_income_2000$exp_region), 1, household_income_2000$exp_comuna)

household_income_2000$exp_comuna <- ifelse(household_income_2000$exp_comuna == 0, 1, household_income_2000$exp_comuna)
household_income_2000$exp_comuna <- ifelse(is.na(household_income_2000$exp_comuna), 1, household_income_2000$exp_comuna)
