####################################
# Download and read database
####################################

read_dataset <- function(year){
  url <- paste0("https://users.dcc.uchile.cl/~mvargas/casen/casen_", year, "/casen_", year, "_R.zip")
  folder <- paste0("casen_", year)
  zip <- paste0("casen_", year, "/casen_", year, "_R.zip")
  rdata <- paste0("casen_", year, "/casen_", year, ".RData")
  
  if(!file.exists(folder)) {
    dir.create(folder)
  }  
  
  if(!file.exists(zip)) {
    print(paste("downloading data for year", year , "...", sep = " "))
    download.file(url, zip, method="curl")
  }
  
  if(file.exists(rdata)) {
    print(paste("reading data for year", year , "...", sep = " "))
    envir = as.environment(1)
    load(rdata, envir = envir)
  } else {
    if(!file.exists(rdata) & file.exists(zip)) {
      print(paste("decompressing data for year", year , "...", sep = " "))
      unzip(zip, exdir = paste("casen", year, sep = "_"))
      print(paste("reading data for year", year , "...", sep = " "))
      envir = as.environment(1)
      load(rdata, envir = envir)
    }
  } 
}