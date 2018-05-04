casen_csv <- list.files(path = "fixed_comunas", pattern = "csv", full.names = T)
casen_zip <- gsub("csv", "zip", casen_csv)

for (j in 1:length(casen_csv)) {
  if (!file.exists(casen_zip[[j]])) {
    try(system(paste("7z a", casen_zip[[j]], casen_csv[[j]])))
    try(file.remove(casen_csv[[j]]))
  }
}

try(unlink("temp", recursive = T))

gc()
