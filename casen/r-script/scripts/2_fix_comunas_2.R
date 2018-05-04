nomatch_90_03 <- comunas90_03 %>% 
  left_join(comunas2, by = c("comu2" = "comuna_name")) %>% 
  filter(is.na(comuna_datachile_id)) %>% 
  arrange(comu2)

nomatch_06 <- comunas06 %>%
  left_join(comunas2, by = c("comu2" = "comuna_name")) %>% 
  filter(is.na(comuna_datachile_id)) %>% 
  arrange(comu2)

nomatch_09 <- comunas09 %>%
  left_join(comunas2, by = c("comu2" = "comuna_name")) %>% 
  filter(is.na(comuna_datachile_id)) %>% 
  arrange(comu2)

nomatch_11_15 <- comunas11_15 %>%
  left_join(comunas2, by = c("comu2" = "comuna_name")) %>% 
  filter(is.na(comuna_datachile_id)) %>% 
  arrange(comu2)

###

match_90_03 <- nomatch_90_03 %>% 
  select(-comuna_datachile_id) %>% 
  mutate(comu3 = c("con cn", "coihaique", "nueva imperial", "llay llay", "los lamos",
                   "los ngeles", "marchige", "san francisco de mostazal", "aysn", "teodoro schmidt", "til-til")) %>% 
  left_join(comunas2, by = c("comu3" = "comuna_name"))

match_06 <- nomatch_06 %>% 
  select(-comuna_datachile_id) %>% 
  mutate(comu3 = c("aysn", "con cn", "coihaique", "calera", "los lamos", "los ngeles", 
                   "marchige", "san francisco de mostazal", "teodoro schmidt", "til-til")) %>% 
  left_join(comunas2, by = c("comu3" = "comuna_name"))

match_09 <- nomatch_09 %>% 
  select(-comuna_datachile_id) %>% 
  mutate(comu3 = c( "con cn", "coihaique", "calera", "los lamos",  "marchige", 
                    "san francisco de mostazal", "ollague", "til-til")) %>% 
  left_join(comunas2, by = c("comu3" = "comuna_name"))

match_11_15 <- nomatch_11_15 %>% 
  select(-comuna_datachile_id) %>% 
  mutate(comu3 = c( "alto bo bo", "con cn", "coihaique", "llay llay", "marchige", 
                    "san francisco de mostazal", "paihuano", "til-til", "trehuaco")) %>% 
  left_join(comunas2, by = c("comu3" = "comuna_name"))

###

comunas90_03 <- comunas90_03 %>% 
  left_join(match_90_03 %>% select(comu, comu3), by = "comu") %>% 
  mutate(comu4 = ifelse(is.na(comu3), comu2, comu3)) %>% 
  left_join(comunas2, by = c("comu4" = "comuna_name")) %>% 
  select(comu, comu4, comuna_datachile_id) %>% 
  rename(comuna_casen_id = comu, comuna_name = comu4)

comunas06 <- comunas06 %>% 
  left_join(match_06 %>% select(comu, comu3), by = "comu") %>% 
  mutate(comu4 = ifelse(is.na(comu3), comu2, comu3)) %>% 
  left_join(comunas2, by = c("comu4" = "comuna_name")) %>% 
  select(comu, comu4, comuna_datachile_id) %>% 
  rename(comuna_casen_id = comu, comuna_name = comu4)

comunas09 <- comunas09 %>% 
  left_join(match_09 %>% select(comu, comu3), by = "comu") %>% 
  mutate(comu4 = ifelse(is.na(comu3), comu2, comu3)) %>% 
  left_join(comunas2, by = c("comu4" = "comuna_name")) %>% 
  select(comu, comu4, comuna_datachile_id) %>% 
  rename(comuna_casen_id = comu, comuna_name = comu4)

comunas11_15 <- comunas11_15 %>% 
  left_join(match_11_15 %>% select(comu, comu3), by = "comu") %>% 
  mutate(comu4 = ifelse(is.na(comu3), comu2, comu3)) %>% 
  left_join(comunas2, by = c("comu4" = "comuna_name")) %>% 
  select(comu, comu4, comuna_datachile_id) %>% 
  rename(comuna_casen_id = comu, comuna_name = comu4)

try(dir.create("ids"))
fwrite(comunas90_03, "ids/comunas90_03.csv")
fwrite(comunas06, "ids/comunas06.csv")
fwrite(comunas09, "ids/comunas09.csv")
fwrite(comunas11_15, "ids/comunas11_15.csv")

rm(list = ls(pattern = "nomatch_"))
rm(list = ls(pattern = "match_"))
