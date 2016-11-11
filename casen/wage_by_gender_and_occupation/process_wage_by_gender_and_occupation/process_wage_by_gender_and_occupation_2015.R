########
# 2015 #
########

# Paste the relevant columns here (region, provincia, comuna, wage, occupation and  sex)
wage_by_gender_and_occupation_2015 <- as.data.frame(cbind(as.character(casen_2015$region), as.character(casen_2015$provincia), as.character(casen_2015$comuna), as.character(casen_2015$yoprcor), as.character(casen_2015$oficio1), as.character(casen_2015$sexo)))
setnames(wage_by_gender_and_occupation_2015, colnames(wage_by_gender_and_occupation_2015), c("region","provincia","comuna","ingreso_ocup_principal", "oficio_id", "sexo"))

# Trim leading/ending whitespace + Fix characters/uppercase
#wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) iconv(x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix characters/uppercase
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("<e1>", "\u00e1", x))) # a with acute
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("<c1>", "\u00c1", x))) # A with acute
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("<e9>", "\u00e9", x))) # e with acute
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("\xed", "\u00ed", x))) # i with acute
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("<ed>", "\u00ed", x))) # i with acute
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("<f3>", "\u00f3", x))) # o with acute
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("\xfa", "\u00fa", x))) # u with acute
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("<fa>", "\u00fa", x))) # u with acute 
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("\xda", "\u00da", x))) # U with acute
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("<da>", "\u00da", x))) # U with acute
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("\xf1", "\u00f1", x))) # n with tilde
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("<f1>", "\u00f1", x))) # n with tilde
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("\xd1", "\u00d1", x))) # N with tilde
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("<d1>", "\u00d1", x))) # N with tilde
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("\xb4", "\u0027", x))) # apostrophe
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("<b4>", "\u0027", x))) # apostrophe
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub(" De ", " de ", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub(" Del ", " del ", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub(" La ", " la ", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub(" Los ", " los ", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub(" Y ", " y ", x)))

# Fix region
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n de Tarapac\u00e1", "Tarapac\u00e1", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n de Atacama", "Atacama", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n de Valpara\u00edso", "Valpara\u00edso", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n del Maule", "Maule", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n de la Araucan\u00eda", "Araucan\u00eda", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n de Ays\u00e9n del Gral. Carlos Ibáñez del Campo", "Ays\u00e9n", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n Metropolitana de Santiago", "Metropolitana", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n de Arica y Parinacota", "Arica y Parinacota", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n de Antofagasta", "Antofagasta", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n de Coquimbo", "Coquimbo", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n del Libertador Gral. Bernardo O Higgins", "O\u0027Higgins", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Región del Biob\u00edo", "B\u00edob\u00edo", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n de los Lagos", "Los Lagos", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n de Magallanes y de la Antártica Chilena", "Magallanes", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Regi\u00f3n de los R\u00edos", "Los R\u00edos", x)))

# Fix provincia
wage_by_gender_and_occupation_2015$provincia <- revalue(wage_by_gender_and_occupation_2015$provincia, c("San Felipe de Aconcagua" = "San Felipe"))
wage_by_gender_and_occupation_2015$provincia <- revalue(wage_by_gender_and_occupation_2015$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Fix comuna
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Alto Biob\u00edo", "Alto B\u00edob\u00edo", x)))
wage_by_gender_and_occupation_2015 <- as.data.frame(lapply(wage_by_gender_and_occupation_2015, function(x) gsub("Los Alamos", "Los \u00c1lamos", x)))

# Extract provincia
regiones_casen_2015 <- wage_by_gender_and_occupation_2015[,c("region","provincia","comuna")]
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

# Keep only the people that reported their wage
wage_by_gender_and_occupation_2015$ingreso_ocup_principal <- as.numeric(as.character(wage_by_gender_and_occupation_2015$ingreso_ocup_principal))
wage_by_gender_and_occupation_2015 <- subset(wage_by_gender_and_occupation_2015, wage_by_gender_and_occupation_2015$ingreso_ocup_principal > 0)
