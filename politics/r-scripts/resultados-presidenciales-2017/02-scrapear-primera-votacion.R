links_primera_votacion_computo <- links_segunda_votacion_computo %>% 
  filter(grepl("computo", X1)) %>% 
  mutate(X1 = gsub("www\\.servelelecciones", "pv\\.servelelecciones", X1),
         X2 = gsub("segunda", "primera", X2))

try(dir.create("resultados-presidenciales-2017/primera-votacion-computo"))

for (j in 1:nrow(links_primera_votacion_computo)) {
  if (!file.exists(links_primera_votacion_computo$X2[[j]])) {
    try(download.file(links_primera_votacion_computo$X1[[j]],
                      links_primera_votacion_computo$X2[[j]]))
  }
}

links_primera_votacion_participacion <- links_segunda_votacion_participacion %>% 
  filter(grepl("computo", X1)) %>% 
  mutate(X1 = gsub("www\\.servelelecciones", "pv\\.servelelecciones", X1),
         X2 = gsub("segunda", "primera", X2))

try(dir.create("resultados-presidenciales-2017/primera-votacion-participacion"))

for (j in 1:nrow(links_primera_votacion_participacion)) {
  if (!file.exists(links_primera_votacion_participacion$X2[[j]])) {
    try(download.file(links_primera_votacion_participacion$X1[[j]],
                      links_primera_votacion_participacion$X2[[j]]))
  }
}
