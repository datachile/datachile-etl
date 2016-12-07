# Paste the relevant columns
nesi_individuals_with_grants_2010 <- nesi_individuals_with_grants_2010[,c("ING_T_P", "FACT_PER", "OCUP_REF", "SEXO", "REGION", "CISE")]
nesi_individuals_with_grants_2010$YEAR <- 2010

# Trim leading/ending whitespace + Fix characters/uppercase
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)))
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function (x) gsub("^\\s+|\\s+$", "", x)))

# Fix characters/uppercase
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("\xe1", "\u00e1", x))) # a with acute
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("<e1>", "\u00e1", x))) # a with acute
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("<c1>", "\u00c1", x))) # A with acute
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("\xe9", "\u00e9", x))) # e with acute
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("<e9>", "\u00e9", x))) # e with acute
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("\xed", "\u00ed", x))) # i with acute
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("<ed>", "\u00ed", x))) # i with acute
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("\xf3", "\u00f3", x))) # o with acute
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("<f3>", "\u00f3", x))) # o with acute
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("\xfa", "\u00fa", x))) # u with acute
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("<fa>", "\u00fa", x))) # u with acute 
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("\xda", "\u00da", x))) # U with acute
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("<da>", "\u00da", x))) # U with acute
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("\xf1", "\u00f1", x))) # n with tilde
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("<f1>", "\u00f1", x))) # n with tilde
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", x))) # n with tilde 
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("\xd1", "\u00d1", x))) # N with tilde
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("<d1>", "\u00d1", x))) # N with tilde
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", x))) # N with tilde
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("\xb4", "\u0027", x))) # apostrophe
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub("<b4>", "\u0027", x))) # apostrophe
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub(" De ", " de ", x)))
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub(" Del ", " del ", x)))
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub(" La ", " la ", x)))
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub(" Los ", " los ", x)))
nesi_individuals_with_grants_2010 <- as.data.frame(lapply(nesi_individuals_with_grants_2010, function(x) gsub(" Y ", " y ", x)))

# Keep only the people that reported their wage
nesi_individuals_with_grants_2010$ING_T_P <- as.numeric(as.character(nesi_individuals_with_grants_2010$ING_T_P))
nesi_individuals_with_grants_2010 <- subset(nesi_individuals_with_grants_2010, nesi_individuals_with_grants_2010$ING_T_P > 0)

nesi_individuals_with_grants_2010$FACT_PER <- as.numeric(as.character(nesi_individuals_with_grants_2010$FACT_PER))
nesi_individuals_with_grants_2010$YEAR <- as.numeric(as.character(nesi_individuals_with_grants_2010$YEAR))
