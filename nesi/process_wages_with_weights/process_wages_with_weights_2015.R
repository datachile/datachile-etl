# Paste the relevant columns
nesi_individuals_with_grants_2015 <- nesi_individuals_with_grants_2015[,c("ING_T_P", "FACT_PER", "OCUP_REF", "SEXO", "R_P_C", "CISE", "CINE", "B1", "B14", "C1", "HABITUALES", "B15_1")]
nesi_individuals_with_grants_2015$year <- 2015

# Move year
nesi_individuals_with_grants_2015 <- move_col(nesi_individuals_with_grants_2015, c("year" = 1))

# Change colnames
setnames(nesi_individuals_with_grants_2015, colnames(nesi_individuals_with_grants_2015),
         c("year", "wage", "weight", "occupational_situation", "sex", "comuna_name", "icse", "isced", "isco", "isic", "work_day", "usual_working_hours", "company_size"))

# Keep only the people that reported their wage
nesi_individuals_with_grants_2015$wage <- as.numeric(as.character(nesi_individuals_with_grants_2015$wage))
nesi_individuals_with_grants_2015 <- subset(nesi_individuals_with_grants_2015, nesi_individuals_with_grants_2015$wage > 0)

nesi_individuals_with_grants_2015$weight <- as.numeric(as.character(nesi_individuals_with_grants_2015$weight))

# Trim leading/ending whitespace + Fix characters/uppercase
nesi_individuals_with_grants_2015$comuna_name <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", nesi_individuals_with_grants_2015$comuna_name, perl=TRUE)
nesi_individuals_with_grants_2015$comuna_name <- gsub("^\\s+|\\s+$", "", nesi_individuals_with_grants_2015$comuna_name)

# Fix characters/uppercase
nesi_individuals_with_grants_2015$comuna_name <- gsub("\xe1", "\u00e1", nesi_individuals_with_grants_2015$comuna_name) # a with acute
nesi_individuals_with_grants_2015$comuna_name <- gsub("<e1>", "\u00e1", nesi_individuals_with_grants_2015$comuna_name) # a with acute
nesi_individuals_with_grants_2015$comuna_name <- gsub("<c1>", "\u00c1", nesi_individuals_with_grants_2015$comuna_name) # A with acute
nesi_individuals_with_grants_2015$comuna_name <- gsub("\xe9", "\u00e9", nesi_individuals_with_grants_2015$comuna_name) # e with acute
nesi_individuals_with_grants_2015$comuna_name <- gsub("<e9>", "\u00e9", nesi_individuals_with_grants_2015$comuna_name) # e with acute
nesi_individuals_with_grants_2015$comuna_name <- gsub("\xed", "\u00ed", nesi_individuals_with_grants_2015$comuna_name) # i with acute
nesi_individuals_with_grants_2015$comuna_name <- gsub("<ed>", "\u00ed", nesi_individuals_with_grants_2015$comuna_name) # i with acute
nesi_individuals_with_grants_2015$comuna_name <- gsub("\xf3", "\u00f3", nesi_individuals_with_grants_2015$comuna_name) # o with acute
nesi_individuals_with_grants_2015$comuna_name <- gsub("<f3>", "\u00f3", nesi_individuals_with_grants_2015$comuna_name) # o with acute
nesi_individuals_with_grants_2015$comuna_name <- gsub("\xfa", "\u00fa", nesi_individuals_with_grants_2015$comuna_name) # u with acute
nesi_individuals_with_grants_2015$comuna_name <- gsub("<fa>", "\u00fa", nesi_individuals_with_grants_2015$comuna_name) # u with acute 
nesi_individuals_with_grants_2015$comuna_name <- gsub("\xda", "\u00da", nesi_individuals_with_grants_2015$comuna_name) # U with acute
nesi_individuals_with_grants_2015$comuna_name <- gsub("<da>", "\u00da", nesi_individuals_with_grants_2015$comuna_name) # U with acute
nesi_individuals_with_grants_2015$comuna_name <- gsub("\xf1", "\u00f1", nesi_individuals_with_grants_2015$comuna_name) # n with tilde
nesi_individuals_with_grants_2015$comuna_name <- gsub("<f1>", "\u00f1", nesi_individuals_with_grants_2015$comuna_name) # n with tilde
nesi_individuals_with_grants_2015$comuna_name <- gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", nesi_individuals_with_grants_2015$comuna_name) # n with tilde 
nesi_individuals_with_grants_2015$comuna_name <- gsub("\xd1", "\u00d1", nesi_individuals_with_grants_2015$comuna_name) # N with tilde
nesi_individuals_with_grants_2015$comuna_name <- gsub("<d1>", "\u00d1", nesi_individuals_with_grants_2015$comuna_name) # N with tilde
nesi_individuals_with_grants_2015$comuna_name <- gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", nesi_individuals_with_grants_2015$comuna_name) # N with tilde
nesi_individuals_with_grants_2015$comuna_name <- gsub("\xb4", "\u0027", nesi_individuals_with_grants_2015$comuna_name) # apostrophe
nesi_individuals_with_grants_2015$comuna_name <- gsub("<b4>", "\u0027", nesi_individuals_with_grants_2015$comuna_name) # apostrophe
nesi_individuals_with_grants_2015$comuna_name <- gsub(" De ", " de ", nesi_individuals_with_grants_2015$comuna_name)
nesi_individuals_with_grants_2015$comuna_name <- gsub(" Del ", " del ", nesi_individuals_with_grants_2015$comuna_name)
nesi_individuals_with_grants_2015$comuna_name <- gsub(" La ", " la ", nesi_individuals_with_grants_2015$comuna_name)
nesi_individuals_with_grants_2015$comuna_name <- gsub(" Los ", " los ", nesi_individuals_with_grants_2015$comuna_name)
nesi_individuals_with_grants_2015$comuna_name <- gsub(" Y ", " y ", nesi_individuals_with_grants_2015$comuna_name)

