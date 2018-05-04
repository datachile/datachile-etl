links_senadores <- read_delim("resultados-parlamentarias-2017/links-senadores-computo", 
                              "\t", escape_double = FALSE, col_names = FALSE, 
                              trim_ws = TRUE)

links_senadores <- links_senadores %>% 
  mutate(X1 = gsub("curl \'", "", X1),
         X1 = gsub("\' .*", "", X1)) %>% 
  filter(!grepl("google", X1))

links_senadores_computo <- links_senadores %>% 
  filter(grepl("computo", X1)) %>% 
  mutate(X2 = gsub(".*comunas/", "", X1),
         X2 = paste0("resultados-parlamentarias-2017/senadores-computo/", X2))

try(dir.create("resultados-parlamentarias-2017/senadores-computo"))

for (j in 1:nrow(links_senadores_computo)) {
  if (!file.exists(links_senadores_computo$X2[[j]])) {
    try(download.file(links_senadores_computo$X1[[j]],
                      links_senadores_computo$X2[[j]]))
  }
}
