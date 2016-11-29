########
# 2006 #
########

# Paste the relevant columns
wage_by_gender_with_weights_2006 <- as.data.frame(cbind(as.character(casen_2006$comu), as.character(casen_2006$yopraj), as.character(casen_2006$sexo), as.character(casen_2006$expr), as.character(casen_2006$expc)))
setnames(wage_by_gender_with_weights_2006, colnames(wage_by_gender_with_weights_2006), c("comuna","individual_income", "sex", "exp_region", "exp_comuna"))

# Trim leading/ending whitespace
#wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) iconv(x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix characters/uppercase
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("<e1>", "\u00e1", x))) # a with acute
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("<c1>", "\u00c1", x))) # A with acute
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("<e9>", "\u00e9", x))) # e with acute
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("\xed", "\u00ed", x))) # i with acute
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("<ed>", "\u00ed", x))) # i with acute
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("<f3>", "\u00f3", x))) # o with acute
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("\xfa", "\u00fa", x))) # u with acute
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("<fa>", "\u00fa", x))) # u with acute 
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("\xda", "\u00da", x))) # U with acute
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("<da>", "\u00da", x))) # U with acute
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("\xf1", "\u00f1", x))) # n with tilde
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("<f1>", "\u00f1", x))) # n with tilde
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("\xd1", "\u00d1", x))) # N with tilde
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("<d1>", "\u00d1", x))) # N with tilde
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("\xb4", "\u0027", x))) # apostrophe
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("<b4>", "\u0027", x))) # apostrophe
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub(" De ", " de ", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub(" Del ", " del ", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub(" La ", " la ", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub(" Los ", " los ", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub(" Y ", " y ", x)))

# Fix characters/uppercase
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("tarapac\u00e1", "Tarapac\u00e1", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("atacama", "Atacama", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("valpara\u00edso", "Valpara\u00edso", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("maule", "Maule", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("la araucan\u00eda", "Araucan\u00eda", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("ays\u00e9n", "Ays\u00e9n", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("regi\u00f3n metropolitana", "Metropolitana", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("arica y parinacota", "Arica y Parinacota", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("antofagasta", "Antofagasta", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("coquimbo", "Coquimbo", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("libertador bernardo o\u0027higgins", "O\u0027Higgins", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("b\u00edo b\u00edo", "B\u00edob\u00edo", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("los lagos", "Los Lagos", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("magallanes y la ant\u00e1rtica chilena", "Magallanes", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("los rios", "Los R\u00edos", x)))

# Fix comuna
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("Ollague", "Ollag\u00fce", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("Paihuano", "Paiguano", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("La Calera", "Calera", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("Llay Llay", "Llaillay", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("Los Angeles", "Los \u00c1ngeles", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("Alto B\u00edo B\u00edo", "Alto B\u00edob\u00edo", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("Trehuaco", "Treguaco", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("Teodoro Schimdt", "Teodoro Schmidt", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("Ais\u00e9n", "Ays\u00e9n", x)))
wage_by_gender_with_weights_2006 <- as.data.frame(lapply(wage_by_gender_with_weights_2006, function(x) gsub("Los Alamos", "Los \u00c1lamos", x)))

# Add provincia and region
wage_by_gender_with_weights_2006 <- join(wage_by_gender_with_weights_2006, regiones_casen_2015, by = "comuna")
wage_by_gender_with_weights_2006 <- wage_by_gender_with_weights_2006[,c("region","provincia","comuna","individual_income", "sex", "exp_region", "exp_comuna")]

# Keep only the households that reported their wage
wage_by_gender_with_weights_2006$individual_income <- as.numeric(as.character(wage_by_gender_with_weights_2006$individual_income))
wage_by_gender_with_weights_2006 <- subset(wage_by_gender_with_weights_2006, wage_by_gender_with_weights_2006$individual_income > 0)

# Fix exp
wage_by_gender_with_weights_2006$exp_comuna <- as.numeric(as.character(wage_by_gender_with_weights_2006$exp_comuna))
wage_by_gender_with_weights_2006$exp_region <- as.numeric(as.character(wage_by_gender_with_weights_2006$exp_region))

wage_by_gender_with_weights_2006$exp_region <- ifelse(wage_by_gender_with_weights_2006$exp_region == 0, 1, wage_by_gender_with_weights_2006$exp_region)
wage_by_gender_with_weights_2006$exp_region <- ifelse(is.na(wage_by_gender_with_weights_2006$exp_region), 1, wage_by_gender_with_weights_2006$exp_region)

wage_by_gender_with_weights_2006$exp_comuna <- ifelse(wage_by_gender_with_weights_2006$exp_comuna == 0, 1, wage_by_gender_with_weights_2006$exp_comuna)
wage_by_gender_with_weights_2006$exp_comuna <- ifelse(is.na(wage_by_gender_with_weights_2006$exp_comuna), 1, wage_by_gender_with_weights_2006$exp_comuna)
