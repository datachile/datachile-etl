###########################
# names for normalization #
###########################

region_codes_datachile <- read.csv("dim_comunas.csv")
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
provincia_codes_pacha <- c("151:Arica","152:Parinacota","11:Iquique","12:Tamarugal","21:Antofagasta",
                      "22:El Loa", "23:Tocopilla","31:Copiap\u00f3","32:Cha\u00f1aral","33:Huasco",
                      "41:Elqui","42:Choapa","43:Limar\u00ed","51:Valpara\u00edso","52:Isla de Pascua",
                      "53:Los Andes","54:Petorca","55:Quillota","56:San Antonio","57:San Felipe",
                      "58:Marga Marga","61:Cachapoal","62:Cardenal Caro","63:Colchagua","71:Talca",
                      "72:Cauquenes","73:Curic\u00f3","74:Linares","81:Concepci\u00f3n","82:Arauco",
                      "83:B\u00edob\u00edo","84:\u00d1uble","91:Caut\u00edn","92:Malleco","141:Valdivia",
                      "142:Ranco","101:Llanquihue","102:Chilo\u00e9","103:Osorno","104:Palena",
                      "111:Coyhaique","112:Ays\u00e9n","113:Capit\u00e1n Prat","114:General Carrera","121:Magallanes",
                      "122:Ant\u00e1rtica","123:Tierra del Fuego","124:\u00daltima Esperanza","131:Santiago","152:Cordillera",
                      "133:Chacabuco","134:Maipo","135:Melipilla","136:Talagante")
provincia_codes_pacha <- as.data.frame(provincia_codes_pacha)
provincia_codes_pacha <- data.frame(do.call('rbind', strsplit(as.character(provincia_codes_pacha$provincia_codes_pacha), ':', fixed=TRUE)))
setnames(provincia_codes_pacha, colnames(provincia_codes_pacha), c("provincia_pacha_id","provincia_name"))