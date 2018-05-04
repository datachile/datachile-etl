if (!require("pacman")) install.packages("pacman")
p_load(dplyr, jsonlite, xml2, rvest)

links_api <- "http://api.datos.mineduc.cl/api/v2/dashboards/DESCA-BASES-DE-DATOS-SNED.json/?auth_key=4f15a5052db02bd7fe98475a09a66a4487ad8827"

if (!file.exists("datos-sned.json")) {
  download.file(links_api, "datos-sned.json")
}

links_api_2 <- fromJSON("datos-sned.json")

links_api_3 <- read_html(links_api_2$resources$html) %>% 
  html_nodes("a") %>% 
  html_attr("href") %>% 
  as_tibble() %>% 
  rename(url = value) %>% 
  mutate(file = NA)

for (i in 1:nrow(links_api_3)) {
  links_api_3$file[i] <- system(
    paste(
      "curl -IXGET -r 0-10",
      links_api_3$url[i],
      "| grep attachment | sed 's/^.\\+filename=//'"
    ),
    intern = T
  )
}

links_api_3$file <- gsub("^.*\\.", "\\.", links_api_3$file) 
links_api_3$file <- gsub("%22\r", "", links_api_3$file) 

links_api_3 <- links_api_3 %>% 
  mutate(file = paste0("sned_", rev(seq(1996, 2016, 2)), "_", rev(seq(1997, 2017, 2)), file))

links_api_3 <- links_api_3 %>% 
  mutate(file = paste0("raw_data/", file))

try(dir.create("raw_data"))

for (i in 1:nrow(links_api_3)) {
  if (!file.exists(links_api_3$file[i])) {
    try(download.file(links_api_3$url[i], links_api_3$file[i]))
  }
}
