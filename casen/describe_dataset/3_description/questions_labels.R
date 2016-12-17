###########################
# Libraries
###########################

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

####################################
# Download and import database
####################################

convert_spss <- function(year){
  url <- paste0("https://users.dcc.uchile.cl/~mvargas/casen/casen_", year, "/casen_", year, "_spss.zip")
  folder <- paste0("casen_", year)
  zip <- paste0("casen_", year, "/casen_", year, "_spss.zip")
  sav <- paste0("casen_", year, "/casen_", year, ".sav")
  
  if(!file.exists(folder)) {
    dir.create(folder)
  }  
  
  if(!file.exists(zip)) {
    print(paste("downloading data for year", year , "...", sep = " "))
    download.file(url, zip, method="curl")
  }
  
  if(file.exists(sav)) {
    print(paste("importing data for year", year , "...", sep = " "))
    casen_year <- read.spss(sav, to.data.frame = TRUE)
    envir = as.environment(1)
    setnames(casen_year, colnames(casen_year), iconv(enc2utf8(colnames(casen_year)), sub = "byte"))
    assign(paste("casen", year, sep = "_"), casen_year, envir = envir)
    rm(casen_year)
    
  } else {
    if(!file.exists(sav) & file.exists(zip)) {
      print(paste("decompressing data for year", year , "...", sep = " "))
      unzip(zip, exdir = paste("casen", year, sep = "_"))
      print(paste("importing data for year", year , "...", sep = " "))
      casen_year <- read.spss(sav, to.data.frame = TRUE)
      envir = as.environment(1)
      setnames(casen_year, colnames(casen_year), iconv(enc2utf8(colnames(casen_year)), sub = "byte"))
      assign(paste("casen", year, sep = "_"), casen_year, envir = envir)
      rm(casen_year)
    }
  } 
}

convert_spss(2015)

##############
# Save labels
##############

questions_labels <- as.data.frame(attributes(casen_2015)$variable.labels)
write.csv(questions_labels, file = "describe_dataset/4_csv_files/questions_labels_2015.csv")
