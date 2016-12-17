#########################
# Drop region and comuna
#########################

drop <- c("REGION")
nesi_individuals_with_grants_2015 <- nesi_individuals_with_grants_2015[,!(names(nesi_individuals_with_grants_2015) %in% drop)]

############################################################
# Trim leading/ending whitespace + Fix characters/uppercase
############################################################

nesi_individuals_with_grants_2015$R_P_C <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", nesi_individuals_with_grants_2015$R_P_C, perl=TRUE)
nesi_individuals_with_grants_2015$R_P_C <- gsub("^\\s+|\\s+$", "", nesi_individuals_with_grants_2015$R_P_C)

###########################
# Fix characters/uppercase
###########################

nesi_individuals_with_grants_2015$R_P_C <- gsub("\xe1", "\u00e1", nesi_individuals_with_grants_2015$R_P_C) # a with acute
nesi_individuals_with_grants_2015$R_P_C <- gsub("<e1>", "\u00e1", nesi_individuals_with_grants_2015$R_P_C) # a with acute
nesi_individuals_with_grants_2015$R_P_C <- gsub("<c1>", "\u00c1", nesi_individuals_with_grants_2015$R_P_C) # A with acute
nesi_individuals_with_grants_2015$R_P_C <- gsub("\xe9", "\u00e9", nesi_individuals_with_grants_2015$R_P_C) # e with acute
nesi_individuals_with_grants_2015$R_P_C <- gsub("<e9>", "\u00e9", nesi_individuals_with_grants_2015$R_P_C) # e with acute
nesi_individuals_with_grants_2015$R_P_C <- gsub("\xed", "\u00ed", nesi_individuals_with_grants_2015$R_P_C) # i with acute
nesi_individuals_with_grants_2015$R_P_C <- gsub("<ed>", "\u00ed", nesi_individuals_with_grants_2015$R_P_C) # i with acute
nesi_individuals_with_grants_2015$R_P_C <- gsub("\xf3", "\u00f3", nesi_individuals_with_grants_2015$R_P_C) # o with acute
nesi_individuals_with_grants_2015$R_P_C <- gsub("<f3>", "\u00f3", nesi_individuals_with_grants_2015$R_P_C) # o with acute
nesi_individuals_with_grants_2015$R_P_C <- gsub("\xfa", "\u00fa", nesi_individuals_with_grants_2015$R_P_C) # u with acute
nesi_individuals_with_grants_2015$R_P_C <- gsub("<fa>", "\u00fa", nesi_individuals_with_grants_2015$R_P_C) # u with acute 
nesi_individuals_with_grants_2015$R_P_C <- gsub("\xda", "\u00da", nesi_individuals_with_grants_2015$R_P_C) # U with acute
nesi_individuals_with_grants_2015$R_P_C <- gsub("<da>", "\u00da", nesi_individuals_with_grants_2015$R_P_C) # U with acute
nesi_individuals_with_grants_2015$R_P_C <- gsub("\xf1", "\u00f1", nesi_individuals_with_grants_2015$R_P_C) # n with tilde
nesi_individuals_with_grants_2015$R_P_C <- gsub("<f1>", "\u00f1", nesi_individuals_with_grants_2015$R_P_C) # n with tilde
nesi_individuals_with_grants_2015$R_P_C <- gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", nesi_individuals_with_grants_2015$R_P_C) # n with tilde 
nesi_individuals_with_grants_2015$R_P_C <- gsub("\xd1", "\u00d1", nesi_individuals_with_grants_2015$R_P_C) # N with tilde
nesi_individuals_with_grants_2015$R_P_C <- gsub("<d1>", "\u00d1", nesi_individuals_with_grants_2015$R_P_C) # N with tilde
nesi_individuals_with_grants_2015$R_P_C <- gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", nesi_individuals_with_grants_2015$R_P_C) # N with tilde
nesi_individuals_with_grants_2015$R_P_C <- gsub("\xb4", "\u0027", nesi_individuals_with_grants_2015$R_P_C) # apostrophe
nesi_individuals_with_grants_2015$R_P_C <- gsub("<b4>", "\u0027", nesi_individuals_with_grants_2015$R_P_C) # apostrophe
nesi_individuals_with_grants_2015$R_P_C <- gsub(" De ", " de ", nesi_individuals_with_grants_2015$R_P_C)
nesi_individuals_with_grants_2015$R_P_C <- gsub(" Del ", " del ", nesi_individuals_with_grants_2015$R_P_C)
nesi_individuals_with_grants_2015$R_P_C <- gsub(" La ", " la ", nesi_individuals_with_grants_2015$R_P_C)
nesi_individuals_with_grants_2015$R_P_C <- gsub(" Los ", " los ", nesi_individuals_with_grants_2015$R_P_C)
nesi_individuals_with_grants_2015$R_P_C <- gsub(" Y ", " y ", nesi_individuals_with_grants_2015$R_P_C)

#############
# Fix comuna
#############

nesi_individuals_with_grants_2015$R_P_C <- gsub("Alto Biob\u00edo", "Alto B\u00edob\u00edo", nesi_individuals_with_grants_2015$R_P_C)
nesi_individuals_with_grants_2015$R_P_C <- gsub("Los Alamos", "Los \u00c1lamos", nesi_individuals_with_grants_2015$R_P_C)
nesi_individuals_with_grants_2015$R_P_C <- gsub("Los Angeles", "Los \u00c1ngeles", nesi_individuals_with_grants_2015$R_P_C)
