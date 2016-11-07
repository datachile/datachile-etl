###########################
# names for normalization #
###########################

region_codes_datachile <- read.csv("geographic_ids/dim_comunas.csv")
region_codes_datachile <- region_codes_datachile[order(region_codes_datachile$region_id),]

# Trim leading/ending whitespace
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix some discrepancies with official names (i.e. http://www.subdere.gov.cl/documentacion/regiones-regions-y-regions-de-chile)
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Region Metropolitana Santiago", "Metropolitana", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Arica ha Parinacota", "Arica y Parinacota", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Los Angeles", "Los \u00c1ngeles", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Los Alamos", "Los \u00c1lamos", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Valparaiso", "Valpara\u00edso", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Biobío", "B\u00edob\u00edo", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Alto Bio Bio", "Alto B\u00edob\u00edo", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Coihaique", "Coyhaique", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Rio Iba\u00f1ez", "R\u00edo Ib\u00e1\u00f1ez", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Tirua", "Tir\u00faa", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Ranquil", "R\u00e1nquil", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Trehuaco", "Treguaco", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Paihuano", "Paiguano", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Rio Hurtado", "R\u00edo Hurtado", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Rio Negro", "R\u00edo Negro", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Rio Bueno", "R\u00edo Bueno", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Rio Claro", "R\u00edo Claro", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Maria Pinto", "Mar\u00eda Pinto", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Til-Til", "Tiltil", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("San Francisco De Mostazal", "Mostazal", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Estacion Central", "Estaci\u00f3n Central", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Requinoa", "Requ\u00ednoa", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Marchig\u00fce", "Marchihue", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Llay Llay", "Llaillay", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Santa Maria", "Santa Mar\u00eda", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub("Con C\u00f3n", "Conc\u00f3n", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub(" De ", " de ", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub(" Del ", " del ", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub(" Y ", " y ", x)))
region_codes_datachile <- as.data.frame(lapply(region_codes_datachile, function(x) gsub(" La ", " la ", x)))
rownames(region_codes_datachile) <- c(seq(1:nrow(region_codes_datachile)))

# I'll add provincia
# names and numbers according to this link: http://www.subdere.gov.cl/documentacion/regiones-provincias-y-comunas-de-chile
provincia_codes_pacha <- c("p151:Arica","p152:Parinacota","p11:Iquique","p12:Tamarugal","p21:Antofagasta",
                      "p22:El Loa", "p23:Tocopilla","p31:Copiap\u00f3","p32:Cha\u00f1aral","p33:Huasco",
                      "p41:Elqui","p42:Choapa","p43:Limar\u00ed","p51:Valpara\u00edso","p52:Isla de Pascua",
                      "p53:Los Andes","p54:Petorca","p55:Quillota","p56:San Antonio","p57:San Felipe",
                      "p58:Marga Marga","p61:Cachapoal","p62:Cardenal Caro","p63:Colchagua","p71:Talca",
                      "p72:Cauquenes","p73:Curic\u00f3","p74:Linares","p81:Concepci\u00f3n","p82:Arauco",
                      "p83:B\u00edob\u00edo","p84:\u00d1uble","p91:Caut\u00edn","p92:Malleco","p141:Valdivia",
                      "p142:Ranco","p101:Llanquihue","p102:Chilo\u00e9","p103:Osorno","p104:Palena",
                      "p111:Coyhaique","p112:Ays\u00e9n","p113:Capit\u00e1n Prat","p114:General Carrera","p121:Magallanes",
                      "p122:Ant\u00e1rtica","p123:Tierra del Fuego","p124:\u00daltima Esperanza","p131:Santiago","p152:Cordillera",
                      "p133:Chacabuco","p134:Maipo","p135:Melipilla","p136:Talagante")
provincia_codes_pacha <- as.data.frame(provincia_codes_pacha)
provincia_codes_pacha <- data.frame(do.call('rbind', strsplit(as.character(provincia_codes_pacha$provincia_codes_pacha), ':', fixed=TRUE)))
setnames(provincia_codes_pacha, colnames(provincia_codes_pacha), c("provincia_pacha_id","provincia_name"))

write.csv(region_codes_datachile, file = "geographic_ids/dim_comunas_fixed.csv")
write.csv(provincia_codes_pacha, file = "geographic_ids/provincia_codes_pacha.csv")
