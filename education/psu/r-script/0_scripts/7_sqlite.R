tidy_data <- list.files("2_tidy_data", full.names = T)
file_name <- list.files("2_tidy_data") %>% gsub(".csv", "", .)

dir.create("3_tidy_database")
psu_db <- dbConnect(RSQLite::SQLite(), "3_tidy_database/psu.sqlite")

for (j in 1:length(tidy_data)) {
  assign("table", fread(tidy_data[[j]]))
  dbWriteTable(psu_db, file_name[[j]], table)
  rm(table)
}

#dbListTables(psu_db)
dbDisconnect(psu_db)
