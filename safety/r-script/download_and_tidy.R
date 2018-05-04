if (!require(pacman)) install.packages("pacman")
p_load(dplyr,readxl,readr,tidyr,stringr,lubridate)

comunas <- read_csv("~/GitHub/datachile-data/official_ids/2017_06_27_comunas_datachile_fixed.csv")

comunas2 <- comunas %>% 
  select(comuna_name, comuna_datachile_id) %>% 
  mutate(comuna_name = str_to_lower(comuna_name),
         comuna_name = iconv(comuna_name, from = "", to = "ASCII", sub = ""))

url <- "http://www.seguridadpublica.gov.cl/media/2017/08/frec_casos_dmcs_mensual_2001_2017w.xlsx"
file <- "crime_raw_data_2011_2017.xlsx"

if (!file.exists(file)) try(download.file(url,file))

sheets <- excel_sheets(file)

categories <- tibble(felony_id = 1:(length(sheets) - 1),
                     felony_es =  c("robo con violencia o intimidaci\u00f3n", "robo por sorpresa", "robo con fuerza", "robo de ve\u00edculo",
                                    "robo accesorios del ve\u00edculo", "robo en lugar habitado", "robo en lugar no habitado", "otros robos con fuerza",
                                    "hurtos", "lesiones", "lesiones graves", "lesiones leves", "homicidios", "violaci\u00f3n"))
  
for (j in 2:length(sheets)) {
  raw <- read_excel(file, na = "-", skip = 3, sheet = j) %>% 
    mutate(felony_id = j - 1)
  assign(paste0("raw_data_",j), raw)
  rm(raw)
}

raw_data <- mget(ls(pattern = "raw_data_")) %>%
  bind_rows()

rm(list = ls(pattern = "raw_data_"))

raw_data_long <- raw_data %>% 
  gather(date, cases, `38353`:`42887`) %>% 
  rename(zone = UN_ADMIN, zone_name = `UNIDAD TERRITORIAL`) %>% 
  filter(nchar(date) == 5,
         zone == "COMUNA") %>% 
  select(matches("zone"), date, felony_id, cases) %>% 
  mutate(date = as.integer(date),
         date = as.Date(date, origin = "1899-12-30"),
         year = year(date)) %>% 
  select(-c(zone,date)) %>% 
  group_by(zone_name, year, felony_id) %>% 
  summarise(cases = sum(cases, na.rm = T))

fix_comunas <- raw_data_long %>%
  ungroup() %>%
  mutate(zone_name = str_to_lower(zone_name),
         zone_name = iconv(zone_name, from = "", to = "ASCII", sub = "")) %>%
  left_join(comunas2, by = c("zone_name" = "comuna_name")) %>%
  filter(is.na(comuna_datachile_id)) %>%
  select(zone_name, comuna_datachile_id) %>%
  distinct()

fix_comunas <- fix_comunas %>% 
  select(-comuna_datachile_id) %>% 
  mutate(zone_name2 = c("alto bo bo", "antartica", "con cn", "coihaique", "calera",
                        "llay llay", "san francisco de mostazal", "ollague", "paihuano",
                        "til-til", "trehuaco"))
  
tidy_data <- raw_data_long %>% 
  ungroup() %>% 
  mutate(zone_name = str_to_lower(zone_name),
         zone_name = iconv(zone_name, from = "", to = "ASCII", sub = "")) %>% 
  left_join(fix_comunas) %>% 
  mutate(comuna_name = if_else(is.na(zone_name2), zone_name, zone_name2)) %>% 
  left_join(comunas2) %>% 
  select(year, comuna_datachile_id, felony_id, cases) %>% 
  filter(year != 2017)

write_csv(tidy_data, "felonies.csv")
write_csv(comunas, "comunas_id.csv")
write_csv(categories, "categories_id.csv")
