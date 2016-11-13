########
# 2011 #
########

# Paste the relevant columns here (region, provincia, comuna, wage, branch and  sex)
wage_by_gender_and_branch_2011 <- as.data.frame(cbind(as.character(casen_2011$comuna), as.character(casen_2011$yopraj), as.character(casen_2011$rama1), as.character(casen_2011$sexo)))
setnames(wage_by_gender_and_branch_2011, colnames(wage_by_gender_and_branch_2011), c("comuna","ingreso_ocup_principal", "rama", "sexo"))

# Trim leading/ending whitespace
#wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) iconv(x)))
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix characters/uppercase
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("<e1>", "\u00e1", x))) # a with acute
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("<c1>", "\u00c1", x))) # A with acute
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("<e9>", "\u00e9", x))) # e with acute
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("\xed", "\u00ed", x))) # i with acute
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("<ed>", "\u00ed", x))) # i with acute
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("<f3>", "\u00f3", x))) # o with acute
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("\xfa", "\u00fa", x))) # u with acute
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("<fa>", "\u00fa", x))) # u with acute 
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("\xda", "\u00da", x))) # U with acute
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("<da>", "\u00da", x))) # U with acute
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("\xf1", "\u00f1", x))) # n with tilde
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("<f1>", "\u00f1", x))) # n with tilde
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("\xd1", "\u00d1", x))) # N with tilde
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("<d1>", "\u00d1", x))) # N with tilde
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("\xb4", "\u0027", x))) # apostrophe
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("<b4>", "\u0027", x))) # apostrophe
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub(" De ", " de ", x)))
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub(" Del ", " del ", x)))
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub(" La ", " la ", x)))
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub(" Los ", " los ", x)))
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub(" Y ", " y ", x)))
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub(" E ", " e ", x)))

# Fix comuna
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("Alto Biob\u00edo", "Alto B\u00edob\u00edo", x)))
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("Los <c1>ngeles", "Los \u00c1ngeles", x)))
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("Los <c1>lamos", "Los \u00c1lamos", x)))
wage_by_gender_and_branch_2011 <- as.data.frame(lapply(wage_by_gender_and_branch_2011, function(x) gsub("Los Alamos", "Los \u00c1lamos", x)))

# Add provincia and region
wage_by_gender_and_branch_2011 <- join(wage_by_gender_and_branch_2011, regiones_casen_2015, by = "comuna")
wage_by_gender_and_branch_2011 <- wage_by_gender_and_branch_2011[,c("comuna","provincia","region","ingreso_ocup_principal", "rama", "sexo")]

# Fix rama
wage_by_gender_and_branch_2011$rama <- revalue(wage_by_gender_and_branch_2011$rama, c("A  Agricultura, Ganader\u00eda, Caza y Silvicultura" = "Agricultura, Ganader\u00eda, Caza y Silvicultura",
                                                                                      "B  Pesca" = "Pesca",
                                                                                      "C  Explotaci\u00f3n de Minas y Canteras" = "Explotaci\u00f3n de Minas y Canteras",
                                                                                      "D  Industrias Manufactureras" = "Industrias Manufactureras",
                                                                                      "E  Suministro de Electricidad, Gas y Agua" =  "Electricidad, Gas y Agua",
                                                                                      "F  Construcci\u00f3n" = "Construcci\u00f3n",
                                                                                      "G  Comercio Al Por Mayor y Al Por Menor; Reparaci\u00f3n de Veh\u00edculos" = "Comercio",
                                                                                      "H  Hoteles y Restaurantes" = "Hoteles y Restaurantes",
                                                                                      "I  Transporte, Almacenamiento y Comunicaciones" = "Transporte, Almacenamiento y Comunicaciones",
                                                                                      "J  Intermediaci\u00f3n Financiera" = "Intermediaci\u00f3n Financiera",
                                                                                      "K  Actividades Inmobiliarias, Empresariales y de Alquiler" = "Actividades Inmobiliarias, Empresariales y de Alquiler",
                                                                                      "L  Administraci\u00f3n Pública y Defensa; Planes de Seguridad Social" = "Administraci\u00f3n Pública y Defensa",             
                                                                                      "M  Ense\u00f1anza" = "Ense\u00f1anza",
                                                                                      "N  Servicios Sociales y de Salud" = "Servicios Sociales y de Salud",
                                                                                      "O  Otras Actividades de Servicios Comunitarios, Sociales y Personales" = "Servicios Comunitarios, Sociales y Personales",
                                                                                      "P  Hogares Privados Con Servicio Dom\u00e9stico" = "Servicio Dom\u00e9stico",
                                                                                      "Q  Organizaciones y \u00f3rganos Extraterritoriales" = "Organizaciones y \u00f3rganos Extraterritoriales",
                                                                                      "X  No Bien Especificado" = NA))

# Keep only the households that reported their wage
wage_by_gender_and_branch_2011$ingreso_ocup_principal <- as.numeric(as.character(wage_by_gender_and_branch_2011$ingreso_ocup_principal))
wage_by_gender_and_branch_2011 <- subset(wage_by_gender_and_branch_2011, wage_by_gender_and_branch_2011$ingreso_ocup_principal > 0)
