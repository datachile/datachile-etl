# Paste the relevant columns
nesi_individuals_with_grants_2011 <- nesi_individuals_with_grants_2011[,c("ING_T_P", "FACT_PER", "OCUP_REF", "SEXO", "R_P_C", "CISE")]
nesi_individuals_with_grants_2011$YEAR <- 2011

# Keep only the people that reported their wage
nesi_individuals_with_grants_2011$ING_T_P <- as.numeric(as.character(nesi_individuals_with_grants_2011$ING_T_P))
nesi_individuals_with_grants_2011 <- subset(nesi_individuals_with_grants_2011, nesi_individuals_with_grants_2011$ING_T_P > 0)

nesi_individuals_with_grants_2011$FACT_PER <- as.numeric(as.character(nesi_individuals_with_grants_2011$FACT_PER))
nesi_individuals_with_grants_2011$YEAR <- as.numeric(as.character(nesi_individuals_with_grants_2011$YEAR))

# Trim leading/ending whitespace + Fix characters/uppercase
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix characters/uppercase
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("<e1>", "\u00e1", x))) # a with acute
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("<c1>", "\u00c1", x))) # A with acute
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("<e9>", "\u00e9", x))) # e with acute
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("\xed", "\u00ed", x))) # i with acute
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("<ed>", "\u00ed", x))) # i with acute
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("<f3>", "\u00f3", x))) # o with acute
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("\xfa", "\u00fa", x))) # u with acute
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("<fa>", "\u00fa", x))) # u with acute 
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("\xda", "\u00da", x))) # U with acute
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("<da>", "\u00da", x))) # U with acute
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("\xf1", "\u00f1", x))) # n with tilde
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("<f1>", "\u00f1", x))) # n with tilde
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("\xd1", "\u00d1", x))) # N with tilde
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("<d1>", "\u00d1", x))) # N with tilde
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("\xb4", "\u0027", x))) # apostrophe
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("<b4>", "\u0027", x))) # apostrophe
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub(" De ", " de ", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub(" Del ", " del ", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub(" La ", " la ", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub(" Los ", " los ", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub(" Y ", " y ", x)))

# Fix comuna
#unique(subset(nesi_individuals_with_grants_2011$comuna_name, !(nesi_individuals_with_grants_2011$comuna_name %in% regiones_casen_2015$comuna_name)))
#unique(subset(nesi_individuals_with_grants_2011$R_P_C, !(nesi_individuals_with_grants_2011$R_P_C %in% region_codes_datachile$comuna_name)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("Los Alamos", "Los \u00c1lamos", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("Los Angeles", "Los \u00c1ngeles", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("Quilpue", "Quilpu\u00e9", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("TALCAHUANO", "Talcahuano", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("TRAIGUEN", "Traigu\u00e9n", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("VILLARRICA", "Villarrica", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("Coihaique", "Coyhaique", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("Ais\u00e9n", "Ays\u00e9n", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("SAN MIGUEL", "San Miguel", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("LA FLORIDA", "La Florida", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("\u00d1U\u00d1OA", "\u00d1u\u00f1oa", x)))
nesi_individuals_with_grants_2011 <- as.data.frame(lapply(nesi_individuals_with_grants_2011, function(x) gsub("PAILLACO", "Paillaco", x)))

# Fix colnames
setnames(nesi_individuals_with_grants_2011, colnames(nesi_individuals_with_grants_2011),
         c("wage", "weight", "occupational_situation", "sex", "comuna_name", "icse", "year"))

# Move year
nesi_individuals_with_grants_2011 <- move_col(nesi_individuals_with_grants_2011, c("year" = 1))

# Add region and provincia
nesi_individuals_with_grants_2011 <- move_col(nesi_individuals_with_grants_2011, c("comuna_name" = ncol(nesi_individuals_with_grants_2011)))
nesi_individuals_with_grants_2011 <- join(nesi_individuals_with_grants_2011, regiones_casen_2015, by = "comuna_name")
nesi_individuals_with_grants_2011 <- join(nesi_individuals_with_grants_2011, region_codes_datachile[,c("comuna_name","comuna_datachile_id","region_id")], by = "comuna_name")
nesi_individuals_with_grants_2011 <- join(nesi_individuals_with_grants_2011, provincia_codes_pacha[,c("provincia_name","provincia_pacha_id")], by = "provincia_name")
