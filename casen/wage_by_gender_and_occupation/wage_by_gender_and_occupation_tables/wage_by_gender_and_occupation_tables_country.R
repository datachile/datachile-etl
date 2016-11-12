#uncomment lines 2-3 when running this file alone
#source("wage_by_gender_and_occupation/functions/normalization.R")
#source("wage_by_gender_and_occupation/process_wage_by_gender_and_occupation/process_wage_by_gender_and_occupation.R")
source("wage_by_gender_and_occupation/wage_by_gender_and_occupation_statistics_country/wage_by_gender_and_occupation_statistics_country.R")

###############
# join median #
###############

median_income_country <- as.data.frame(unique(c(as.character(median_1990_country$sexo), as.character(median_2015_country$sexo))))
setnames(median_income_country, colnames(median_income_country), "sexo")

median_income_country <- join(median_income_country, median_1990_country, type = "left")
median_income_country <- join(median_income_country, median_1992_country, type = "left")
median_income_country <- join(median_income_country, median_1994_country, type = "left")
median_income_country <- join(median_income_country, median_1996_country, type = "left")
median_income_country <- join(median_income_country, median_1998_country, type = "left")
median_income_country <- join(median_income_country, median_2000_country, type = "left")
median_income_country <- join(median_income_country, median_2003_country, type = "left")
median_income_country <- join(median_income_country, median_2006_country, type = "left")
median_income_country <- join(median_income_country, median_2009_country, type = "left")
median_income_country <- join(median_income_country, median_2011_country, type = "left")
median_income_country <- join(median_income_country, median_2013_country, type = "left")
median_income_country <- join(median_income_country, median_2015_country, type = "left")

median_income_country <- median_income_country[order(median_income_country$sexo),]
rownames(median_income_country) <- c(seq(1:nrow(median_income_country)))

#############
# join mean #
#############

mean_income_country <- as.data.frame(unique(c(as.character(mean_1990_country$sexo), as.character(mean_2015_country$sexo))))
setnames(mean_income_country, colnames(mean_income_country), "sexo")

mean_income_country <- join(mean_income_country, mean_1990_country, type = "left")
mean_income_country <- join(mean_income_country, mean_1992_country, type = "left")
mean_income_country <- join(mean_income_country, mean_1994_country, type = "left")
mean_income_country <- join(mean_income_country, mean_1996_country, type = "left")
mean_income_country <- join(mean_income_country, mean_1998_country, type = "left")
mean_income_country <- join(mean_income_country, mean_2000_country, type = "left")
mean_income_country <- join(mean_income_country, mean_2003_country, type = "left")
mean_income_country <- join(mean_income_country, mean_2006_country, type = "left")
mean_income_country <- join(mean_income_country, mean_2009_country, type = "left")
mean_income_country <- join(mean_income_country, mean_2011_country, type = "left")
mean_income_country <- join(mean_income_country, mean_2013_country, type = "left")
mean_income_country <- join(mean_income_country, mean_2015_country, type = "left")

mean_income_country <- mean_income_country[order(mean_income_country$sexo),]
rownames(mean_income_country) <- c(seq(1:nrow(mean_income_country)))

#########################
# join lb_median_income #
#########################

lb_median_income_country <- as.data.frame(unique(c(as.character(lb_median_1990_country$sexo), as.character(lb_median_2015_country$sexo))))
setnames(lb_median_income_country, colnames(lb_median_income_country), "sexo")

lb_median_income_country <- join(lb_median_income_country, lb_median_1990_country, type = "left")
lb_median_income_country <- join(lb_median_income_country, lb_median_1992_country, type = "left")
lb_median_income_country <- join(lb_median_income_country, lb_median_1994_country, type = "left")
lb_median_income_country <- join(lb_median_income_country, lb_median_1996_country, type = "left")
lb_median_income_country <- join(lb_median_income_country, lb_median_1998_country, type = "left")
lb_median_income_country <- join(lb_median_income_country, lb_median_2000_country, type = "left")
lb_median_income_country <- join(lb_median_income_country, lb_median_2003_country, type = "left")
lb_median_income_country <- join(lb_median_income_country, lb_median_2006_country, type = "left")
lb_median_income_country <- join(lb_median_income_country, lb_median_2009_country, type = "left")
lb_median_income_country <- join(lb_median_income_country, lb_median_2011_country, type = "left")
lb_median_income_country <- join(lb_median_income_country, lb_median_2013_country, type = "left")
lb_median_income_country <- join(lb_median_income_country, lb_median_2015_country, type = "left")

lb_median_income_country <- lb_median_income_country[order(lb_median_income_country$sexo),]
rownames(lb_median_income_country) <- c(seq(1:nrow(lb_median_income_country)))

#########################
# join ub_median_income #
#########################

ub_median_income_country <- as.data.frame(unique(c(as.character(ub_median_1990_country$sexo), as.character(ub_median_2015_country$sexo))))
setnames(ub_median_income_country, colnames(ub_median_income_country), "sexo")

