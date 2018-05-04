url <- "https://servel.cl/resultado-eleccion-presidencial-parlamentaria-y-de-cores-2013/"
url2 <- getURL(url)
parsed <- htmlParse(url2)

links_diputados = as_tibble(xpathSApply(parsed, path = "//a", xmlGetAttr, "href")) %>%
  filter(str_detect(value, 'xlsx')) %>%
  filter(str_detect(value, 'Diputados'))

archivos_diputados <- links_diputados %>%
  mutate(value = gsub(".*/","",value))

fwrite(links_diputados, "resultados-parlamentarias-2013/links-diputados")

try(dir.create("resultados-parlamentarias-2013/computo/"))

for(j in 1:nrow(archivos_diputados)) {
  archivo = archivos_diputados$value[[j]]
  if(!file.exists(paste0("resultados-parlamentarias-2013/computo/",archivo))) {
    url = links_diputados$value[[j]]
    try(download.file(url, paste0("resultados-parlamentarias-2013/computo/",archivo)))
  }
}
