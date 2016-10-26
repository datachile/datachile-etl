########
# 2000 #
########

# Paste the two relevant columns here (region and household's income)
household_income_2000 <- as.data.frame(cbind(as.character(casen_2000$comu), as.character(casen_2000$yoprhaj/casen_2000$numper)))
setnames(household_income_2000, colnames(household_income_2000), c("comuna","ingreso_pc"))

# Trim leading/ending whitespace
#household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) iconv(x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix characters/uppercase
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("<e1>", "\u00e1", x))) # a with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("<c1>", "\u00c1", x))) # A with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("<e9>", "\u00e9", x))) # e with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("<ed>", "\u00ed", x))) # i with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("<f3>", "\u00f3", x))) # o with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xfa", "\u00fa", x))) # u with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("<fa>", "\u00fa", x))) # u with acute 
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xda", "\u00da", x))) # U with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("<da>", "\u00da", x))) # U with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xf1", "\u00f1", x))) # n with tilde
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("<f1>", "\u00f1", x))) # n with tilde
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xd1", "\u00d1", x))) # N with tilde
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("<d1>", "\u00d1", x))) # N with tilde
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xb4", "\u0027", x))) # apostrophe
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("<b4>", "\u0027", x))) # apostrophe
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub(" De ", " de ", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub(" Del ", " del ", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub(" La ", " la ", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub(" Los ", " los ", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub(" Y ", " y ", x)))

# Fix comuna

# a
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Combarbala", "Combarbal\u00e1", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Chillan", "Chill\u00e1n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Combarbala", "Combarbal\u00e1", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("San Fabian", "San Fabi\u00e1n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Ranquil", "R\u00e1nquil", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("San Nicolas", "San Nicol\u00e1s", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Santa Barbara", "Santa B\u00e1rbara", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Los Angeles", "Los \u00c1ngeles", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Los Alamos", "Los \u00c1lamos", x)))

# e
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Alhue", "Alhu\u00e9", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("San Jose de Maipo", "San Jos\u00e9 de Maipo", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Puerto Aisen", "Ays\u00e9n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Puren", "Pur\u00e9n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Quilpue", "Quilpu\u00e9", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Olmue", "Olmu\u00e9", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\u00d1iquen", "\u00d1iqu\u00e9n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Licanten", "Licant\u00e9n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Vichuquen", "Vichuqu\u00e9n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Mulchen", "Mulch\u00e9n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Tome", "Tom\u00e9", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Traiguen", "Traigu\u00e9n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Pitrufquen", "Pitrufqu\u00e9n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Tolten", "Tolt\u00e9n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Curaco de Velez", "Curaco de V\u00e9lez", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Hualaihue", "Hualaihu\u00e9", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Chepica", "Ch\u00e9pica", x)))

# i
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Maullin", "Maull\u00edn", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Rio Bueno", "R\u00edo Bueno", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Rio Negro", "R\u00edo Negro", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Rio Claro", "R\u00edo Claro", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Rio Hurtado", "R\u00edo Hurtado", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Maria Pinto", "Mar\u00eda Pinto", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Santa Maria", "Santa Mar\u00eda", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Maria Elena", "Mar\u00eda Elena", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Curacavi", "Curacav\u00ed", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Conchali", "Conchal\u00ed", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("San Joaquin", "San Joaqu\u00edn", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Valparaiso", "Valpara\u00edso", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Puchuncavi", "Puchuncav\u00ed", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Longavi", "Longav\u00ed", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Machali", "Machal\u00ed", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Requinoa", "Requ\u00ednoa", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Curacautin", "Curacaut\u00edn", x)))

# o
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("San Ramon", "San Ram\u00f3n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("La Union", "La Uni\u00f3n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Estacion Central", "Estaci\u00f3n Central", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Copiapo", "Copiap\u00f3", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Con -con", "Conc\u00f3n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Curico", "Curic\u00f3", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Constitucion", "Constituci\u00f3n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Quillon", "Quill\u00f3n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Concepcion", "Concepci\u00f3n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Pucon", "Puc\u00f3n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Cochamo", "Cocham\u00f3", x)))

# u
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Maipu", "Maip\u00fa", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Vilcun", "Vilc\u00fan", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Colbun", "Colb\u00fan", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Tirua", "Tir\u00faa", x)))

# ñ
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Cami\u00d1a", "Cami\u00f1a", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Cha\u00d1aral", "Cha\u00f1aral", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Vicu\u00d1a", "Vicu\u00f1a", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\u00d1u\u00d1oa", "\u00d1u\u00f1oa", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Pe\u00d1aflor", "Pe\u00f1aflor", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Pe\u00d1alolen", "Pe\u00f1alol\u00e9n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Vi\u00d1a del Mar", "Vi\u00f1a del Mar", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Do\u00d1ihue", "Do\u00f1ihue", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Huala\u00d1e", "Huala\u00f1\u00e9", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Puerto Iba\u00d1ez", "R\u00edo Ib\u00e1\u00f1ez", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Ca\u00d1ete", "Ca\u00f1ete", x)))

household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Paihuano", "Paiguano", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Coihaique", "Coyhaique", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Llay-llay", "Llaillay", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Trehuaco", "Treguaco", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("Puerto Cisnes", "Cisnes", x)))

# Add provincia and region
household_income_2000 <- join(household_income_2000, regiones_casen_2015, by = "comuna")
household_income_2000 <- household_income_2000[,c("comuna","provincia","region","ingreso_pc")]

# Keep only the households that reported their income
household_income_2000$ingreso_pc <- as.numeric(as.character(household_income_2000$ingreso_pc))
household_income_2000 <- subset(household_income_2000, household_income_2000$ingreso_pc > 0)
