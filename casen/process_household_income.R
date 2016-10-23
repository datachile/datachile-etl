# red flag: each year uses its own region names (e.g. Tarapaca vs Tarapac\u00e1 vs Reg. de tarapaca, etc) 
# => impossible to automate in an efficient way

source("batch_load.R")
source("insert_row.R")
source("move_col.R")

########
# 2015 #
########

# Paste the relevant columns here (region, province, comuna and household's income)
household_income_2015 <- as.data.frame(cbind(as.character(casen_2015$region), as.character(casen_2015$provincia), as.character(casen_2015$comuna), as.character(casen_2015$yoprcorh/casen_2015$numper)))
setnames(household_income_2015, colnames(household_income_2015), c("region","provincia","comuna","ingreso_pc"))

# Trim leading/ending whitespace
household_income_2015 <- as.data.frame(lapply(household_income_2015, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix the mess with tildes and special characters
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("\xfa", "\u00fa", x))) # u with acute 
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("\xb4", "\u0027", x))) # apostrophe

# Fix region's names
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n de tarapac\u00e1", "Tarapac\u00e1", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n de atacama", "Atacama", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n de valpara\u00edso", "Valpara\u00edso", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n del maule", "Maule", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n de la araucan\u00eda", "Araucan\u00eda", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n de ays\u00e9n del gral. carlos ibáñez del campo", "Ays\u00e9n", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n metropolitana de santiago", "Metropolitana", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n de arica y parinacota", "Arica y Parinacota", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n de antofagasta", "Antofagasta", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n de coquimbo", "Coquimbo", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n del libertador gral. bernardo o higgins", "O\u0027Higgins", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("región del biob\u00edo", "B\u00edob\u00edo", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n de los lagos", "Los Lagos", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n de magallanes y de la antártica chilena", "Magallanes", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("regi\u00f3n de los r\u00edos", "Los R\u00edos", x)))

# Fix provincias and comunas's names (i.e. capitalize the 1st letters)
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) iconv(x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub(" De ", " de ", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub(" Del ", " del ", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub(" La ", " la ", x)))
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub(" Y ", " y ", x)))

# Fix comunas's names
household_income_2015 <- as.data.frame(lapply(household_income_2015, function(x) gsub("Alto Biob\u00edo", "Alto B\u00edob\u00edo", x)))

# Fix provincias
household_income_2015$provincia <- revalue(household_income_2015$provincia, c("San Felipe de Aconcagua" = "San Felipe"))
household_income_2015$provincia <- revalue(household_income_2015$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Convert to character and numeric
household_income_2015$region <- as.character(household_income_2015$region)
household_income_2015$provincia <- as.character(household_income_2015$provincia)
household_income_2015$comuna <- as.character(household_income_2015$comuna)
household_income_2015$ingreso_pc <- as.numeric(as.character(household_income_2015$ingreso_pc))

# Extract provincias
provincias_2015 <- household_income_2015[,c("region","provincia","comuna")]
provincias_2015$provincia_comuna <- paste(provincias_2015$provincia,provincias_2015$comuna)
provincias_2015 <- provincias_2015[!duplicated(provincias_2015[,"provincia_comuna"]),]
# Here I'm adding by hand some missing information (government's link: http://www.subdere.gov.cl/documentacion/regiones-provincias-y-comunas-de-chile)
provincias_2015 <- insert_row(provincias_2015, c("B\u00edob\u00edo","Arauco","Los Alamos",NA), nrow(provincias_2015)+1)
provincias_2015 <- insert_row(provincias_2015, c("B\u00edob\u00edo","B\u00edob\u00edo","Los \u00c1ngeles",NA), nrow(provincias_2015)+1)
provincias_2015 <- insert_row(provincias_2015, c("Magallanes","\u00daltima Esperanza","Natales",NA), nrow(provincias_2015)+1)
provincias_2015 <- insert_row(provincias_2015, c("Tarapac\u00e1","Tamarugal","Colchane",NA), nrow(provincias_2015)+1)
provincias_2015 <- insert_row(provincias_2015, c("Valpara\u00edso","Isla de Pascua","Isla de Pascua",NA), nrow(provincias_2015)+1)

provincias_2015$provincia_comuna <- paste(provincias_2015$provincia,provincias_2015$comuna)
provincias_2015 <- provincias_2015[complete.cases(provincias_2015),]

# Keep only the households that reported their income
household_income_2015 <- subset(household_income_2015, household_income_2015$ingreso_pc > 0)

########
# 2013 #
########

# Paste the relevant columns here (region, province, comuna and household's income)
household_income_2013 <- as.data.frame(cbind(as.character(casen_2013$region), as.character(casen_2013$comuna), as.character(casen_2013$yoprcorh/casen_2013$numper)))
setnames(household_income_2013, colnames(household_income_2013), c("region","comuna","ingreso_pc"))

# Trim leading/ending whitespace
household_income_2013 <- as.data.frame(lapply(household_income_2013, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix the mess with tildes and special characters
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("\xfa", "\u00fa", x))) # u with acute 
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("\xb4", "\u0027", x))) # apostrophe