nesi_individuals_with_grants_2015$occupational_situation <- gsub("\xe1", "\u00e1", nesi_individuals_with_grants_2015$occupational_situation) # a with acute
nesi_individuals_with_grants_2015$occupational_situation <- gsub("<e1>", "\u00e1", nesi_individuals_with_grants_2015$occupational_situation) # a with acute

nesi_individuals_with_grants_2015$icse <- gsub("\xe1", "\u00e1", nesi_individuals_with_grants_2015$icse) # a with acute
nesi_individuals_with_grants_2015$icse <- gsub("<e1>", "\u00e1", nesi_individuals_with_grants_2015$icse) # a with acute
nesi_individuals_with_grants_2015$icse <- gsub("<c1>", "\u00c1", nesi_individuals_with_grants_2015$icse) # A with acute
nesi_individuals_with_grants_2015$icse <- gsub("\xe9", "\u00e9", nesi_individuals_with_grants_2015$icse) # e with acute
nesi_individuals_with_grants_2015$icse <- gsub("<e9>", "\u00e9", nesi_individuals_with_grants_2015$icse) # e with acute
nesi_individuals_with_grants_2015$icse <- gsub("\xed", "\u00ed", nesi_individuals_with_grants_2015$icse) # i with acute
nesi_individuals_with_grants_2015$icse <- gsub("<ed>", "\u00ed", nesi_individuals_with_grants_2015$icse) # i with acute
nesi_individuals_with_grants_2015$icse <- gsub("\xf3", "\u00f3", nesi_individuals_with_grants_2015$icse) # o with acute
nesi_individuals_with_grants_2015$icse <- gsub("<f3>", "\u00f3", nesi_individuals_with_grants_2015$icse) # o with acute
nesi_individuals_with_grants_2015$icse <- gsub("\xfa", "\u00fa", nesi_individuals_with_grants_2015$icse) # u with acute
nesi_individuals_with_grants_2015$icse <- gsub("<fa>", "\u00fa", nesi_individuals_with_grants_2015$icse) # u with acute 
nesi_individuals_with_grants_2015$icse <- gsub("\xda", "\u00da", nesi_individuals_with_grants_2015$icse) # U with acute
nesi_individuals_with_grants_2015$icse <- gsub("<da>", "\u00da", nesi_individuals_with_grants_2015$icse) # U with acute
nesi_individuals_with_grants_2015$icse <- gsub("\xf1", "\u00f1", nesi_individuals_with_grants_2015$icse) # n with tilde
nesi_individuals_with_grants_2015$icse <- gsub("<f1>", "\u00f1", nesi_individuals_with_grants_2015$icse) # n with tilde
nesi_individuals_with_grants_2015$icse <- gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", nesi_individuals_with_grants_2015$icse) # n with tilde 
nesi_individuals_with_grants_2015$icse <- gsub("\xd1", "\u00d1", nesi_individuals_with_grants_2015$icse) # N with tilde
nesi_individuals_with_grants_2015$icse <- gsub("<d1>", "\u00d1", nesi_individuals_with_grants_2015$icse) # N with tilde
nesi_individuals_with_grants_2015$icse <- gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", nesi_individuals_with_grants_2015$icse) # N with tilde

