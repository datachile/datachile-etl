# 1: define the libraries to use
libraries <- c("foreign","httr", "data.table", "stringr")

# 2: this is the function to download and or load libraries on the fly
download_and_or_load <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

# 3: use the function from step 2
download_and_or_load(libraries)

sav <- "casen2015.sav"

# read database

casen2015 <- read.spss(sav, to.data.frame = TRUE)

# save labels

questions_labels <- as.data.frame(attributes(casen2015)$variable.labels)
questions_labels$variable_name <- rownames(questions_labels)
write.csv(questions_labels, file = "questions_labels_2015.csv")

