###########################
# Libraries
###########################

# 1: define the libraries to use
libraries <- c("foreign","httr", "data.table", "stringr")

###########################
# Read dataset
###########################

load("nesi_2015/individuals/nesi_individuals_with_grants_2015.RData")

##############
# Save labels
##############

questions_labels <- as.data.frame(attributes(nesi_individuals_with_grants_2015)$variable.labels)
write.csv(questions_labels, file = "describe_dataset/4_csv_files/questions_labels_2015.csv")