nesi_individuals_with_grants_2015$isced <- gsub("\xe1", "\u00e1", nesi_individuals_with_grants_2015$isced) # a with acute
nesi_individuals_with_grants_2015$isced <- gsub("<e1>", "\u00e1", nesi_individuals_with_grants_2015$isced) # a with acute
nesi_individuals_with_grants_2015$isced <- gsub("<c1>", "\u00c1", nesi_individuals_with_grants_2015$isced) # A with acute
nesi_individuals_with_grants_2015$isced <- gsub("\xe9", "\u00e9", nesi_individuals_with_grants_2015$isced) # e with acute
nesi_individuals_with_grants_2015$isced <- gsub("<e9>", "\u00e9", nesi_individuals_with_grants_2015$isced) # e with acute
nesi_individuals_with_grants_2015$isced <- gsub("\xed", "\u00ed", nesi_individuals_with_grants_2015$isced) # i with acute
nesi_individuals_with_grants_2015$isced <- gsub("<ed>", "\u00ed", nesi_individuals_with_grants_2015$isced) # i with acute
nesi_individuals_with_grants_2015$isced <- gsub("\xf3", "\u00f3", nesi_individuals_with_grants_2015$isced) # o with acute
nesi_individuals_with_grants_2015$isced <- gsub("<f3>", "\u00f3", nesi_individuals_with_grants_2015$isced) # o with acute
nesi_individuals_with_grants_2015$isced <- gsub("\xfa", "\u00fa", nesi_individuals_with_grants_2015$isced) # u with acute
nesi_individuals_with_grants_2015$isced <- gsub("<fa>", "\u00fa", nesi_individuals_with_grants_2015$isced) # u with acute 
nesi_individuals_with_grants_2015$isced <- gsub("\xda", "\u00da", nesi_individuals_with_grants_2015$isced) # U with acute
nesi_individuals_with_grants_2015$isced <- gsub("<da>", "\u00da", nesi_individuals_with_grants_2015$isced) # U with acute
nesi_individuals_with_grants_2015$isced <- gsub("\xf1", "\u00f1", nesi_individuals_with_grants_2015$isced) # n with tilde
nesi_individuals_with_grants_2015$isced <- gsub("<f1>", "\u00f1", nesi_individuals_with_grants_2015$isced) # n with tilde
nesi_individuals_with_grants_2015$isced <- gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", nesi_individuals_with_grants_2015$isced) # n with tilde 
nesi_individuals_with_grants_2015$isced <- gsub("\xd1", "\u00d1", nesi_individuals_with_grants_2015$isced) # N with tilde
nesi_individuals_with_grants_2015$isced <- gsub("<d1>", "\u00d1", nesi_individuals_with_grants_2015$isced) # N with tilde
nesi_individuals_with_grants_2015$isced <- gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", nesi_individuals_with_grants_2015$isced) # N with tilde

