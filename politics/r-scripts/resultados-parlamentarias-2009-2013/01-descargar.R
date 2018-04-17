try(dir.create("resultados-parlamentarias-2009/computo/"))

archivos <- tibble(links = c("https://servel.cl/wp-content/uploads/2015/09/resultados_elecciones_senadores.xlsx",
                             "https://servel.cl/wp-content/uploads/2015/09/resultados_elecciones_diputados.xlsx")) %>% 
  mutate(archivo = gsub(".*/", "resultados-parlamentarias-2009/computo/", links))

for(j in 1:nrow(archivos)) {
  archivo = archivos$archivo[[j]]
  if(!file.exists(archivos$archivo[[j]])) {
    archivo = archivos$archivo[[j]]
    url = archivos$links[[j]]
    try(download.file(url, archivo))
  }
}
