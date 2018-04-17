try(dir.create("xml"))

for(j in 1:length(lista_pdf)) {
  system(paste("pdftohtml -xml -hidden", lista_pdf[[j]]))
}

lista_xml <- list.files("pdf", pattern = "xml", full.names = T)

for(j in 1:length(lista_xml)) {
  file.rename(lista_xml[[j]],  gsub("pdf", "xml", lista_xml[[j]]))
}

lista_xml <- list.files("xml", full.names = T)
