########
# 1998 #
########

# Paste the two relevant columns here (region and household's income)
wage_by_gender_and_occupation_1998 <- as.data.frame(cbind(as.character(casen_1998$comu), as.character(casen_1998$yopraj), as.character(casen_1998$oficio), as.character(casen_1998$sexo)))
setnames(wage_by_gender_and_occupation_1998, colnames(wage_by_gender_and_occupation_1998), c("comuna","ingreso_ocup_principal", "oficio", "sexo"))

# Trim leading/ending whitespace
#wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) iconv(x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix characters/uppercase
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("<e1>", "\u00e1", x))) # a with acute
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("<c1>", "\u00c1", x))) # A with acute
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("<e9>", "\u00e9", x))) # e with acute
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("\xed", "\u00ed", x))) # i with acute
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("<ed>", "\u00ed", x))) # i with acute
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("<f3>", "\u00f3", x))) # o with acute
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("\xfa", "\u00fa", x))) # u with acute
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("<fa>", "\u00fa", x))) # u with acute 
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("\xda", "\u00da", x))) # U with acute
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("<da>", "\u00da", x))) # U with acute
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("\xf1", "\u00f1", x))) # n with tilde
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("<f1>", "\u00f1", x))) # n with tilde
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("\xd1", "\u00d1", x))) # N with tilde
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("<d1>", "\u00d1", x))) # N with tilde
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("\xb4", "\u0027", x))) # apostrophe
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("<b4>", "\u0027", x))) # apostrophe
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub(" De ", " de ", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub(" Del ", " del ", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub(" La ", " la ", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub(" Los ", " los ", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub(" Y ", " y ", x)))

# Fix comuna
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("Paihuano", "Paiguano", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("Trehuaco", "Treguaco", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("Los Angeles", "Los \u00c1ngeles", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("Imperial", "Nueva Imperial", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("Puerto Ais\u00e9n", "Ays\u00e9n", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("Los Alamos", "Los \u00c1lamos", x)))

# Add provincia and region
wage_by_gender_and_occupation_1998 <- join(wage_by_gender_and_occupation_1998, regiones_casen_2015, by = "comuna")
wage_by_gender_and_occupation_1998 <- wage_by_gender_and_occupation_1998[,c("comuna","provincia","region","ingreso_ocup_principal", "oficio", "sexo")]

# Fix oficio
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("Agricultores y Trabajadores Calificados Agropecuarios y Pesq", "Trabajadores Agropecuarios y Pesqueros", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("Miembros del Poder Ejecutivo, Legislativo y Directivo Admini", "Miembros del Poder Ejecutivo y Cuerpos Legislativos", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("Oficiales, Operarios y Artesanos de Artes, Mec\u00e1nicas y de Ot", "Trabajadores de Artes Mec\u00e1nicas y Otros", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("Operadores y Montadores de Instalaciones y Maquinaria", "Operadores y Montadores de Instalaciones y M\u00e1quinas", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("Profesionales, Cientificos E Intelectuales", "Profesionales, Cient\u00edficos e Intelectuales", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("T\u00e9cnicos y Profesionales de Nivel Medio", "T\u00e9cnicos y Profesionales de Nivel Medio", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("Trabajadores de los Servicios y Vendedores de Comercio y Mer", "Trabajadores de Servicios y Vendedores", x)))
wage_by_gender_and_occupation_1998 <- as.data.frame(lapply(wage_by_gender_and_occupation_1998, function(x) gsub("Sin Respuesta", NA, x)))

# Keep only the households that reported their wage
wage_by_gender_and_occupation_1998$ingreso_ocup_principal <- as.numeric(as.character(wage_by_gender_and_occupation_1998$ingreso_ocup_principal))
wage_by_gender_and_occupation_1998 <- subset(wage_by_gender_and_occupation_1998, wage_by_gender_and_occupation_1998$ingreso_ocup_principal > 0)
