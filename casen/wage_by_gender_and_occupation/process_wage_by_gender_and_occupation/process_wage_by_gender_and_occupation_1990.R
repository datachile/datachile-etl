########
# 1990 #
########

# Paste the relevant columns here (region, provincia, comuna, wage, occupation and  sex)
wage_by_gender_and_occupation_1990 <- as.data.frame(cbind(as.character(casen_1990$comu), as.character(casen_1990$yopraj), as.character(casen_1990$oficio), as.character(casen_1990$sexo)))
setnames(wage_by_gender_and_occupation_1990, colnames(wage_by_gender_and_occupation_1990), c("comuna","ingreso_ocup_principal", "oficio", "sexo"))

# Trim leading/ending whitespace + Fix uppercase
#wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) iconv(x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix characters/uppercase
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("<e1>", "\u00e1", x))) # a with acute
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("<c1>", "\u00c1", x))) # A with acute
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("<e9>", "\u00e9", x))) # e with acute
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("\xed", "\u00ed", x))) # i with acute
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("<ed>", "\u00ed", x))) # i with acute
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("<f3>", "\u00f3", x))) # o with acute
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("\xfa", "\u00fa", x))) # u with acute
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("<fa>", "\u00fa", x))) # u with acute 
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("\xda", "\u00da", x))) # U with acute
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("<da>", "\u00da", x))) # U with acute
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("\xf1", "\u00f1", x))) # n with tilde
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("<f1>", "\u00f1", x))) # n with tilde
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("\xd1", "\u00d1", x))) # N with tilde
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("<d1>", "\u00d1", x))) # N with tilde
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("\xb4", "\u0027", x))) # apostrophe
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("<b4>", "\u0027", x))) # apostrophe
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub(" De ", " de ", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub(" Del ", " del ", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub(" La ", " la ", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub(" Los ", " los ", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub(" Y ", " y ", x)))

# Fix comuna
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("CorTarapac\u00e1l", "Coronel", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("Los Angeles", "Los \u00c1ngeles", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("Los Lagoso", "Los Lagos", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("MejillTarapac\u00e1s", "Mejillones", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("Teodoro Schimdt", "Teodoro Schmidt", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("Puerto Ais\u00e9n", "Ays\u00e9n", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("ParedTarapac\u00e1s", "Paredones", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("Los Alamos", "Los \u00c1lamos", x)))

# Add provincia and region
wage_by_gender_and_occupation_1990 <- join(wage_by_gender_and_occupation_1990, regiones_casen_2015, by = "comuna")
wage_by_gender_and_occupation_1990 <- wage_by_gender_and_occupation_1990[,c("comuna","provincia","region","ingreso_ocup_principal", "oficio", "sexo")]

# Fix oficio
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("Agricultores y  y Trabajadores Calificados", "Trabajadores Agropecuarios y Pesqueros", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("Comerciantes y Vendedores", "Trabajadores de Servicios y Vendedores", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("Ff.aa.", "Fuerzas Armadas", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("Miembros del Poder Ejecutivo", "Miembros del Poder Ejecutivo y Cuerpos Legislativos", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("Oficiales, Operarios y Artesanos", "Trabajadores de Artes Mec\u00e1nicas y Otros", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("Operadores y Montadores", "Operadores y Montadores de Instalaciones y M\u00e1quinas", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("Profesionales y Cient\u00edficos", "Profesionales, Cient\u00edficos e Intelectuales", x)))
wage_by_gender_and_occupation_1990 <- as.data.frame(lapply(wage_by_gender_and_occupation_1990, function(x) gsub("T\u00e9cnicos y Profesionales Nivel Medio", "T\u00e9cnicos y Profesionales de Nivel Medio", x)))

# Keep only the households that reported their wage
wage_by_gender_and_occupation_1990$ingreso_ocup_principal <- as.numeric(as.character(wage_by_gender_and_occupation_1990$ingreso_ocup_principal))
wage_by_gender_and_occupation_1990 <- subset(wage_by_gender_and_occupation_1990, wage_by_gender_and_occupation_1990$ingreso_ocup_principal > 0)
