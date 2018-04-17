url_padron <- "https://servel.cl/wp-content/uploads/2016/10/Estad_Comuna_MujVarTot-1.xlsx"
xlsx_padron <- "resultados-municipales-2016/municipales_2016_padron.xlsx"

if (!file.exists(xlsx_padron)) {
  try(download.file(url_padron, xlsx_padron))
}
