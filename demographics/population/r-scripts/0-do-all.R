if (!require(pacman)) install.packages("pacman")
p_load(tidyverse, readxl)

url <- "http://www.censo2017.cl/wp-content/uploads/2017/12/Cantidad-de-Personas-por-Sexo-y-Edad.xlsx"
xlsx <- tolower(gsub(".*/", "", url))

if (!file.exists(xlsx)) {
  try(download.file(url, xlsx))
}

nper <- read_excel("cantidad-de-personas-por-sexo-y-edad.xlsx", sheet = "COMUNAS", range = "B2:L7636") %>% 
  select(`NOMBRE COMUNA`, `Hombres`, `Mujeres`, `Edad`) %>% 
  setNames(c("comuna_name", "men", "women", "age_group")) %>% 
  mutate(
    comuna_name = iconv(
      tolower(comuna_name), to = "ASCII", sub = ""
    ),
    comuna_name = trimws(gsub("\\*", "", comuna_name), which = "both")
  ) %>% 
  filter(!grepl("Total", age_group)) %>% 
  mutate(
    age_group = gsub(" a ", " to ", age_group),
    age_group = gsub("o m\u00e1s", "or more", age_group)
  )

comunas_datachile <- read_csv("../../official_ids/2017_06_27_comunas_datachile_fixed.csv") %>% 
  select(comuna_name, comuna_datachile_id) %>% 
  mutate(
    comuna_name = iconv(
      tolower(comuna_name), to = "ASCII", sub = ""
    )
  )

unmatched <- nper %>% 
  anti_join(comunas_datachile) %>% 
  select(comuna_name) %>% 
  distinct()

fixed_comunas <- tibble(
  comuna_name = unmatched$comuna_name,
  comuna_name_2 = c(
    NA, "ollague", "paihuano", "con cn", "llay llay",
    "til-til", "san francisco de mostazal", "marchige", "alto bo bo", "trehuaco",
    "coihaique", "antartica"
  )
) %>% 
  left_join(comunas_datachile, by = c("comuna_name_2" = "comuna_name"))

nper <- nper %>% 
  left_join(fixed_comunas) %>% 
  mutate(
    comuna_name = ifelse(is.na(comuna_name_2), comuna_name, comuna_name_2)
  ) %>% 
  select(-comuna_datachile_id) %>% 
  left_join(comunas_datachile) %>% 
  filter(!is.na(comuna_datachile_id)) %>% 
  select(comuna_datachile_id, men, women, age_group)

nper <- nper %>% 
  gather(sex, age, men:women) %>% 
  mutate(sex_id = ifelse(sex == "men", 2, 1))

sex_id <- tibble(sex = c("women", "men"), sex_id = 1:2)

age_id <- nper %>% 
  select(age_group) %>% 
  distinct() %>% 
  mutate(age_group_id = 1:21)

nper <- nper %>% 
  left_join(age_id) %>% 
  select(-sex, -age_group, comuna_datachile_id, sex_id, age_group_id, age)

write_csv(nper, "nper.csv")
write_csv(sex_id, "sex_id.csv")
write_csv(age_id, "age_id.csv")
