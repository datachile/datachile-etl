#uncomment lines 2-3 when running this file alone
#source("wage_by_gender_with_weights/functions/normalization.R")
#source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights.R")
source("wage_by_gender_with_weights/wage_by_gender_with_weights_statistics_country/wage_by_gender_with_weights_statistics_country.R")

###############
# join median #
###############

weighted_median_income_country <- as.data.frame(unique(c(as.character(weighted_median_1990_country$sexo), as.character(weighted_median_2015_country$sexo))))
setnames(weighted_median_income_country, colnames(weighted_median_income_country), "sexo")

weighted_median_income_country <- join(weighted_median_income_country, weighted_median_1990_country, type = "left")
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_1992_country, type = "left")
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_1994_country, type = "left")
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_1996_country, type = "left")
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_1998_country, type = "left")
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_2000_country, type = "left")
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_2003_country, type = "left")
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_2006_country, type = "left")
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_2009_country, type = "left")
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_2011_country, type = "left")
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_2013_country, type = "left")
weighted_median_income_country <- join(weighted_median_income_country, weighted_median_2015_country, type = "left")

weighted_median_income_country <- weighted_median_income_country[order(weighted_median_income_country$sexo),]
rownames(weighted_median_income_country) <- c(seq(1:nrow(weighted_median_income_country)))

#############
# join mean #
#############

weighted_mean_income_country <- as.data.frame(unique(c(as.character(weighted_mean_1990_country$sexo), as.character(weighted_mean_2015_country$sexo))))
setnames(weighted_mean_income_country, colnames(weighted_mean_income_country), "sexo")

weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_1990_country, type = "left")
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_1992_country, type = "left")
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_1994_country, type = "left")
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_1996_country, type = "left")
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_1998_country, type = "left")
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_2000_country, type = "left")
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_2003_country, type = "left")
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_2006_country, type = "left")
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_2009_country, type = "left")
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_2011_country, type = "left")
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_2013_country, type = "left")
weighted_mean_income_country <- join(weighted_mean_income_country, weighted_mean_2015_country, type = "left")

weighted_mean_income_country <- weighted_mean_income_country[order(weighted_mean_income_country$sexo),]
rownames(weighted_mean_income_country) <- c(seq(1:nrow(weighted_mean_income_country)))

##################################
# join lb_weighted_median_income #
##################################

lb_weighted_median_income_country <- as.data.frame(unique(c(as.character(lb_weighted_median_1990_country$sexo), as.character(lb_weighted_median_2015_country$sexo))))
setnames(lb_weighted_median_income_country, colnames(lb_weighted_median_income_country), "sexo")

lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_1990_country, type = "left")
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_1992_country, type = "left")
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_1994_country, type = "left")
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_1996_country, type = "left")
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_1998_country, type = "left")
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_2000_country, type = "left")
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_2003_country, type = "left")
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_2006_country, type = "left")
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_2009_country, type = "left")
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_2011_country, type = "left")
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_2013_country, type = "left")
lb_weighted_median_income_country <- join(lb_weighted_median_income_country, lb_weighted_median_2015_country, type = "left")

lb_weighted_median_income_country <- lb_weighted_median_income_country[order(lb_weighted_median_income_country$sexo),]
rownames(lb_weighted_median_income_country) <- c(seq(1:nrow(lb_weighted_median_income_country)))

##################################
# join ub_weighted_median_income #
##################################

ub_weighted_median_income_country <- as.data.frame(unique(c(as.character(ub_weighted_median_1990_country$sexo), as.character(ub_weighted_median_2015_country$sexo))))
setnames(ub_weighted_median_income_country, colnames(ub_weighted_median_income_country), "sexo")

ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_1990_country, type = "left")
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_1992_country, type = "left")
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_1994_country, type = "left")
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_1996_country, type = "left")
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_1998_country, type = "left")
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_2000_country, type = "left")
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_2003_country, type = "left")
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_2006_country, type = "left")
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_2009_country, type = "left")
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_2011_country, type = "left")
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_2013_country, type = "left")
ub_weighted_median_income_country <- join(ub_weighted_median_income_country, ub_weighted_median_2015_country, type = "left")

ub_weighted_median_income_country <- ub_weighted_median_income_country[order(ub_weighted_median_income_country$sexo),]
rownames(ub_weighted_median_income_country) <- c(seq(1:nrow(ub_weighted_median_income_country)))

