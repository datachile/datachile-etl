url_servel = read_html("https://servel.cl/resultados-definitivos-elecciones-municipales-2016/")

links_votaciones = url_servel %>%
  html_nodes(xpath = '//*[contains(concat( " ", @class, " " ), concat( " ", "postclass", " " ))]')

links_votaciones_2 = links_votaciones %>% 
  html_nodes("a") %>% 
  html_attr("href") %>% 
  grep("xlsx", ., value = T) %>% 
  grep("Alcaldes", ., value = T) %>% 
  as_tibble() %>% 
  rename(link = value) %>% 
  mutate(file = gsub(".*/", "resultados-municipales-2016/computo/", link))

write_csv(links_votaciones_2, "resultados-municipales-2016/links-municipales-2016")

try(dir.create("resultados-municipales-2016/computo/"))

for (j in 1:nrow(links_votaciones_2)) {
  if (!file.exists(links_votaciones_2$file[[j]])) {
    try(download.file(links_votaciones_2$link[[j]], links_votaciones_2$file[[j]]))
  }
}
