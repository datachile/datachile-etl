url <- "https://servel.cl/resultado-eleccion-presidencial-parlamentaria-y-de-cores-2013/"
url2 <- getURL(url)
parsed <- htmlParse(url2)

links_presidente = as_tibble(xpathSApply(parsed, path = "//a", xmlGetAttr, "href")) %>%
  filter(str_detect(value, 'xlsx')) %>%
  filter(str_detect(value, 'Presidente'))

archivos_presidente <- links_presidente %>%
  mutate(value = gsub(".*/","",value))

fwrite(links_presidente, "resultados-presidenciales-2013/links-presidente")

try(dir.create("resultados-presidenciales-2013/computo/"))

for(j in 1:nrow(archivos_presidente)) {
  archivo = archivos_presidente$value[[j]]
  if(!file.exists(paste0("resultados-presidenciales-2013/computo/",archivo))) {
    url = links_presidente$value[[j]]
    try(download.file(url, paste0("resultados-presidenciales-2013/computo/",archivo)))
  }
}