################################
# join lb_weighted_mean_income #
################################

lb_weighted_mean_income_country <- as.data.frame(unique(c(as.character(lb_weighted_mean_1990_country$sexo), as.character(lb_weighted_mean_2015_country$sexo))))
setnames(lb_weighted_mean_income_country, colnames(lb_weighted_mean_income_country), "sexo")

lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_1990_country, type = "left")
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_1992_country, type = "left")
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_1994_country, type = "left")
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_1996_country, type = "left")
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_1998_country, type = "left")
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_2000_country, type = "left")
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_2003_country, type = "left")
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_2006_country, type = "left")
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_2009_country, type = "left")
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_2011_country, type = "left")
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_2013_country, type = "left")
lb_weighted_mean_income_country <- join(lb_weighted_mean_income_country, lb_weighted_mean_2015_country, type = "left")

lb_weighted_mean_income_country <- lb_weighted_mean_income_country[order(lb_weighted_mean_income_country$sexo),]
rownames(lb_weighted_mean_income_country) <- c(seq(1:nrow(lb_weighted_mean_income_country)))

################################
# join ub_weighted_mean_income #
################################

ub_weighted_mean_income_country <- as.data.frame(unique(c(as.character(ub_weighted_mean_1990_country$sexo), as.character(ub_weighted_mean_2015_country$sexo))))
setnames(ub_weighted_mean_income_country, colnames(ub_weighted_mean_income_country), "sexo")

ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_1990_country, type = "left")
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_1992_country, type = "left")
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_1994_country, type = "left")
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_1996_country, type = "left")
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_1998_country, type = "left")
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_2000_country, type = "left")
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_2003_country, type = "left")
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_2006_country, type = "left")
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_2009_country, type = "left")
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_2011_country, type = "left")
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_2013_country, type = "left")
ub_weighted_mean_income_country <- join(ub_weighted_mean_income_country, ub_weighted_mean_2015_country, type = "left")

ub_weighted_mean_income_country <- ub_weighted_mean_income_country[order(ub_weighted_mean_income_country$sexo),]
rownames(ub_weighted_mean_income_country) <- c(seq(1:nrow(ub_weighted_mean_income_country)))

###############
# tidy median #
###############

