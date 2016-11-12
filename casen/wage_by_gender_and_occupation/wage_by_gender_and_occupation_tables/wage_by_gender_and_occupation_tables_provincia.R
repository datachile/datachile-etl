#uncomment lines 2-3 when running this file alone
#source("wage_by_gender_and_occupation/functions/normalization.R")
#source("wage_by_gender_and_occupation/process_wage_by_gender_and_occupation/process_wage_by_gender_and_occupation.R")
source("wage_by_gender_and_occupation/wage_by_gender_and_occupation_statistics_provincia/wage_by_gender_and_occupation_statistics_provincia.R")

###############
# join median #
###############

median_income_provincia <- as.data.frame(unique(c(as.character(median_1990_provincia$sexo), as.character(median_2015_provincia$sexo))))
setnames(median_income_provincia, colnames(median_income_provincia), "sexo")

median_income_provincia <- join(median_income_provincia, median_1990_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_1992_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_1994_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_1996_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_1998_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2000_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2003_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2006_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2009_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2011_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2013_provincia, type = "left")
median_income_provincia <- join(median_income_provincia, median_2015_provincia, type = "left")

median_income_provincia <- median_income_provincia[order(median_income_provincia$sexo),]
rownames(median_income_provincia) <- c(seq(1:nrow(median_income_provincia)))

#############
# join mean #
#############

mean_income_provincia <- as.data.frame(unique(c(as.character(mean_1990_provincia$sexo), as.character(mean_2015_provincia$sexo))))
setnames(mean_income_provincia, colnames(mean_income_provincia), "sexo")

mean_income_provincia <- join(mean_income_provincia, mean_1990_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_1992_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_1994_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_1996_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_1998_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2000_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2003_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2006_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2009_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2011_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2013_provincia, type = "left")
mean_income_provincia <- join(mean_income_provincia, mean_2015_provincia, type = "left")

mean_income_provincia <- mean_income_provincia[order(mean_income_provincia$sexo),]
rownames(mean_income_provincia) <- c(seq(1:nrow(mean_income_provincia)))

#########################
# join lb_median_income #
#########################

lb_median_income_provincia <- as.data.frame(unique(c(as.character(lb_median_1990_provincia$sexo), as.character(lb_median_2015_provincia$sexo))))
setnames(lb_median_income_provincia, colnames(lb_median_income_provincia), "sexo")

lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_1990_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_1992_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_1994_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_1996_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_1998_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2000_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2003_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2006_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2009_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2011_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2013_provincia, type = "left")
lb_median_income_provincia <- join(lb_median_income_provincia, lb_median_2015_provincia, type = "left")

lb_median_income_provincia <- lb_median_income_provincia[order(lb_median_income_provincia$sexo),]
rownames(lb_median_income_provincia) <- c(seq(1:nrow(lb_median_income_provincia)))

#########################
# join ub_median_income #
#########################

ub_median_income_provincia <- as.data.frame(unique(c(as.character(ub_median_1990_provincia$sexo), as.character(ub_median_2015_provincia$sexo))))
setnames(ub_median_income_provincia, colnames(ub_median_income_provincia), "sexo")

ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_1990_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_1992_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_1994_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_1996_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_1998_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2000_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2003_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2006_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2009_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2011_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2013_provincia, type = "left")
ub_median_income_provincia <- join(ub_median_income_provincia, ub_median_2015_provincia, type = "left")

ub_median_income_provincia <- ub_median_income_provincia[order(ub_median_income_provincia$sexo),]
rownames(ub_median_income_provincia) <- c(seq(1:nrow(ub_median_income_provincia)))

#########################
# join lb_mean_income #
#########################

lb_mean_income_provincia <- as.data.frame(unique(c(as.character(lb_mean_1990_provincia$sexo), as.character(lb_mean_2015_provincia$sexo))))
setnames(lb_mean_income_provincia, colnames(lb_mean_income_provincia), "sexo")

lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_1990_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_1992_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_1994_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_1996_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_1998_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2000_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2003_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2006_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2009_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2011_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2013_provincia, type = "left")
lb_mean_income_provincia <- join(lb_mean_income_provincia, lb_mean_2015_provincia, type = "left")

lb_mean_income_provincia <- lb_mean_income_provincia[order(lb_mean_income_provincia$sexo),]
rownames(lb_mean_income_provincia) <- c(seq(1:nrow(lb_mean_income_provincia)))

#########################
# join ub_mean_income #
#########################

ub_mean_income_provincia <- as.data.frame(unique(c(as.character(ub_mean_1990_provincia$sexo), as.character(ub_mean_2015_provincia$sexo))))
setnames(ub_mean_income_provincia, colnames(ub_mean_income_provincia), "sexo")

ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_1990_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_1992_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_1994_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_1996_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_1998_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2000_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2003_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2006_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2009_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2011_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2013_provincia, type = "left")
ub_mean_income_provincia <- join(ub_mean_income_provincia, ub_mean_2015_provincia, type = "left")

ub_mean_income_provincia <- ub_mean_income_provincia[order(ub_mean_income_provincia$sexo),]
rownames(ub_mean_income_provincia) <- c(seq(1:nrow(ub_mean_income_provincia)))

###############
# tidy median #
###############

