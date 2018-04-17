try(dir.create("raw_data"))

years <-  c(seq(1990, 2000, 2), seq(2003, 2009, 3), seq(2011, 2015, 2))

links <- tibble(
  year = years,
  link = c(
    paste0(
      "http://observatorio.ministeriodesarrollosocial.gob.cl/casen/layout/doc/bases/Casen",
      seq(1990, 1994, 2),
      ".zip"
    ),
    "http://observatorio.ministeriodesarrollosocial.gob.cl/casen/layout/doc/bases/Casen1996.rar",
    paste0(
      "http://observatorio.ministeriodesarrollosocial.gob.cl/casen/layout/doc/bases/Casen",
      seq(1998, 2000, 2),
      ".zip"
    ),
    "http://observatorio.ministeriodesarrollosocial.gob.cl/casen/layout/doc/bases/Casen2003.zip",
    "http://observatorio.ministeriodesarrollosocial.gob.cl/casen/layout/doc/bases/casen2006.zip",
    "http://observatorio.ministeriodesarrollosocial.gob.cl/casen/layout/doc/bases/Casen2009spss.rar",
    "http://observatorio.ministeriodesarrollosocial.gob.cl/casen/layout/doc/bases/casen2011_octubre2011_enero2012_principal_08032013spss.rar",
    "http://observatorio.ministeriodesarrollosocial.gob.cl/documentos/CASEN_2013_MN_B_Principal_spss.rar",
    "http://observatorio.ministeriodesarrollosocial.gob.cl/casen-multidimensional/casen/docs/casen_2015_spss.rar"
  )
)

links <- links %>% 
  mutate(file = gsub(".*\\.", "\\.", link),
         file = paste0("raw_data/casen_", year, "_spss", file))

for (j in 1:nrow(links)) {
  if (!file.exists(links$file[[j]])) {
    try(
      download.file(links$link[[j]], links$file[[j]])
    )
  }
}

write_csv(links, paste0("downloaded_files_", Sys.Date(), ".csv"))
rm(links)
