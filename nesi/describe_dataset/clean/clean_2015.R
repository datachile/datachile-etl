#########################
# Drop region and comuna
#########################

drop <- c("provincia", "region")
casen_2015 <- casen_2015[,!(names(casen_2015) %in% drop)]

############################################################
# Trim leading/ending whitespace + Fix characters/uppercase
############################################################

casen_2015$comuna <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", casen_2015$comuna, perl=TRUE)
casen_2015$comuna <- gsub("^\\s+|\\s+$", "", casen_2015$comuna)

###########################
# Fix characters/uppercase
###########################

casen_2015$comuna <- gsub("\xe1", "\u00e1", casen_2015$comuna) # a with acute
casen_2015$comuna <- gsub("<e1>", "\u00e1", casen_2015$comuna) # a with acute
casen_2015$comuna <- gsub("<c1>", "\u00c1", casen_2015$comuna) # A with acute
casen_2015$comuna <- gsub("\xe9", "\u00e9", casen_2015$comuna) # e with acute
casen_2015$comuna <- gsub("<e9>", "\u00e9", casen_2015$comuna) # e with acute
casen_2015$comuna <- gsub("\xed", "\u00ed", casen_2015$comuna) # i with acute
casen_2015$comuna <- gsub("<ed>", "\u00ed", casen_2015$comuna) # i with acute
casen_2015$comuna <- gsub("\xf3", "\u00f3", casen_2015$comuna) # o with acute
casen_2015$comuna <- gsub("<f3>", "\u00f3", casen_2015$comuna) # o with acute
casen_2015$comuna <- gsub("\xfa", "\u00fa", casen_2015$comuna) # u with acute
casen_2015$comuna <- gsub("<fa>", "\u00fa", casen_2015$comuna) # u with acute 
casen_2015$comuna <- gsub("\xda", "\u00da", casen_2015$comuna) # U with acute
casen_2015$comuna <- gsub("<da>", "\u00da", casen_2015$comuna) # U with acute
casen_2015$comuna <- gsub("\xf1", "\u00f1", casen_2015$comuna) # n with tilde
casen_2015$comuna <- gsub("<f1>", "\u00f1", casen_2015$comuna) # n with tilde
casen_2015$comuna <- gsub("\xfc\xbe\x8c\x96\x98\xbc", "\u00f1", casen_2015$comuna) # n with tilde 
casen_2015$comuna <- gsub("\xd1", "\u00d1", casen_2015$comuna) # N with tilde
casen_2015$comuna <- gsub("<d1>", "\u00d1", casen_2015$comuna) # N with tilde
casen_2015$comuna <- gsub("\xfc\xbe\x8c\x96\x90\xbc", "\u00d1", casen_2015$comuna) # N with tilde
casen_2015$comuna <- gsub("\xb4", "\u0027", casen_2015$comuna) # apostrophe
casen_2015$comuna <- gsub("<b4>", "\u0027", casen_2015$comuna) # apostrophe
casen_2015$comuna <- gsub(" De ", " de ", casen_2015$comuna)
casen_2015$comuna <- gsub(" Del ", " del ", casen_2015$comuna)
casen_2015$comuna <- gsub(" La ", " la ", casen_2015$comuna)
casen_2015$comuna <- gsub(" Los ", " los ", casen_2015$comuna)
casen_2015$comuna <- gsub(" Y ", " y ", casen_2015$comuna)

#############
# Fix comuna
#############

casen_2015$comuna <- gsub("Alto Biob\u00edo", "Alto B\u00edob\u00edo", casen_2015$comuna)
casen_2015$comuna <- gsub("Los Alamos", "Los \u00c1lamos", casen_2015$comuna)