tidy_median_income_provincia <- median_income_provincia %>% gather(year, median_income, `1990`:`2015`)
tidy_lb_median_income_provincia <- lb_median_income_provincia %>% gather(year, lb_median_income, `1990`:`2015`)
tidy_ub_median_income_provincia <- ub_median_income_provincia %>% gather(year, ub_median_income, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_mean_income_provincia <- mean_income_provincia %>% gather(year, mean_income, `1990`:`2015`)
tidy_lb_mean_income_provincia <- lb_mean_income_provincia %>% gather(year, lb_mean_income, `1990`:`2015`)
tidy_ub_mean_income_provincia <- ub_mean_income_provincia %>% gather(year, ub_mean_income, `1990`:`2015`)

############
# join all #
############

tidy_all_provincia <- join(tidy_mean_income_provincia, tidy_median_income_provincia, by = c("sexo","oficio","provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_lb_mean_income_provincia, by = c("sexo","oficio","provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_ub_mean_income_provincia, by = c("sexo","oficio","provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_lb_median_income_provincia, by = c("sexo","oficio","provincia","year"))
tidy_all_provincia <- join(tidy_all_provincia, tidy_ub_median_income_provincia, by = c("sexo","oficio","provincia","year"))

setnames(tidy_all_provincia, "provincia", "provincia_name")
tidy_all_provincia <- join(tidy_all_provincia, unique(provincia_codes_pacha[,c("provincia_name","provincia_pacha_id")]), by = "provincia_name")
tidy_all_provincia$geography_level <- "provincia"
tidy_all_provincia <- move_col(tidy_all_provincia, c("geography_level"=1, "provincia_name"=2, "provincia_pacha_id"=3, "year"=4))
setnames(tidy_all_provincia, c("provincia_name","provincia_pacha_id"), c("geography_name","geography_id"))

tidy_all_provincia$geography_level <- as.character(tidy_all_provincia$geography_level)
tidy_all_provincia$geography_name <- as.character(tidy_all_provincia$geography_name)
tidy_all_provincia$geography_id <- as.character(tidy_all_provincia$geography_id)

tidy_all_provincia$ci_mean_income <- paste0("[",tidy_all_provincia$lb_mean_income,", ",tidy_all_provincia$ub_mean_income,"]")
tidy_all_provincia$ci_median_income <- paste0("[",tidy_all_provincia$lb_median_income,", ",tidy_all_provincia$ub_median_income,"]")

tidy_all_provincia <- tidy_all_provincia[, !(colnames(tidy_all_provincia) %in% c("lb_mean_income","ub_mean_income","lb_median_income","ub_median_income"))]

tidy_all_provincia <- tidy_all_provincia[complete.cases(tidy_all_provincia),]

########
# save #
########

write.csv(median_income_provincia, file = "wage_by_gender_and_occupation/csv_intermediate_files/wage_by_gender_and_occupation_median_income_provincia.csv")
write.csv(mean_income_provincia, file = "wage_by_gender_and_occupation/csv_intermediate_files/wage_by_gender_and_occupation_mean_income_provincia.csv")
write.csv(tidy_all_provincia, file = "wage_by_gender_and_occupation/csv_final_files/wage_by_gender_and_occupation_tidy_all_provincia.csv")

##################
# free up memory #
##################

rm(median_income_provincia, mean_income_provincia,
   lb_median_income_provincia, lb_mean_income_provincia,
   ub_median_income_provincia, ub_mean_income_provincia)

rm(tidy_median_income_provincia, tidy_mean_income_provincia,
   tidy_lb_median_income_provincia, tidy_lb_mean_income_provincia,
   tidy_ub_median_income_provincia, tidy_ub_mean_income_provincia)

rm(median_1990_provincia, median_1992_provincia, median_1994_provincia, median_1996_provincia, median_1998_provincia,
   median_2000_provincia, median_2003_provincia, median_2006_provincia, median_2009_provincia, 
   median_2011_provincia, median_2013_provincia, median_2015_provincia)

rm(mean_1990_provincia, mean_1992_provincia, mean_1994_provincia, mean_1996_provincia, mean_1998_provincia,
   mean_2000_provincia, mean_2003_provincia, mean_2006_provincia, mean_2009_provincia, 
   mean_2011_provincia, mean_2013_provincia, mean_2015_provincia)

rm(lb_median_1990_provincia, lb_median_1992_provincia, lb_median_1994_provincia, lb_median_1996_provincia, lb_median_1998_provincia,
   lb_median_2000_provincia, lb_median_2003_provincia, lb_median_2006_provincia, lb_median_2009_provincia, 
   lb_median_2011_provincia, lb_median_2013_provincia, lb_median_2015_provincia)

rm(ub_median_1990_provincia, ub_median_1992_provincia, ub_median_1994_provincia, ub_median_1996_provincia, ub_median_1998_provincia,
   ub_median_2000_provincia, ub_median_2003_provincia, ub_median_2006_provincia, ub_median_2009_provincia, 
   ub_median_2011_provincia, ub_median_2013_provincia, ub_median_2015_provincia)

rm(lb_mean_1990_provincia, lb_mean_1992_provincia, lb_mean_1994_provincia, lb_mean_1996_provincia, lb_mean_1998_provincia,
   lb_mean_2000_provincia, lb_mean_2003_provincia, lb_mean_2006_provincia, lb_mean_2009_provincia, 
   lb_mean_2011_provincia, lb_mean_2013_provincia, lb_mean_2015_provincia)

rm(ub_mean_1990_provincia, ub_mean_1992_provincia, ub_mean_1994_provincia, ub_mean_1996_provincia, ub_mean_1998_provincia,
   ub_mean_2000_provincia, ub_mean_2003_provincia, ub_mean_2006_provincia, ub_mean_2009_provincia, 
   ub_mean_2011_provincia, ub_mean_2013_provincia, ub_mean_2015_provincia)
