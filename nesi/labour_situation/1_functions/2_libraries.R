###########################
# Libraries
###########################

# 1: define the libraries to use
libraries <- c("foreign","httr", "ggplot2", "data.table", "plyr", "dplyr", "tidyr", "SciencesPo", 
               "matrixStats", "simpleboot")

# 2: this is the function to download and or load libraries on the fly
download_and_or_load <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

# 3: use the function from step 2
download_and_or_load(libraries)