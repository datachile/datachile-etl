links_diputados <- read_delim("resultados-parlamentarias-2017/links-diputados-computo", 
                                     "\t", escape_double = FALSE, col_names = FALSE, 
                                     trim_ws = TRUE)

links_diputados <- links_diputados %>% 
  mutate(X1 = gsub("curl \'", "", X1),
         X1 = gsub("\' .*", "", X1)) %>% 
  filter(!grepl("google", X1))

links_diputados_computo <- links_diputados %>% 
  filter(grepl("computo", X1)) %>% 
  mutate(X2 = gsub(".*comunas/", "", X1),
         X2 = paste0("resultados-parlamentarias-2017/diputados-computo/", X2))

try(dir.create("resultados-parlamentarias-2017/diputados-computo"))

for (j in 1:nrow(links_diputados_computo)) {
  if (!file.exists(links_diputados_computo$X2[[j]])) {
    try(download.file(links_diputados_computo$X1[[j]],
                      links_diputados_computo$X2[[j]]))
  }
}
