####################################
# Download and import database
####################################

## individuals with grants

individuals_with_grants_load_dataset <- function(year){
  url <- paste0("https://users.dcc.uchile.cl/~mvargas/nesi/nesi_", year, "/individuals/nesi_individuals_with_grants_", year, "_R.zip")
  folder <- paste0("nesi_", year)
  subfolder <- paste0("nesi_", year,"/individuals")
  zip <- paste0("nesi_", year, "/individuals/nesi_individuals_with_grants_", year, "_R.zip")
  RData <- paste0("nesi_", year, "/individuals/nesi_individuals_with_grants_", year, ".RData")
  
  if(!file.exists(folder)) {
    dir.create(folder)
  }  
  
  if(!file.exists(subfolder)) {
    dir.create(subfolder)
  }
  
  if(!file.exists(zip)) {
    print(paste("downloading data for year", year , "...", sep = " "))
    download.file(url, zip, method="curl")
  }
  
  if(file.exists(RData)) {
    print(paste("importing data for year", year , "...", sep = " "))
    envir = as.environment(1)
    load(RData, envir = envir)
  } else {
    if(!file.exists(RData) & file.exists(zip)) {
      print(paste("decompressing data for year", year , "...", sep = " "))
      unzip(zip, exdir = paste("nesi_", year, "/individuals/", sep = ""))
      print(paste("importing data for year", year , "...", sep = " "))
      envir = as.environment(1)
      load(RData, envir = envir)
    }
  } 
}

## individuals without grants (years 2010, 2013, 2014 & 2015 don't have files without grants columns)

individuals_without_grants_load_dataset <- function(year){
  url <- paste0("https://users.dcc.uchile.cl/~mvargas/nesi/nesi_", year, "/individuals/nesi_individuals_without_grants_", year, "_R.zip")
  folder <- paste0("nesi_", year)
  subfolder <- paste0("nesi_", year,"/individuals")
  zip <- paste0("nesi_", year, "/individuals/nesi_individuals_without_grants_", year, "_R.zip")
  RData <- paste0("nesi_", year, "/individuals/nesi_individuals_without_grants_", year, ".RData")
  
  if(!file.exists(folder)) {
    dir.create(folder)
  }  
  
  if(!file.exists(subfolder)) {
    dir.create(subfolder)
  }
  
  if(!file.exists(zip)) {
    print(paste("downloading data for year", year , "...", sep = " "))
    download.file(url, zip, method="curl")
  }
  
  if(file.exists(RData)) {
    print(paste("importing data for year", year , "...", sep = " "))
    envir = as.environment(1)
    load(RData, envir = envir)
    envir = as.environment(1)
  } else {
    if(!file.exists(RData) & file.exists(zip)) {
      print(paste("decompressing data for year", year , "...", sep = " "))
      unzip(zip, exdir = paste("nesi_", year, "/individuals/", sep = ""))
      print(paste("importing data for year", year , "...", sep = " "))
      envir = as.environment(1)
      load(RData, envir = envir)
    }
  } 
}

## Individuals with grants

individuals_with_grants_load_dataset <- function(year){
  url <- paste0("https://users.dcc.uchile.cl/~mvargas/nesi/nesi_", year, "/individuals/nesi_individuals_with_grants_", year, "_R.zip")
  folder <- paste0("nesi_", year)
  subfolder <- paste0("nesi_", year,"/individuals")
  zip <- paste0("nesi_", year, "/individuals/nesi_individuals_with_grants_", year, "_R.zip")
  RData <- paste0("nesi_", year, "/individuals/nesi_individuals_with_grants_", year, ".RData")
  
  if(!file.exists(folder)) {
    dir.create(folder)
  }
  
  if(!file.exists(subfolder)) {
    dir.create(subfolder)
  } 
  
  if(!file.exists(zip)) {
    print(paste("downloading data for year", year , "...", sep = " "))
    download.file(url, zip, method="curl")
  }
  
  if(file.exists(RData)) {
    print(paste("importing data for year", year , "...", sep = " "))
    envir = as.environment(1)
    load(RData, envir = envir)
  } else {
    if(!file.exists(RData) & file.exists(zip)) {
      print(paste("decompressing data for year", year , "...", sep = " "))
      unzip(zip, exdir = paste("nesi_", year, "/individuals/", sep = ""))
      print(paste("importing data for year", year , "...", sep = " "))
      envir = as.environment(1)
      load(RData, envir = envir)
    }
  } 
}

## Individuals without grants

individuals_without_grants_load_dataset <- function(year){
  url <- paste0("https://users.dcc.uchile.cl/~mvargas/nesi/nesi_", year, "/individuals/nesi_individuals_without_grants_", year, "_R.zip")
  folder <- paste0("nesi_", year)
  subfolder <- paste0("nesi_", year,"/individuals")
  zip <- paste0("nesi_", year, "/individuals/nesi_individuals_without_grants_", year, "_R.zip")
  RData <- paste0("nesi_", year, "/individuals/nesi_individuals_without_grants_", year, ".RData")
  
  if(!file.exists(folder)) {
    dir.create(folder)
  }
  
  if(!file.exists(subfolder)) {
    dir.create(subfolder)
  }
  
  if(!file.exists(zip)) {
    print(paste("downloading data for year", year , "...", sep = " "))
    download.file(url, zip, method="curl")
  }
  
  if(file.exists(RData)) {
    print(paste("importing data for year", year , "...", sep = " "))
    envir = as.environment(1)
    load(RData, envir = envir)
  } else {
    if(!file.exists(RData) & file.exists(zip)) {
      print(paste("decompressing data for year", year , "...", sep = " "))
      unzip(zip, exdir = paste("nesi_", year, "/individuals/", sep = ""))
      print(paste("importing data for year", year , "...", sep = " "))
      envir = as.environment(1)
      load(RData, envir = envir)
    }
  } 
}