nesi_individuals_with_grants_2015$isco <- gsub("\xe1", "\u00e1", nesi_individuals_with_grants_2015$isco) # a with acute
nesi_individuals_with_grants_2015$isco <- gsub("<e1>", "\u00e1", nesi_individuals_with_grants_2015$isco) # a with acute
nesi_individuals_with_grants_2015$isco <- gsub("<c1>", "\u00c1", nesi_individuals_with_grants_2015$isco) # A with acute
nesi_individuals_with_grants_2015$isco <- gsub("\xe9", "\u00e9", nesi_individuals_with_grants_2015$isco) # e with acute
nesi_individuals_with_grants_2015$isco <- gsub("<e9>", "\u00e9", nesi_individuals_with_grants_2015$isco) # e with acute
nesi_individuals_with_grants_2015$isco <- gsub("\xed", "\u00ed", nesi_individuals_with_grants_2015$isco) # i with acute
nesi_individuals_with_grants_2015$isco <- gsub("<ed>", "\u00ed", nesi_individuals_with_grants_2015$isco) # i with acute
nesi_individuals_with_grants_2015$isco <- gsub("\xf3", "\u00f3", nesi_individuals_with_grants_2015$isco) # o with acute
nesi_individuals_with_grants_2015$isco <- gsub("<f3>", "\u00f3", nesi_individuals_with_grants_2015$isco) # o with acute
nesi_individuals_with_grants_2015$isco <- gsub("\xfa", "\u00fa", nesi_individuals_with_grants_2015$isco) # u with acute
nesi_individuals_with_grants_2015$isco <- gsub("<fa>", "\u00fa", nesi_individuals_with_grants_2015$isco) # u with acute 
nesi_individuals_with_grants_2015$isco <- gsub("\xda", "\u00da", nesi_individuals_with_grants_2015$isco) # U with acute
nesi_individuals_with_grants_2015$isco <- gsub("<da>", "\u00da", nesi_individuals_with_grants_2015$isco) # U with acute
nesi_individuals_with_grants_2015$isco <- gsub("\xf1", "\u00f1", nesi_individuals_with_grants_2015$isco) # n with tilde
nesi_individuals_with_grants_2015$isco <- gsub("<f1>", "\u00f1", nesi_individuals_with_grants_2015$isco) # n with tilde
nesi_individuals_with_grants_2015$isco <- gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", nesi_individuals_with_grants_2015$isco) # n with tilde 
nesi_individuals_with_grants_2015$isco <- gsub("\xd1", "\u00d1", nesi_individuals_with_grants_2015$isco) # N with tilde
nesi_individuals_with_grants_2015$isco <- gsub("<d1>", "\u00d1", nesi_individuals_with_grants_2015$isco) # N with tilde
nesi_individuals_with_grants_2015$isco <- gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", nesi_individuals_with_grants_2015$isco) # N with tilde

# Fix comuna
nesi_individuals_with_grants_2015$comuna_name <- gsub("Los Alamos", "Los \u00c1lamos", nesi_individuals_with_grants_2015$comuna_name)
nesi_individuals_with_grants_2015$comuna_name <- gsub("Los Angeles", "Los \u00c1ngeles", nesi_individuals_with_grants_2015$comuna_name)
nesi_individuals_with_grants_2015$comuna_name <- gsub("Traiguen", "Traigu\u00e9n", nesi_individuals_with_grants_2015$comuna_name)

# Add region and provincia
nesi_individuals_with_grants_2015 <- move_col(nesi_individuals_with_grants_2015, c("comuna_name" = ncol(nesi_individuals_with_grants_2015)))
nesi_individuals_with_grants_2015 <- join(nesi_individuals_with_grants_2015, regiones_casen_2015, by = "comuna_name")
nesi_individuals_with_grants_2015 <- join(nesi_individuals_with_grants_2015, region_codes_datachile[,c("comuna_name","comuna_datachile_id","region_id")], by = "comuna_name")
nesi_individuals_with_grants_2015 <- join(nesi_individuals_with_grants_2015, provincia_codes_pacha[,c("provincia_name","provincia_pacha_id")], by = "provincia_name")

# Remove non-reported working hours
nesi_individuals_with_grants_2015[nesi_individuals_with_grants_2015$usual_working_hours == 0] <- NA