# Fix region's names
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("i. tarapaca", "Tarapac\u00e1", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("iii. atacama", "Atacama", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("v. valparaíso", "Valpara\u00edso", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("vii. maule", "Maule", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("ix. la araucanía", "Araucan\u00eda", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("xi. aysén", "Ays\u00e9n", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("metropolitana", "Metropolitana", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("xv. arica y parinacota", "Arica y Parinacota", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("ii. antofagasta", "Antofagasta", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("iv. coquimbo", "Coquimbo", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("vi. o higgins", "O\u0027Higgins", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("viii. biobío", "B\u00edob\u00edo", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("x. los lagos", "Los Lagos", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("xii. magallanes", "Magallanes", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("xiv. los ríos", "Los R\u00edos", x)))

# Fix provincias and comunas's names (i.e. capitalize the 1st letters)
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) iconv(x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub(" De ", " de ", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub(" Del ", " del ", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub(" La ", " la ", x)))
household_income_2013 <- as.data.frame(lapply(household_income_2013, function(x) gsub(" Y ", " y ", x)))

# Fix provincias
household_income_2013$provincia <- revalue(household_income_2013$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Convert to character and numeric
household_income_2013$region <- as.character(household_income_2013$region)
household_income_2013$comuna <- as.character(household_income_2013$comuna)
household_income_2013$ingreso_pc <- as.numeric(as.character(household_income_2013$ingreso_pc))

# Keep only the households that reported their income
household_income_2013 <- subset(household_income_2013, household_income_2013$ingreso_pc > 0)

########
# 2011 #
########

# Paste the relevant columns here (region, province, comuna and household's income)
household_income_2011 <- as.data.frame(cbind(as.character(casen_2011$region), as.character(casen_2011$comuna), as.character(casen_2011$yoprhaj/casen_2011$numper)))
setnames(household_income_2011, colnames(household_income_2011), c("region","comuna","ingreso_pc"))

# Trim leading/ending whitespace
household_income_2011 <- as.data.frame(lapply(household_income_2011, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix the mess with tildes and special characters
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("\xfa", "\u00fa", x))) # u with acute 
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("\xb4", "\u0027", x))) # apostrophe

# Fix region's names
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("tarapac\u00e1", "Tarapac\u00e1", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("atacama", "Atacama", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("valpara\u00edso", "Valpara\u00edso", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("maule", "Maule", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("la araucan\u00eda", "Araucan\u00eda", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("ays\u00e9n", "Ays\u00e9n", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("regi\u00f3n metropolitana", "Metropolitana", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("arica y parinacota", "Arica y Parinacota", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("antofagasta", "Antofagasta", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("coquimbo", "Coquimbo", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("libertador bernardo o\u0027higgins", "O\u0027Higgins", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("b\u00edo b\u00edo", "B\u00edob\u00edo", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("los lagos", "Los Lagos", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("magallanes y la ant\u00e1rtica chilena", "Magallanes", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("los r\u00edos", "Los R\u00edos", x)))

# Fix provincias and comunas's names (i.e. capitalize the 1st letters)
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) iconv(x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub(" De ", " de ", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub(" Del ", " del ", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub(" La ", " la ", x)))
household_income_2011 <- as.data.frame(lapply(household_income_2011, function(x) gsub(" Y ", " y ", x)))

# Fix provincias
household_income_2011$provincia <- revalue(household_income_2011$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Convert to character and numeric
household_income_2011$region <- as.character(household_income_2011$region)
household_income_2011$comuna <- as.character(household_income_2011$comuna)
household_income_2011$ingreso_pc <- as.numeric(as.character(household_income_2011$ingreso_pc))

# Keep only the households that reported their income
household_income_2011 <- subset(household_income_2011, household_income_2011$ingreso_pc > 0)

########
# 2009 #
########

# Paste the relevant columns here (region, province, comuna and household's income)
household_income_2009 <- as.data.frame(cbind(as.character(casen_2009$region), as.character(casen_2009$provincia), as.character(casen_2009$comuna), as.character(casen_2009$yoprhaj/casen_2009$numper)))
setnames(household_income_2009, colnames(household_income_2009), c("region","provincia","comuna","ingreso_pc"))

# Trim leading/ending whitespace
household_income_2009 <- as.data.frame(lapply(household_income_2009, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix the mess with tildes and special characters
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("\xfa", "\u00fa", x))) # u with acute 
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("\xb4", "\u0027", x))) # apostrophe

# Fix region's names
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("tarapac\u00e1", "Tarapac\u00e1", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("atacama", "Atacama", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("valpara\u00edso", "Valpara\u00edso", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("maule", "Maule", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("la araucan\u00eda", "Araucan\u00eda", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("ays\u00e9n", "Ays\u00e9n", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("regi\u00f3n metropolitana", "Metropolitana", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("arica y parinacota", "Arica y Parinacota", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("antofagasta", "Antofagasta", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("coquimbo", "Coquimbo", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("libertador bernardo o\u0027higgins", "O\u0027Higgins", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("b\u00edo b\u00edo", "B\u00edob\u00edo", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("los lagos", "Los Lagos", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("magallanes y la ant\u00e1rtica chilena", "Magallanes", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("los rios", "Los R\u00edos", x)))

# Fix provincias and comunas's names (i.e. capitalize the 1st letters)
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) iconv(x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub(" De ", " de ", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub(" Del ", " del ", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub(" La ", " la ", x)))
household_income_2009 <- as.data.frame(lapply(household_income_2009, function(x) gsub(" Y ", " y ", x)))

# Fix provincias
household_income_2009$provincia <- revalue(household_income_2009$provincia, c("San Felipe de Aconcagua" = "San Felipe"))

# Fix provincias
household_income_2009$provincia <- revalue(household_income_2009$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Convert to character and numeric
household_income_2009$region <- as.character(household_income_2009$region)
household_income_2009$comuna <- as.character(household_income_2009$comuna)
household_income_2009$ingreso_pc <- as.numeric(as.character(household_income_2009$ingreso_pc))

# Keep only the households that reported their income
household_income_2009 <- subset(household_income_2009, household_income_2009$ingreso_pc > 0)

########
# 2006 #
########

# Paste the relevant columns here (region, province, comuna and household's income)
household_income_2006 <- as.data.frame(cbind(as.character(casen_2006$r_15), as.character(casen_2006$p), as.character(casen_2006$comuna), as.character(casen_2006$yoprhaj/casen_2006$numper)))
setnames(household_income_2006, colnames(household_income_2006), c("region","provincia","comuna","ingreso_pc"))

# Trim leading/ending whitespace
household_income_2006 <- as.data.frame(lapply(household_income_2006, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix the mess with tildes and special characters
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("\xfa", "\u00fa", x))) # u with acute 
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("\xb4", "\u0027", x))) # apostrophe

# Fix region's names
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("tarapac\u00e1", "Tarapac\u00e1", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("atacama", "Atacama", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("valpara\u00edso", "Valpara\u00edso", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("maule", "Maule", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("la araucan\u00eda", "Araucan\u00eda", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("ays\u00e9n", "Ays\u00e9n", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("regi\u00f3n metropolitana", "Metropolitana", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("arica y parinacota", "Arica y Parinacota", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("antofagasta", "Antofagasta", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("coquimbo", "Coquimbo", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("libertador bernardo o\u0027higgins", "O\u0027Higgins", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("b\u00edo b\u00edo", "B\u00edob\u00edo", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("los lagos", "Los Lagos", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("magallanes y la ant\u00e1rtica chilena", "Magallanes", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("los rios", "Los R\u00edos", x)))

# Fix provincias and comunas's names (i.e. capitalize the 1st letters)
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) iconv(x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub(" De ", " de ", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub(" Del ", " del ", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub(" La ", " la ", x)))
household_income_2006 <- as.data.frame(lapply(household_income_2006, function(x) gsub(" Y ", " y ", x)))

# Fix provincias
household_income_2006$provincia <- revalue(household_income_2006$provincia, c("11" = "Iquique", "12" = "Arica", "13" = "Parinacota",
                                                                              "21" = "Antofagasta", "22" = "El Loa", "23" = "Tocopilla",
                                                                              "31" = "Copiap\u00f3", "32" = "Cha\u00f1aral", "33" = "Huasco",
                                                                              "41" = "Elqui", "42" = "Choapa", "43" = "Limar\u00ed",
                                                                              "51" = "Valpara\u00edso", "53" = "Los Andes", "54" = "Petorca", "55" = "Quillota", "56" = "San Antonio", "57" = "San Felipe",
                                                                              "61" = "Cachapoal", "62" = "Cardenal Caro", "63" = "Colchagua",
                                                                              "71" = "Talca", "72" = "Cauquenes", "73" = "Curic\u00f3", "74" = "Linares",
                                                                              "81" = "Concepci\u00f3n", "82" = "Arauco", "83" = "B\u00edob\u00edo", "84" = "\u00d1uble",
                                                                              "91" = "Caut\u00edn", "92" = "Malleco",
                                                                              "101" = "Llanquihue", "102" = "Chilo\u00e9", "103" = "Osorno", "104" = "Palena", "105" = "Valdivia",
                                                                              "111" = "Cohaique", "112" = "Ays\u00e9n", "113" = "General Carrera", "114" = "Capit\u00e1n Prat",
                                                                              "121" = "Magallanes", "122" = "Ant\u00e1rtica", "123" = "Tierra del Fuego", "124" = "\u00daltima Esperanza",
                                                                              "131" = "Santiago", "132" = "Cordillera", "133" = "Chacabuco", "134" = "Maipo", "135" = "Melipilla", "136" = "Talagante"))

# Fix provincias
household_income_2006$provincia <- revalue(household_income_2006$provincia, c("Cohaique" = "Coyhaique"))

# Fix provincias
household_income_2006$provincia <- revalue(household_income_2006$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Convert to character and numeric
household_income_2006$region <- as.character(household_income_2006$region)
household_income_2006$provincia <- as.character(household_income_2006$provincia)
household_income_2006$comuna <- as.character(household_income_2006$comuna)
household_income_2006$ingreso_pc <- as.numeric(as.character(household_income_2006$ingreso_pc))

# Keep only the households that reported their income
household_income_2006 <- subset(household_income_2006, household_income_2006$ingreso_pc > 0)

########
# 2003 #
########

# Paste the relevant columns here (region, province, comuna and household's income)
household_income_2003 <- as.data.frame(cbind(as.character(casen_2003$r), as.character(casen_2003$p), as.character(casen_2003$comu), as.character(casen_2003$yoprhaj/casen_2003$numper)))
setnames(household_income_2003, colnames(household_income_2003), c("region","provincia","comuna","ingreso_pc"))

# Trim leading/ending whitespace
household_income_2003 <- as.data.frame(lapply(household_income_2003, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix the mess with tildes and special characters
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xfa", "\u00fa", x))) # u with acute 
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("\xb4", "\u0027", x))) # apostrophe

# Fix region's names
# be careful that this year has regions labeled as i ii iii ... this will cause problems if you are not careful !!
household_income_2003$region <- revalue(household_income_2003$region, c("r.m."="thirteen", "xii"="twelve", "xi" = "eleven", "x" = "ten",
                                                                        "ix" = "nine", "viii" = "eight", "vii" = "seven", "vi" = "six",
                                                                        "v" = "five", "iv" = "four", "iii" = "three", "ii" = "two", "i" = "one"))

household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("thirteen", "Metropolitana", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("twelve", "Magallanes", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("eleven", "Ays\u00e9n", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("ten", "Los Lagos", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("nine", "Araucan\u00eda", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("eight", "B\u00edob\u00edo", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("seven", "Maule", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("six", "O\u0027Higgins", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("five", "Valpara\u00edso", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("four", "Coquimbo", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("three", "Atacama", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("two", "Antofagasta", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("one", "Tarapac\u00e1", x)))

# Fix provincias and comunas's names (i.e. capitalize the 1st letters)
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) iconv(x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub(" De ", " de ", x)))
household_income_2003 <- as.data.frame(lapply(household_income_2003, function(x) gsub(" Del ", " del ", x)))

# Fix provincias
household_income_2003$provincia <- revalue(household_income_2003$provincia, c("San Felipe de Aconcagua" = "San Felipe"))
household_income_2003$provincia <- revalue(household_income_2003$provincia, c("Cohaique" = "Coyhaique"))

# Fix provincias
household_income_2003$provincia <- revalue(household_income_2003$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Convert to character and numeric
household_income_2003$region <- as.character(household_income_2003$region)
household_income_2003$provincia <- as.character(household_income_2003$provincia)
household_income_2003$comuna <- as.character(household_income_2003$comuna)
household_income_2003$ingreso_pc <- as.numeric(as.character(household_income_2003$ingreso_pc))

# Keep only the households that reported their income
household_income_2003 <- subset(household_income_2003, household_income_2003$ingreso_pc > 0)

########
# 2000 #
########

# Paste the relevant columns here (region, province, comuna and household's income)
household_income_2000 <- as.data.frame(cbind(as.character(casen_2000$r), as.character(casen_2000$provi), as.character(casen_2000$comu), as.character(casen_2000$yoprhaj/casen_2000$numper)))
setnames(household_income_2000, colnames(household_income_2000), c("region","provincia","comuna","ingreso_pc"))

# Trim leading/ending whitespace
household_income_2000 <- as.data.frame(lapply(household_income_2000, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix the mess with tildes and special characters
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xfa", "\u00fa", x))) # u with acute 
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("\xb4", "\u0027", x))) # apostrophe

# Fix region's names
# be careful that this year has regions labeled as i ii iii ... this will cause problems if you are not careful !!
household_income_2000$region <- revalue(household_income_2000$region, c("r.m."="thirteen", "xii"="twelve", "xi" = "eleven", "x" = "ten",
                                                                        "ix" = "nine", "viii" = "eight", "vii" = "seven", "vi" = "six",
                                                                        "v" = "five", "iv" = "four", "iii" = "three", "ii" = "two", "i" = "one"))

household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("thirteen", "Metropolitana", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("twelve", "Magallanes", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("eleven", "Ays\u00e9n", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("ten", "Los Lagos", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("nine", "Araucan\u00eda", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("eight", "B\u00edob\u00edo", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("seven", "Maule", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("six", "O\u0027Higgins", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("five", "Valpara\u00edso", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("four", "Coquimbo", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("three", "Atacama", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("two", "Antofagasta", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("one", "Tarapac\u00e1", x)))

# Fix provincias and comunas's names (i.e. capitalize the 1st letters)
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) iconv(x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub(" De ", " de ", x)))
household_income_2000 <- as.data.frame(lapply(household_income_2000, function(x) gsub(" Del ", " del ", x)))

# Fix provincias
household_income_2000$provincia <- revalue(household_income_2000$provincia, c("San Felipe de Aconcagua" = "San Felipe"))
household_income_2000$provincia <- revalue(household_income_2000$provincia, c("Cohaique" = "Coyhaique"))

# Fix provincias
household_income_2000$provincia <- revalue(household_income_2000$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Convert to character and numeric
household_income_2000$region <- as.character(household_income_2000$region)
household_income_2000$provincia <- as.character(household_income_2000$provincia)
household_income_2000$comuna <- as.character(household_income_2000$comuna)
household_income_2000$ingreso_pc <- as.numeric(as.character(household_income_2000$ingreso_pc))

# Keep only the households that reported their income
household_income_2000 <- subset(household_income_2000, household_income_2000$ingreso_pc > 0)

########
# 1998 #
########

# Paste the two relevant columns here (region and household's income)
household_income_1998 <- as.data.frame(cbind(as.character(casen_1998$r), as.character(casen_1998$p), as.character(casen_1998$comu), as.character(casen_1998$yoprhaj/casen_1998$numper)))
setnames(household_income_1998, colnames(household_income_1998), c("region","provincia","comuna","ingreso_pc"))

# Trim leading/ending whitespace
household_income_1998 <- as.data.frame(lapply(household_income_1998, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix the mess with tildes and special characters
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("\xfa", "\u00fa", x))) # u with acute 
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("\xb4", "\u0027", x))) # apostrophe

# Fix region's names
# be careful that this year has regions labeled as i ii iii ... this will cause problems if you are not careful !!
household_income_1998$region <- revalue(household_income_1998$region, c("r.m."="thirteen", "xii"="twelve", "xi" = "eleven", "x" = "ten",
                                                                        "ix" = "nine", "viii" = "eight", "vii" = "seven", "vi" = "six",
                                                                        "v" = "five", "iv" = "four", "iii" = "three", "ii" = "two", "i" = "one"))

household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("thirteen", "Metropolitana", x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("twelve", "Magallanes", x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("eleven", "Ays\u00e9n", x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("ten", "Los Lagos", x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("nine", "Araucan\u00eda", x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("eight", "B\u00edob\u00edo", x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("seven", "Maule", x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("six", "O\u0027Higgins", x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("five", "Valpara\u00edso", x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("four", "Coquimbo", x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("three", "Atacama", x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("two", "Antofagasta", x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("one", "Tarapac\u00e1", x)))

# Fix provincias and comunas's names (i.e. capitalize the 1st letters)
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) iconv(x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub(" De ", " de ", x)))
household_income_1998 <- as.data.frame(lapply(household_income_1998, function(x) gsub(" Del ", " del ", x)))

# Fix provincias
household_income_1998$provincia <- revalue(household_income_1998$provincia, c("San Felipe de Aconcagua" = "San Felipe"))
household_income_1998$provincia <- revalue(household_income_1998$provincia, c("Cohaique" = "Coyhaique"))

# Fix provincias
household_income_1998$provincia <- revalue(household_income_1998$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Convert to character and numeric
household_income_1998$region <- as.character(household_income_1998$region)
household_income_1998$provincia <- as.character(household_income_1998$provincia)
household_income_1998$comuna <- as.character(household_income_1998$comuna)
household_income_1998$ingreso_pc <- as.numeric(as.character(household_income_1998$ingreso_pc))

# Keep only the households that reported their income
household_income_1998 <- subset(household_income_1998, household_income_1998$ingreso_pc > 0)

########
# 1996 #
########

# Paste the two relevant columns here (region and household's income)
household_income_1996 <- as.data.frame(cbind(as.character(casen_1996$r), as.character(casen_1996$comu), as.character(casen_1996$yoprhaj/casen_1996$numper)))
setnames(household_income_1996, colnames(household_income_1996), c("region","comuna","ingreso_pc"))

# Trim leading/ending whitespace
household_income_1996 <- as.data.frame(lapply(household_income_1996, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix the mess with tildes and special characters
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("\xfa", "\u00fa", x))) # u with acute 
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("\xb4", "\u0027", x))) # apostrophe

# Fix region's names
# be careful that this year has regions labeled as i ii iii ... this will cause problems if you are not careful !!
household_income_1996$region <- revalue(household_income_1996$region, c("xiii"="thirteen", "xii"="twelve", "xi" = "eleven", "x" = "ten",
                                                                        "ix" = "nine", "viii" = "eight", "vii" = "seven", "vi" = "six",
                                                                        "v" = "five", "iv" = "four", "iii" = "three", "ii" = "two", "i" = "one"))

household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("thirteen", "Metropolitana", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("twelve", "Magallanes", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("eleven", "Ays\u00e9n", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("ten", "Los Lagos", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("nine", "Araucan\u00eda", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("eight", "B\u00edob\u00edo", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("seven", "Maule", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("six", "O\u0027Higgins", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("five", "Valpara\u00edso", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("four", "Coquimbo", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("three", "Atacama", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("two", "Antofagasta", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("one", "Tarapac\u00e1", x)))

# Fix provincias and comunas's names (i.e. capitalize the 1st letters)
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) iconv(x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub(" De ", " de ", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub(" Del ", " del ", x)))

# Fix comunas (CASEN 1996 contains very weird typos)
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("Los Angeles", "Los \u00c1ngeles", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("MejillTarapac\u00e1s", "Mejillones", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("Los Lagoso", "Los Lagos", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("Trehuaco", "Treguaco", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("CorTarapac\u00e1l", "Coronel", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("Teodoro Schimdt", "Teodoro Schmidt", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("Imperial", "Nueva Imperial", x)))
household_income_1996 <- as.data.frame(lapply(household_income_1996, function(x) gsub("Puerto Ais\u00e9n", "Ays\u00e9n", x)))

# Fix provincias
household_income_1996$provincia <- revalue(household_income_1996$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Convert to character and numeric
household_income_1996$region <- as.character(household_income_1996$region)
household_income_1996$comuna <- as.character(household_income_1996$comuna)
household_income_1996$ingreso_pc <- as.numeric(as.character(household_income_1996$ingreso_pc))

# Keep only the households that reported their income
household_income_1996 <- subset(household_income_1996, household_income_1996$ingreso_pc > 0)

########
# 1994 #
########

# Paste the two relevant columns here (region and household's income)
household_income_1994 <- as.data.frame(cbind(as.character(casen_1994$r), as.character(casen_1994$comu), as.character(casen_1994$yoprhaj/casen_1994$numper)))
setnames(household_income_1994, colnames(household_income_1994), c("region","comuna","ingreso_pc"))

# Trim leading/ending whitespace
household_income_1994 <- as.data.frame(lapply(household_income_1994, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix the mess with tildes and special characters
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("\xfa", "\u00fa", x))) # u with acute 
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("\xb4", "\u0027", x))) # apostrophe

# Fix region's names
# be careful that this year has regions labeled as i ii iii ... this will cause problems if you are not careful !!
household_income_1994$region <- revalue(household_income_1994$region, c("r.m."="thirteen", "xii"="twelve", "xi" = "eleven", "x" = "ten",
                                                                        "ix" = "nine", "viii" = "eight", "vii" = "seven", "vi" = "six",
                                                                        "v" = "five", "iv" = "four", "iii" = "three", "ii" = "two", "i" = "one"))

household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("thirteen", "Metropolitana", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("twelve", "Magallanes", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("eleven", "Ays\u00e9n", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("ten", "Los Lagos", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("nine", "Araucan\u00eda", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("eight", "B\u00edob\u00edo", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("seven", "Maule", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("six", "O\u0027Higgins", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("five", "Valpara\u00edso", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("four", "Coquimbo", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("three", "Atacama", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("two", "Antofagasta", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("one", "Tarapac\u00e1", x)))

# Fix provincias and comunas's names (i.e. capitalize the 1st letters)
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) iconv(x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub(" De ", " de ", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub(" Del ", " del ", x)))

# Fix comunas
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("CorTarapac\u00e1l", "Coronel", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("Los Angeles", "Los \u00c1ngeles", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("Los Lagoso", "Los Lagos", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("MejillTarapac\u00e1s", "Mejillones", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("Teodoro Schimdt", "Teodoro Schmidt", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("Puerto Ais\u00e9n", "Ays\u00e9n", x)))
household_income_1994 <- as.data.frame(lapply(household_income_1994, function(x) gsub("ParedTarapac\u00e1s", "Paredones", x)))

# Fix provincias
household_income_1994$provincia <- revalue(household_income_1994$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Convert to character and numeric
household_income_1994$region <- as.character(household_income_1994$region)
household_income_1994$comuna <- as.character(household_income_1994$comuna)
household_income_1994$ingreso_pc <- as.numeric(as.character(household_income_1994$ingreso_pc))

# Keep only the households that reported their income
household_income_1994 <- subset(household_income_1994, household_income_1994$ingreso_pc > 0)

########
# 1992 #
########

# Paste the two relevant columns here (region and household's income)
household_income_1992 <- as.data.frame(cbind(as.character(casen_1992$r), as.character(casen_1992$provinci), as.character(casen_1992$comu), as.character(casen_1992$yoprhaj/casen_1992$numper)))
setnames(household_income_1992, colnames(household_income_1992), c("region","provincia","comuna","ingreso_pc"))

# Trim leading/ending whitespace
household_income_1992 <- as.data.frame(lapply(household_income_1992, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix the mess with tildes and special characters
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("\xfa", "\u00fa", x))) # u with acute 
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("\xb4", "\u0027", x))) # apostrophe

# Fix region's names
# be careful that this year has regions labeled as i ii iii ... this will cause problems if you are not careful !!
household_income_1992$region <- revalue(household_income_1992$region, c("r.m."="thirteen", "xii"="twelve", "xi" = "eleven", "x" = "ten",
                                                                        "ix" = "nine", "viii" = "eight", "vii" = "seven", "vi" = "six",
                                                                        "v" = "five", "iv" = "four", "iii" = "three", "ii" = "two", "i" = "one"))

household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("thirteen", "Metropolitana", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("twelve", "Magallanes", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("eleven", "Ays\u00e9n", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("ten", "Los Lagos", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("nine", "Araucan\u00eda", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("eight", "B\u00edob\u00edo", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("seven", "Maule", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("six", "O\u0027Higgins", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("five", "Valpara\u00edso", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("four", "Coquimbo", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("three", "Atacama", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("two", "Antofagasta", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("one", "Tarapac\u00e1", x)))

# Fix provincias and comunas's names (i.e. capitalize the 1st letters)
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) iconv(x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub(" De ", " de ", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub(" Del ", " del ", x)))

# Fix provincias
household_income_1992$provincia <- revalue(household_income_1992$provincia, c("San Felipe de Aconcagua" = "San Felipe"))
household_income_1992$provincia <- revalue(household_income_1992$provincia, c("Cohaique" = "Coyhaique"))

# Fix comunas
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("CorTarapac\u00e1l", "Coronel", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("Los Angeles", "Los \u00c1ngeles", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("Los Lagoso", "Los Lagos", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("MejillTarapac\u00e1s", "Mejillones", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("Teodoro Schimdt", "Teodoro Schmidt", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("Puerto Ais\u00e9n", "Ays\u00e9n", x)))
household_income_1992 <- as.data.frame(lapply(household_income_1992, function(x) gsub("ParedTarapac\u00e1s", "Paredones", x)))

# Fix provincias
household_income_1992$provincia <- revalue(household_income_1992$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Convert to character and numeric
household_income_1992$region <- as.character(household_income_1992$region)
household_income_1992$provincia <- as.character(household_income_1992$provincia)
household_income_1992$comuna <- as.character(household_income_1992$comuna)
household_income_1992$ingreso_pc <- as.numeric(as.character(household_income_1992$ingreso_pc))

# Keep only the households that reported their income
household_income_1992 <- subset(household_income_1992, household_income_1992$ingreso_pc > 0)

########
# 1990 #
########

# Paste the two relevant columns here (region and household's income)
household_income_1990 <- as.data.frame(cbind(as.character(casen_1990$r), as.character(casen_1990$provinci), as.character(casen_1990$comu), as.character(casen_1990$yoprhaj/casen_1990$numper)))
setnames(household_income_1990, colnames(household_income_1990), c("region","provincia","comuna","ingreso_pc"))

# Trim leading/ending whitespace
household_income_1990 <- as.data.frame(lapply(household_income_1990, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix the mess with tildes and special characters
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("\xed", "\u00ed", x))) # i with acute
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("\xfa", "\u00fa", x))) # u with acute 
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("\xb4", "\u0027", x))) # apostrophe

# Fix region's names
# be careful that this year has regions labeled as i ii iii ... this will cause problems if you are not careful !!
household_income_1990$region <- revalue(household_income_1990$region, c("r.m."="thirteen", "xii"="twelve", "xi" = "eleven", "x" = "ten",
                                                                        "ix" = "nine", "viii" = "eight", "vii" = "seven", "vi" = "six",
                                                                        "v" = "five", "iv" = "four", "iii" = "three", "ii" = "two", "i" = "one"))

household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("thirteen", "Metropolitana", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("twelve", "Magallanes", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("eleven", "Ays\u00e9n", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("ten", "Los Lagos", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("nine", "Araucan\u00eda", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("eight", "B\u00edob\u00edo", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("seven", "Maule", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("six", "O\u0027Higgins", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("five", "Valpara\u00edso", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("four", "Coquimbo", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("three", "Atacama", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("two", "Antofagasta", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("one", "Tarapac\u00e1", x)))

# Fix provincias and comunas's names (i.e. capitalize the 1st letters)
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) iconv(x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub(" De ", " de ", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub(" Del ", " del ", x)))

# Fix provincias
household_income_1990$provincia <- revalue(household_income_1990$provincia, c("San Felipe de Aconcagua" = "San Felipe"))
household_income_1990$provincia <- revalue(household_income_1990$provincia, c("Cohaique" = "Coyhaique"))

# Fix comunas
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("CorTarapac\u00e1l", "Coronel", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("Los Angeles", "Los \u00c1ngeles", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("Los Lagoso", "Los Lagos", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("MejillTarapac\u00e1s", "Mejillones", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("Teodoro Schimdt", "Teodoro Schmidt", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("Puerto Ais\u00e9n", "Ays\u00e9n", x)))
household_income_1990 <- as.data.frame(lapply(household_income_1990, function(x) gsub("ParedTarapac\u00e1s", "Paredones", x)))

# Fix provincias
household_income_1990$provincia <- revalue(household_income_1990$provincia, c("Biob\u00edo" = "B\u00edob\u00edo"))

# Convert to character and numeric
household_income_1990$region <- as.character(household_income_1990$region)
household_income_1990$provincia <- as.character(household_income_1990$provincia)
household_income_1990$comuna <- as.character(household_income_1990$comuna)
household_income_1990$ingreso_pc <- as.numeric(as.character(household_income_1990$ingreso_pc))

# Keep only the households that reported their income
household_income_1990 <- subset(household_income_1990, household_income_1990$ingreso_pc > 0)

#################
# Add provincias
#################

# 2013
household_income_2013 <- join(household_income_2013, provincias_2015[,c("provincia","comuna")], by = "comuna")
household_income_2013 <- household_income_2013[,c("region","provincia","comuna","ingreso_pc")]

# 2011
household_income_2011 <- join(household_income_2011, provincias_2015[,c("provincia","comuna")], by = "comuna")
household_income_2011 <- household_income_2011[,c("region","provincia","comuna","ingreso_pc")]

# 1994
household_income_1994 <- join(household_income_1994, provincias_2015[,c("provincia","comuna")], by = "comuna")
household_income_1994 <- household_income_1994[,c("region","provincia","comuna","ingreso_pc")]

# 1996
household_income_1996 <- join(household_income_1996, provincias_2015[,c("provincia","comuna")], by = "comuna")
household_income_1996 <- household_income_1996[,c("region","provincia","comuna","ingreso_pc")]