ub_median_income_country <- join(ub_median_income_country, ub_median_1990_country, type = "left")
ub_median_income_country <- join(ub_median_income_country, ub_median_1992_country, type = "left")
ub_median_income_country <- join(ub_median_income_country, ub_median_1994_country, type = "left")
ub_median_income_country <- join(ub_median_income_country, ub_median_1996_country, type = "left")
ub_median_income_country <- join(ub_median_income_country, ub_median_1998_country, type = "left")
ub_median_income_country <- join(ub_median_income_country, ub_median_2000_country, type = "left")
ub_median_income_country <- join(ub_median_income_country, ub_median_2003_country, type = "left")
ub_median_income_country <- join(ub_median_income_country, ub_median_2006_country, type = "left")
ub_median_income_country <- join(ub_median_income_country, ub_median_2009_country, type = "left")
ub_median_income_country <- join(ub_median_income_country, ub_median_2011_country, type = "left")
ub_median_income_country <- join(ub_median_income_country, ub_median_2013_country, type = "left")
ub_median_income_country <- join(ub_median_income_country, ub_median_2015_country, type = "left")

ub_median_income_country <- ub_median_income_country[order(ub_median_income_country$sexo),]
rownames(ub_median_income_country) <- c(seq(1:nrow(ub_median_income_country)))

#########################
# join lb_mean_income #
#########################

lb_mean_income_country <- as.data.frame(unique(c(as.character(lb_mean_1990_country$sexo), as.character(lb_mean_2015_country$sexo))))
setnames(lb_mean_income_country, colnames(lb_mean_income_country), "sexo")

lb_mean_income_country <- join(lb_mean_income_country, lb_mean_1990_country, type = "left")
lb_mean_income_country <- join(lb_mean_income_country, lb_mean_1992_country, type = "left")
lb_mean_income_country <- join(lb_mean_income_country, lb_mean_1994_country, type = "left")
lb_mean_income_country <- join(lb_mean_income_country, lb_mean_1996_country, type = "left")
lb_mean_income_country <- join(lb_mean_income_country, lb_mean_1998_country, type = "left")
lb_mean_income_country <- join(lb_mean_income_country, lb_mean_2000_country, type = "left")
lb_mean_income_country <- join(lb_mean_income_country, lb_mean_2003_country, type = "left")
lb_mean_income_country <- join(lb_mean_income_country, lb_mean_2006_country, type = "left")
lb_mean_income_country <- join(lb_mean_income_country, lb_mean_2009_country, type = "left")
lb_mean_income_country <- join(lb_mean_income_country, lb_mean_2011_country, type = "left")
lb_mean_income_country <- join(lb_mean_income_country, lb_mean_2013_country, type = "left")
lb_mean_income_country <- join(lb_mean_income_country, lb_mean_2015_country, type = "left")

lb_mean_income_country <- lb_mean_income_country[order(lb_mean_income_country$sexo),]
rownames(lb_mean_income_country) <- c(seq(1:nrow(lb_mean_income_country)))

#########################
# join ub_mean_income #
#########################

ub_mean_income_country <- as.data.frame(unique(c(as.character(ub_mean_1990_country$sexo), as.character(ub_mean_2015_country$sexo))))
setnames(ub_mean_income_country, colnames(ub_mean_income_country), "sexo")

ub_mean_income_country <- join(ub_mean_income_country, ub_mean_1990_country, type = "left")
ub_mean_income_country <- join(ub_mean_income_country, ub_mean_1992_country, type = "left")
ub_mean_income_country <- join(ub_mean_income_country, ub_mean_1994_country, type = "left")
ub_mean_income_country <- join(ub_mean_income_country, ub_mean_1996_country, type = "left")
ub_mean_income_country <- join(ub_mean_income_country, ub_mean_1998_country, type = "left")
ub_mean_income_country <- join(ub_mean_income_country, ub_mean_2000_country, type = "left")
ub_mean_income_country <- join(ub_mean_income_country, ub_mean_2003_country, type = "left")
ub_mean_income_country <- join(ub_mean_income_country, ub_mean_2006_country, type = "left")
ub_mean_income_country <- join(ub_mean_income_country, ub_mean_2009_country, type = "left")
ub_mean_income_country <- join(ub_mean_income_country, ub_mean_2011_country, type = "left")
ub_mean_income_country <- join(ub_mean_income_country, ub_mean_2013_country, type = "left")
ub_mean_income_country <- join(ub_mean_income_country, ub_mean_2015_country, type = "left")

ub_mean_income_country <- ub_mean_income_country[order(ub_mean_income_country$sexo),]
rownames(ub_mean_income_country) <- c(seq(1:nrow(ub_mean_income_country)))

###############
# tidy median #
###############