tidy_weighted_median_income_country <- weighted_median_income_country %>% gather(year, weighted_median_income, `1990`:`2015`)
tidy_lb_weighted_median_income_country <- lb_weighted_median_income_country %>% gather(year, lb_weighted_median_income, `1990`:`2015`)
tidy_ub_weighted_median_income_country <- ub_weighted_median_income_country %>% gather(year, ub_weighted_median_income, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_weighted_mean_income_country <- weighted_mean_income_country %>% gather(year, weighted_mean_income, `1990`:`2015`)
tidy_lb_weighted_mean_income_country <- lb_weighted_mean_income_country %>% gather(year, lb_weighted_mean_income, `1990`:`2015`)
tidy_ub_weighted_mean_income_country <- ub_weighted_mean_income_country %>% gather(year, ub_weighted_mean_income, `1990`:`2015`)

############
# join all #
############

tidy_all_country <- join(tidy_weighted_mean_income_country, tidy_weighted_median_income_country, by = c("sexo","year"))
tidy_all_country <- join(tidy_all_country, tidy_lb_weighted_mean_income_country, by = c("sexo","year"))
tidy_all_country <- join(tidy_all_country, tidy_ub_weighted_mean_income_country, by = c("sexo","year"))
tidy_all_country <- join(tidy_all_country, tidy_lb_weighted_median_income_country, by = c("sexo","year"))
tidy_all_country <- join(tidy_all_country, tidy_ub_weighted_median_income_country, by = c("sexo","year"))

tidy_all_country$geography_level <- "pais"
tidy_all_country$geography_name <- "Pa\u00eds"
tidy_all_country$geography_id <- "pais"
tidy_all_country <- move_col(tidy_all_country, c("geography_level"=1, "geography_name"=2, "geography_id"=3, "year"=4))

tidy_all_country$geography_level <- as.character(tidy_all_country$geography_level)
tidy_all_country$geography_name <- as.character(tidy_all_country$geography_name)
tidy_all_country$geography_id <- as.character(tidy_all_country$geography_id)

tidy_all_country$ci_weighted_mean_income <- paste0("[",tidy_all_country$lb_weighted_mean_income,", ",tidy_all_country$ub_weighted_mean_income,"]")
tidy_all_country$ci_weighted_median_income <- paste0("[",tidy_all_country$lb_weighted_median_income,", ",tidy_all_country$ub_weighted_median_income,"]")

tidy_all_country <- tidy_all_country[, !(colnames(tidy_all_country) %in% c("lb_weighted_mean_income","ub_weighted_mean_income","lb_weighted_median_income","ub_weighted_median_income"))]

tidy_all_country <- tidy_all_country[complete.cases(tidy_all_country),]

########
# save #
########

write.csv(weighted_median_income_country, file = "wage_by_gender_with_weights/csv_intermediate_files/wage_by_gender_with_weights_weighted_median_income_country.csv")
write.csv(weighted_mean_income_country, file = "wage_by_gender_with_weights/csv_intermediate_files/wage_by_gender_with_weights_weighted_mean_income_country.csv")
write.csv(tidy_all_country, file = "wage_by_gender_with_weights/csv_final_files/wage_by_gender_with_weights_tidy_all_country.csv")

##################
# free up memory #
##################

rm(weighted_median_income_country, weighted_mean_income_country,
   lb_weighted_median_income_country, lb_weighted_mean_income_country,
   ub_weighted_median_income_country, ub_weighted_mean_income_country)

rm(tidy_weighted_median_income_country, tidy_weighted_mean_income_country,
   tidy_lb_weighted_median_income_country, tidy_lb_weighted_mean_income_country,
   tidy_ub_weighted_median_income_country, tidy_ub_weighted_mean_income_country)

rm(weighted_median_1990_country, weighted_median_1992_country, weighted_median_1994_country, weighted_median_1996_country, weighted_median_1998_country,
   weighted_median_2000_country, weighted_median_2003_country, weighted_median_2006_country, weighted_median_2009_country, 
   weighted_median_2011_country, weighted_median_2013_country, weighted_median_2015_country)

rm(weighted_mean_1990_country, weighted_mean_1992_country, weighted_mean_1994_country, weighted_mean_1996_country, weighted_mean_1998_country,
   weighted_mean_2000_country, weighted_mean_2003_country, weighted_mean_2006_country, weighted_mean_2009_country, 
   weighted_mean_2011_country, weighted_mean_2013_country, weighted_mean_2015_country)

rm(lb_weighted_median_1990_country, lb_weighted_median_1992_country, lb_weighted_median_1994_country, lb_weighted_median_1996_country, lb_weighted_median_1998_country,
   lb_weighted_median_2000_country, lb_weighted_median_2003_country, lb_weighted_median_2006_country, lb_weighted_median_2009_country, 
   lb_weighted_median_2011_country, lb_weighted_median_2013_country, lb_weighted_median_2015_country)

rm(ub_weighted_median_1990_country, ub_weighted_median_1992_country, ub_weighted_median_1994_country, ub_weighted_median_1996_country, ub_weighted_median_1998_country,
   ub_weighted_median_2000_country, ub_weighted_median_2003_country, ub_weighted_median_2006_country, ub_weighted_median_2009_country, 
   ub_weighted_median_2011_country, ub_weighted_median_2013_country, ub_weighted_median_2015_country)

rm(lb_weighted_mean_1990_country, lb_weighted_mean_1992_country, lb_weighted_mean_1994_country, lb_weighted_mean_1996_country, lb_weighted_mean_1998_country,
   lb_weighted_mean_2000_country, lb_weighted_mean_2003_country, lb_weighted_mean_2006_country, lb_weighted_mean_2009_country, 
   lb_weighted_mean_2011_country, lb_weighted_mean_2013_country, lb_weighted_mean_2015_country)

rm(ub_weighted_mean_1990_country, ub_weighted_mean_1992_country, ub_weighted_mean_1994_country, ub_weighted_mean_1996_country, ub_weighted_mean_1998_country,
   ub_weighted_mean_2000_country, ub_weighted_mean_2003_country, ub_weighted_mean_2006_country, ub_weighted_mean_2009_country, 
   ub_weighted_mean_2011_country, ub_weighted_mean_2013_country, ub_weighted_mean_2015_country)
