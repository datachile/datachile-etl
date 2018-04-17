tidy_data <- list.files("3_tidy_data", full.names = T)
file_name <- list.files("3_tidy_data") %>% gsub(".csv", "", .)

psu_db = dbConnect(RSQLite::SQLite(), "4_sql/psu.sqlite")

for (j in 1:length(tidy_data)) {
  assign("table", fread(tidy_data[[j]]))
  dbWriteTable(psu_db, file_name[[j]], table)
  rm(table)
}

#dbListTables(psu_db)
dbDisconnect(psu_db)
