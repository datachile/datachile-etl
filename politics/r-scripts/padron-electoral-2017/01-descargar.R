# Encontre este XML con todas las rutas validas :D
url = "http://cdn.servel.cl/padronesauditados/archivos.xml"

if(!file.exists("padron-electoral-2017/archivos.xml")){download.file(url, "padron-electoral-2017/archivos.xml")}

read_lines("padron-electoral-2017/archivos.xml") %>% 
  grep("archcomuna", ., value=TRUE) %>% 
  str_match(., "<archcomuna>(.*?)</archcomuna>") %>% 
  as_tibble() %>% 
  select(V2) %>% 
  rename(pdf = V2) -> pdfs

read_lines("padron-electoral-2017/archivos.xml") %>% 
  grep("nomcomuna", ., value=TRUE) %>% 
  str_match(., "<nomcomuna>(.*?)</nomcomuna>") %>% 
  as_tibble() %>% 
  select(V2) %>% 
  rename(comuna = V2) %>% 
  mutate(comuna = toupper(iconv(comuna, from = "", to = "ASCII//TRANSLIT"))) %>% 
  bind_cols(pdfs) %>% 
  mutate(pdf = paste0("padron-electoral-2017/pdf/", pdf),
         xml = gsub("padron-electoral-2017/pdf", "xml", pdf)) -> comunas_archivos

fwrite(comunas_archivos, "padron-electoral-2017/comunas_archivos.csv")

pdfs %>%
  mutate(base_url = "http://cdn.servel.cl/padronesauditados/padron/",
         link = paste0(base_url, pdf)) -> links_validos

lista_links <- as.list(links_validos$link)

lista_pdf <- lista_links %>% 
  gsub(".*/", "", .) %>% 
  paste0("padron-electoral-2017/pdf/", .)

try(dir.create("padron-electoral-2017/pdf"))

for(j in 1:length(lista_links)) {
  if(!file.exists(lista_pdf[[j]])) {
    try(download.file(lista_links[[j]], lista_pdf[[j]]))
  }
}
