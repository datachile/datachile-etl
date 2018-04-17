url <- "https://servel.cl/resultado-eleccion-presidencial-parlamentaria-y-de-cores-2013/"
url2 <- getURL(url)
parsed <- htmlParse(url2)

links_senadores = as_tibble(xpathSApply(parsed, path = "//a", xmlGetAttr, "href")) %>%
  filter(str_detect(value, 'xlsx')) %>%
  filter(str_detect(value, 'Senadores'))

archivos_senadores <- links_senadores %>%
  mutate(value = gsub(".*/","",value))

fwrite(links_senadores, "resultados-parlamentarias-2013/links-senadores")

try(dir.create("resultados-parlamentarias-2013/computo/"))

for(j in 1:nrow(archivos_senadores)) {
  archivo = archivos_senadores$value[[j]]
  if(!file.exists(paste0("resultados-parlamentarias-2013/computo/",archivo))) {
    url = links_senadores$value[[j]]
    try(download.file(url, paste0("resultados-parlamentarias-2013/computo/",archivo)))
  }
}
