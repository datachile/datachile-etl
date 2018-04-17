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

rm(list = ls(pattern = "nomatch_"))

###

match_90_03 <- nomatch_90_03 %>% 
  select(-comuna_datachile_id) %>% 
  mutate(comu2 = c("con cn", "coihaique", "nueva imperial", "llay llay", "los lamos",
                   "los ngeles", "marchige", "san francisco de mostazal", "aysn", "teodoro schmidt", "til-til")) %>% 
  left_join(comunas2, by = c("comu2" = "comuna_name"))

match_06 <- nomatch_06 %>% 
  select(-comuna_datachile_id) %>% 
  mutate(comu2 = c("aysn", "con cn", "coihaique", "calera", "los lamos", "los ngeles", 
                   "marchige", "san francisco de mostazal", "teodoro schmidt", "til-til")) %>% 
  left_join(comunas2, by = c("comu2" = "comuna_name"))

match_09 <- nomatch_09 %>% 
  select(-comuna_datachile_id) %>% 
  mutate(comu2 = c( "con cn", "coihaique", "calera", "los lamos",  "marchige", 
                    "san francisco de mostazal", "ollague", "til-til")) %>% 
  left_join(comunas2, by = c("comu2" = "comuna_name"))

match_11_15 <- nomatch_11_15 %>% 
  select(-comuna_datachile_id) %>% 
  mutate(comu2 = c( "alto bo bo", "con cn", "coihaique", "llay llay", "marchige", 
                    "san francisco de mostazal", "paihuano", "til-til", "trehuaco")) %>% 
  left_join(comunas2, by = c("comu2" = "comuna_name"))

rm(list = ls(pattern = "match_"))

###

comunas90_03 <- comunas90_03 %>% 
  anti_join(nomatch_90_03) %>% 
  bind_rows(match_11_15 %>% select(-comuna_datachile_id)) %>% 
  left_join(comunas2, by = c("comu2" = "comuna_name")) %>% 
  setNames(., c("comuna_casen_id", "comuna_name", "comuna_datachile_id"))

comunas06 <- comunas06 %>% 
  anti_join(nomatch_90_03) %>% 
  bind_rows(match_11_15 %>% select(-comuna_datachile_id)) %>% 
  left_join(comunas2, by = c("comu2" = "comuna_name")) %>% 
  setNames(., c("comuna_casen_id", "comuna_name", "comuna_datachile_id"))

comunas09 <- comunas09 %>% 
  anti_join(nomatch_90_03) %>% 
  bind_rows(match_11_15 %>% select(-comuna_datachile_id)) %>% 
  left_join(comunas2, by = c("comu2" = "comuna_name")) %>% 
  setNames(., c("comuna_casen_id", "comuna_name", "comuna_datachile_id"))

comunas11_15 <- comunas11_15 %>% 
  anti_join(nomatch_90_03) %>% 
  bind_rows(match_11_15 %>% select(-comuna_datachile_id)) %>% 
  left_join(comunas2, by = c("comu2" = "comuna_name")) %>% 
  setNames(., c("comuna_casen_id", "comuna_name", "comuna_datachile_id"))

try(dir.create("ids"))
write_csv(comunas90_03, "ids/comunas90_03.csv")
write_csv(comunas06, "ids/comunas06.csv")
write_csv(comunas09, "ids/comunas09.csv")
write_csv(comunas11_15, "ids/comunas11_15.csv")
