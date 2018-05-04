links_segunda_votacion <- read_delim("resultados-presidenciales-2017/links-segunda-votacion-computo", 
                            "\t", escape_double = FALSE, col_names = FALSE, 
                            trim_ws = TRUE)

links_segunda_votacion <- links_segunda_votacion %>% 
  mutate(X1 = gsub("curl \'", "", X1),
         X1 = gsub("\' .*", "", X1)) %>% 
  filter(!grepl("google", X1))

links_segunda_votacion_computo <- links_segunda_votacion %>% 
  filter(grepl("computo", X1)) %>% 
  mutate(X2 = gsub(".*comunas/", "", X1),
         X2 = paste0("resultados-presidenciales-2017/segunda-votacion-computo/", X2))

# links_segunda_votacion_circunscripcion <- links_segunda_votacion %>% 
#   filter(grepl("circ_electoral", X1)) %>% 
#   mutate(X2 = gsub(".*bycomuna/", "", X1),
#          X2 = paste0("resultados-presidenciales-2017/segunda-votacion-circunscripcion/", X2))

try(dir.create("resultados-presidenciales-2017/segunda-votacion-computo"))
#try(dir.create("resultados-presidenciales-2017/segunda-votacion-circunscripcion"))

for (j in 1:nrow(links_segunda_votacion_computo)) {
  if (!file.exists(links_segunda_votacion_computo$X2[[j]])) {
    try(download.file(links_segunda_votacion_computo$X1[[j]],
                      links_segunda_votacion_computo$X2[[j]]))
  }
}

# for (j in 1:nrow(links_segunda_votacion_circunscripcion)) {
#   if (!file.exists(links_segunda_votacion_circunscripcion$X2[[j]])) {
#     try(download.file(links_segunda_votacion_circunscripcion$X1[[j]],
#                       links_segunda_votacion_circunscripcion$X2[[j]]))
#   }
# }

links_segunda_votacion_participacion <- links_segunda_votacion_computo %>% 
  mutate(X1 = gsub("elecciones_presidente/", "participacion/", X1)) %>% 
  mutate(X2 = gsub(".*comunas/", "", X1),
         X2 = paste0("resultados-presidenciales-2017/segunda-votacion-participacion/", X2))

try(dir.create("resultados-presidenciales-2017/segunda-votacion-participacion"))

for (j in 1:nrow(links_segunda_votacion_participacion)) {
  if (!file.exists(links_segunda_votacion_participacion$X2[[j]])) {
    try(download.file(links_segunda_votacion_participacion$X1[[j]],
                      links_segunda_votacion_participacion$X2[[j]]))
  }
}