tidy_median_income_country <- median_income_country %>% gather(year, median_income, `1990`:`2015`)
tidy_lb_median_income_country <- lb_median_income_country %>% gather(year, lb_median_income, `1990`:`2015`)
tidy_ub_median_income_country <- ub_median_income_country %>% gather(year, ub_median_income, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_mean_income_country <- mean_income_country %>% gather(year, mean_income, `1990`:`2015`)
tidy_lb_mean_income_country <- lb_mean_income_country %>% gather(year, lb_mean_income, `1990`:`2015`)
tidy_ub_mean_income_country <- ub_mean_income_country %>% gather(year, ub_mean_income, `1990`:`2015`)

############
# join all #
############

tidy_all_country <- join(tidy_mean_income_country, tidy_median_income_country, by = c("sexo","oficio","year"))
tidy_all_country <- join(tidy_all_country, tidy_lb_mean_income_country, by = c("sexo","oficio","year"))
tidy_all_country <- join(tidy_all_country, tidy_ub_mean_income_country, by = c("sexo","oficio","year"))
tidy_all_country <- join(tidy_all_country, tidy_lb_median_income_country, by = c("sexo","oficio","year"))
tidy_all_country <- join(tidy_all_country, tidy_ub_median_income_country, by = c("sexo","oficio","year"))

tidy_all_country$geography_level <- "pais"
tidy_all_country$geography_name <- "Pa\u00eds"
tidy_all_country$geography_id <- "pais"
tidy_all_country <- move_col(tidy_all_country, c("geography_level"=1, "geography_name"=2, "geography_id"=3, "year"=4))

tidy_all_country$geography_level <- as.character(tidy_all_country$geography_level)
tidy_all_country$geography_name <- as.character(tidy_all_country$geography_name)
tidy_all_country$geography_id <- as.character(tidy_all_country$geography_id)

tidy_all_country$ci_mean_income <- paste0("[",tidy_all_country$lb_mean_income,", ",tidy_all_country$ub_mean_income,"]")
tidy_all_country$ci_median_income <- paste0("[",tidy_all_country$lb_median_income,", ",tidy_all_country$ub_median_income,"]")

tidy_all_country <- tidy_all_country[, !(colnames(tidy_all_country) %in% c("lb_mean_income","ub_mean_income","lb_median_income","ub_median_income"))]

tidy_all_country <- tidy_all_country[complete.cases(tidy_all_country),]

########
# save #
########

write.csv(median_income_country, file = "wage_by_gender_and_occupation/csv_intermediate_files/wage_by_gender_and_occupation_median_income_country.csv")
write.csv(mean_income_country, file = "wage_by_gender_and_occupation/csv_intermediate_files/wage_by_gender_and_occupation_mean_income_country.csv")
write.csv(tidy_all_country, file = "wage_by_gender_and_occupation/csv_final_files/wage_by_gender_and_occupation_tidy_all_country.csv")

##################
# free up memory #
##################

rm(median_income_country, mean_income_country,
   lb_median_income_country, lb_mean_income_country,
   ub_median_income_country, ub_mean_income_country)

rm(tidy_median_income_country, tidy_mean_income_country,
   tidy_lb_median_income_country, tidy_lb_mean_income_country,
   tidy_ub_median_income_country, tidy_ub_mean_income_country)

rm(median_1990_country, median_1992_country, median_1994_country, median_1996_country, median_1998_country,
   median_2000_country, median_2003_country, median_2006_country, median_2009_country, 
   median_2011_country, median_2013_country, median_2015_country)

rm(mean_1990_country, mean_1992_country, mean_1994_country, mean_1996_country, mean_1998_country,
   mean_2000_country, mean_2003_country, mean_2006_country, mean_2009_country, 
   mean_2011_country, mean_2013_country, mean_2015_country)

rm(lb_median_1990_country, lb_median_1992_country, lb_median_1994_country, lb_median_1996_country, lb_median_1998_country,
   lb_median_2000_country, lb_median_2003_country, lb_median_2006_country, lb_median_2009_country, 
   lb_median_2011_country, lb_median_2013_country, lb_median_2015_country)

rm(ub_median_1990_country, ub_median_1992_country, ub_median_1994_country, ub_median_1996_country, ub_median_1998_country,
   ub_median_2000_country, ub_median_2003_country, ub_median_2006_country, ub_median_2009_country, 
   ub_median_2011_country, ub_median_2013_country, ub_median_2015_country)

rm(lb_mean_1990_country, lb_mean_1992_country, lb_mean_1994_country, lb_mean_1996_country, lb_mean_1998_country,
   lb_mean_2000_country, lb_mean_2003_country, lb_mean_2006_country, lb_mean_2009_country, 
   lb_mean_2011_country, lb_mean_2013_country, lb_mean_2015_country)

rm(ub_mean_1990_country, ub_mean_1992_country, ub_mean_1994_country, ub_mean_1996_country, ub_mean_1998_country,
   ub_mean_2000_country, ub_mean_2003_country, ub_mean_2006_country, ub_mean_2009_country, 
   ub_mean_2011_country, ub_mean_2013_country, ub_mean_2015_country)
