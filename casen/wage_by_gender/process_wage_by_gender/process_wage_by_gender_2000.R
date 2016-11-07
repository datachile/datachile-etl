########
# 2000 #
########

# Paste the two relevant columns here (region and household's income)
wage_by_gender_2000 <- as.data.frame(cbind(as.character(casen_2000$comu), as.character(casen_2000$yopraj), as.character(casen_2000$oficio), as.character(casen_2000$sexo)))
setnames(wage_by_gender_2000, colnames(wage_by_gender_2000), c("comuna","ingreso_ocup_principal", "oficio_id", "sexo"))

# Trim leading/ending whitespace
#wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) iconv(x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix characters/uppercase
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("<e1>", "\u00e1", x))) # a with acute
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("<c1>", "\u00c1", x))) # A with acute
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("<e9>", "\u00e9", x))) # e with acute
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("\xed", "\u00ed", x))) # i with acute
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("<ed>", "\u00ed", x))) # i with acute
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("<f3>", "\u00f3", x))) # o with acute
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("\xfa", "\u00fa", x))) # u with acute
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("<fa>", "\u00fa", x))) # u with acute 
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("\xda", "\u00da", x))) # U with acute
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("<da>", "\u00da", x))) # U with acute
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("\xf1", "\u00f1", x))) # n with tilde
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("<f1>", "\u00f1", x))) # n with tilde
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("\xd1", "\u00d1", x))) # N with tilde
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("<d1>", "\u00d1", x))) # N with tilde
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("\xb4", "\u0027", x))) # apostrophe
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("<b4>", "\u0027", x))) # apostrophe
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub(" De ", " de ", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub(" Del ", " del ", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub(" La ", " la ", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub(" Los ", " los ", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub(" Y ", " y ", x)))

# Fix comuna

# a
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Combarbala", "Combarbal\u00e1", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Chillan", "Chill\u00e1n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Combarbala", "Combarbal\u00e1", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("San Fabian", "San Fabi\u00e1n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Ranquil", "R\u00e1nquil", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("San Nicolas", "San Nicol\u00e1s", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Santa Barbara", "Santa B\u00e1rbara", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Los Angeles", "Los \u00c1ngeles", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Los Alamos", "Los \u00c1lamos", x)))

# e
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Alhue", "Alhu\u00e9", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("San Jose de Maipo", "San Jos\u00e9 de Maipo", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Puerto Aisen", "Ays\u00e9n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Puren", "Pur\u00e9n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Quilpue", "Quilpu\u00e9", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Olmue", "Olmu\u00e9", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("\u00d1iquen", "\u00d1iqu\u00e9n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Licanten", "Licant\u00e9n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Vichuquen", "Vichuqu\u00e9n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Mulchen", "Mulch\u00e9n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Tome", "Tom\u00e9", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Traiguen", "Traigu\u00e9n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Pitrufquen", "Pitrufqu\u00e9n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Tolten", "Tolt\u00e9n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Curaco de Velez", "Curaco de V\u00e9lez", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Hualaihue", "Hualaihu\u00e9", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Chepica", "Ch\u00e9pica", x)))

# i
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Maullin", "Maull\u00edn", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Rio Bueno", "R\u00edo Bueno", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Rio Negro", "R\u00edo Negro", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Rio Claro", "R\u00edo Claro", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Rio Hurtado", "R\u00edo Hurtado", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Maria Pinto", "Mar\u00eda Pinto", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Santa Maria", "Santa Mar\u00eda", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Maria Elena", "Mar\u00eda Elena", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Curacavi", "Curacav\u00ed", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Conchali", "Conchal\u00ed", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("San Joaquin", "San Joaqu\u00edn", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Valparaiso", "Valpara\u00edso", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Puchuncavi", "Puchuncav\u00ed", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Longavi", "Longav\u00ed", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Machali", "Machal\u00ed", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Requinoa", "Requ\u00ednoa", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Curacautin", "Curacaut\u00edn", x)))

# o
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("San Ramon", "San Ram\u00f3n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("La Union", "La Uni\u00f3n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Estacion Central", "Estaci\u00f3n Central", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Copiapo", "Copiap\u00f3", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Con -con", "Conc\u00f3n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Curico", "Curic\u00f3", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Constitucion", "Constituci\u00f3n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Quillon", "Quill\u00f3n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Concepcion", "Concepci\u00f3n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Pucon", "Puc\u00f3n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Cochamo", "Cocham\u00f3", x)))

# u
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Maipu", "Maip\u00fa", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Vilcun", "Vilc\u00fan", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Colbun", "Colb\u00fan", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Tirua", "Tir\u00faa", x)))

# ñ
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Cami\u00d1a", "Cami\u00f1a", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Cha\u00d1aral", "Cha\u00f1aral", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Vicu\u00d1a", "Vicu\u00f1a", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("\u00d1u\u00d1oa", "\u00d1u\u00f1oa", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Pe\u00d1aflor", "Pe\u00f1aflor", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Pe\u00d1alolen", "Pe\u00f1alol\u00e9n", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Vi\u00d1a del Mar", "Vi\u00f1a del Mar", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Do\u00d1ihue", "Do\u00f1ihue", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Huala\u00d1e", "Huala\u00f1\u00e9", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Puerto Iba\u00d1ez", "R\u00edo Ib\u00e1\u00f1ez", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Ca\u00d1ete", "Ca\u00f1ete", x)))

wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Paihuano", "Paiguano", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Coihaique", "Coyhaique", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Llay-llay", "Llaillay", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Trehuaco", "Treguaco", x)))
wage_by_gender_2000 <- as.data.frame(lapply(wage_by_gender_2000, function(x) gsub("Puerto Cisnes", "Cisnes", x)))

# Add provincia and region
wage_by_gender_2000 <- join(wage_by_gender_2000, regiones_casen_2015, by = "comuna")
wage_by_gender_2000 <- wage_by_gender_2000[,c("comuna","provincia","region","ingreso_ocup_principal")]

# Keep only the households that reported their income
wage_by_gender_2000$ingreso_ocup_principal <- as.numeric(as.character(wage_by_gender_2000$ingreso_ocup_principal))
wage_by_gender_2000 <- subset(wage_by_gender_2000, wage_by_gender_2000$ingreso_ocup_principal > 0)
