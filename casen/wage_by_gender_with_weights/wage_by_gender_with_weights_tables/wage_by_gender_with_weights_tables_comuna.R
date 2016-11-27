#uncomment lines 2-3 when running this file alone
#source("wage_by_gender_with_weights/functions/normalization.R")
#source("wage_by_gender_with_weights/process_wage_by_gender_with_weights/process_wage_by_gender_with_weights.R")
source("wage_by_gender_with_weights/wage_by_gender_with_weights_statistics_comuna/wage_by_gender_with_weights_statistics_comuna.R")

###############
# join median #
###############

weighted_median_income_comuna <- as.data.frame(unique(c(as.character(weighted_median_1990_comuna$sexo), as.character(weighted_median_2015_comuna$sexo))))
setnames(weighted_median_income_comuna, colnames(weighted_median_income_comuna), "sexo")

weighted_median_income_comuna <- join(weighted_median_income_comuna, weighted_median_1990_comuna, type = "left")
weighted_median_income_comuna <- join(weighted_median_income_comuna, weighted_median_1992_comuna, type = "left")
weighted_median_income_comuna <- join(weighted_median_income_comuna, weighted_median_1994_comuna, type = "left")
weighted_median_income_comuna <- join(weighted_median_income_comuna, weighted_median_1996_comuna, type = "left")
weighted_median_income_comuna <- join(weighted_median_income_comuna, weighted_median_1998_comuna, type = "left")
weighted_median_income_comuna <- join(weighted_median_income_comuna, weighted_median_2000_comuna, type = "left")
weighted_median_income_comuna <- join(weighted_median_income_comuna, weighted_median_2003_comuna, type = "left")
weighted_median_income_comuna <- join(weighted_median_income_comuna, weighted_median_2006_comuna, type = "left")
weighted_median_income_comuna <- join(weighted_median_income_comuna, weighted_median_2009_comuna, type = "left")
weighted_median_income_comuna <- join(weighted_median_income_comuna, weighted_median_2011_comuna, type = "left")
weighted_median_income_comuna <- join(weighted_median_income_comuna, weighted_median_2013_comuna, type = "left")
weighted_median_income_comuna <- join(weighted_median_income_comuna, weighted_median_2015_comuna, type = "left")

weighted_median_income_comuna <- weighted_median_income_comuna[order(weighted_median_income_comuna$sexo),]
rownames(weighted_median_income_comuna) <- c(seq(1:nrow(weighted_median_income_comuna)))

#############
# join mean #
#############

weighted_mean_income_comuna <- as.data.frame(unique(c(as.character(weighted_mean_1990_comuna$sexo), as.character(weighted_mean_2015_comuna$sexo))))
setnames(weighted_mean_income_comuna, colnames(weighted_mean_income_comuna), "sexo")

weighted_mean_income_comuna <- join(weighted_mean_income_comuna, weighted_mean_1990_comuna, type = "left")
weighted_mean_income_comuna <- join(weighted_mean_income_comuna, weighted_mean_1992_comuna, type = "left")
weighted_mean_income_comuna <- join(weighted_mean_income_comuna, weighted_mean_1994_comuna, type = "left")
weighted_mean_income_comuna <- join(weighted_mean_income_comuna, weighted_mean_1996_comuna, type = "left")
weighted_mean_income_comuna <- join(weighted_mean_income_comuna, weighted_mean_1998_comuna, type = "left")
weighted_mean_income_comuna <- join(weighted_mean_income_comuna, weighted_mean_2000_comuna, type = "left")
weighted_mean_income_comuna <- join(weighted_mean_income_comuna, weighted_mean_2003_comuna, type = "left")
weighted_mean_income_comuna <- join(weighted_mean_income_comuna, weighted_mean_2006_comuna, type = "left")
weighted_mean_income_comuna <- join(weighted_mean_income_comuna, weighted_mean_2009_comuna, type = "left")
weighted_mean_income_comuna <- join(weighted_mean_income_comuna, weighted_mean_2011_comuna, type = "left")
weighted_mean_income_comuna <- join(weighted_mean_income_comuna, weighted_mean_2013_comuna, type = "left")
weighted_mean_income_comuna <- join(weighted_mean_income_comuna, weighted_mean_2015_comuna, type = "left")

weighted_mean_income_comuna <- weighted_mean_income_comuna[order(weighted_mean_income_comuna$sexo),]
rownames(weighted_mean_income_comuna) <- c(seq(1:nrow(weighted_mean_income_comuna)))

#########################
# join lb_weighted_median_income #
#########################

lb_weighted_median_income_comuna <- as.data.frame(unique(c(as.character(lb_weighted_median_1990_comuna$sexo), as.character(lb_weighted_median_2015_comuna$sexo))))
setnames(lb_weighted_median_income_comuna, colnames(lb_weighted_median_income_comuna), "sexo")

lb_weighted_median_income_comuna <- join(lb_weighted_median_income_comuna, lb_weighted_median_1990_comuna, type = "left")
lb_weighted_median_income_comuna <- join(lb_weighted_median_income_comuna, lb_weighted_median_1992_comuna, type = "left")
lb_weighted_median_income_comuna <- join(lb_weighted_median_income_comuna, lb_weighted_median_1994_comuna, type = "left")
lb_weighted_median_income_comuna <- join(lb_weighted_median_income_comuna, lb_weighted_median_1996_comuna, type = "left")
lb_weighted_median_income_comuna <- join(lb_weighted_median_income_comuna, lb_weighted_median_1998_comuna, type = "left")
lb_weighted_median_income_comuna <- join(lb_weighted_median_income_comuna, lb_weighted_median_2000_comuna, type = "left")
lb_weighted_median_income_comuna <- join(lb_weighted_median_income_comuna, lb_weighted_median_2003_comuna, type = "left")
lb_weighted_median_income_comuna <- join(lb_weighted_median_income_comuna, lb_weighted_median_2006_comuna, type = "left")
lb_weighted_median_income_comuna <- join(lb_weighted_median_income_comuna, lb_weighted_median_2009_comuna, type = "left")
lb_weighted_median_income_comuna <- join(lb_weighted_median_income_comuna, lb_weighted_median_2011_comuna, type = "left")
lb_weighted_median_income_comuna <- join(lb_weighted_median_income_comuna, lb_weighted_median_2013_comuna, type = "left")
lb_weighted_median_income_comuna <- join(lb_weighted_median_income_comuna, lb_weighted_median_2015_comuna, type = "left")

lb_weighted_median_income_comuna <- lb_weighted_median_income_comuna[order(lb_weighted_median_income_comuna$sexo),]
rownames(lb_weighted_median_income_comuna) <- c(seq(1:nrow(lb_weighted_median_income_comuna)))

#########################
# join ub_weighted_median_income #
#########################

ub_weighted_median_income_comuna <- as.data.frame(unique(c(as.character(ub_weighted_median_1990_comuna$sexo), as.character(ub_weighted_median_2015_comuna$sexo))))
setnames(ub_weighted_median_income_comuna, colnames(ub_weighted_median_income_comuna), "sexo")

ub_weighted_median_income_comuna <- join(ub_weighted_median_income_comuna, ub_weighted_median_1990_comuna, type = "left")
ub_weighted_median_income_comuna <- join(ub_weighted_median_income_comuna, ub_weighted_median_1992_comuna, type = "left")
ub_weighted_median_income_comuna <- join(ub_weighted_median_income_comuna, ub_weighted_median_1994_comuna, type = "left")
ub_weighted_median_income_comuna <- join(ub_weighted_median_income_comuna, ub_weighted_median_1996_comuna, type = "left")
ub_weighted_median_income_comuna <- join(ub_weighted_median_income_comuna, ub_weighted_median_1998_comuna, type = "left")
ub_weighted_median_income_comuna <- join(ub_weighted_median_income_comuna, ub_weighted_median_2000_comuna, type = "left")
ub_weighted_median_income_comuna <- join(ub_weighted_median_income_comuna, ub_weighted_median_2003_comuna, type = "left")
ub_weighted_median_income_comuna <- join(ub_weighted_median_income_comuna, ub_weighted_median_2006_comuna, type = "left")
ub_weighted_median_income_comuna <- join(ub_weighted_median_income_comuna, ub_weighted_median_2009_comuna, type = "left")
ub_weighted_median_income_comuna <- join(ub_weighted_median_income_comuna, ub_weighted_median_2011_comuna, type = "left")
ub_weighted_median_income_comuna <- join(ub_weighted_median_income_comuna, ub_weighted_median_2013_comuna, type = "left")
ub_weighted_median_income_comuna <- join(ub_weighted_median_income_comuna, ub_weighted_median_2015_comuna, type = "left")

ub_weighted_median_income_comuna <- ub_weighted_median_income_comuna[order(ub_weighted_median_income_comuna$sexo),]
rownames(ub_weighted_median_income_comuna) <- c(seq(1:nrow(ub_weighted_median_income_comuna)))

#########################
# join lb_weighted_mean_income #
#########################

lb_weighted_mean_income_comuna <- as.data.frame(unique(c(as.character(lb_weighted_mean_1990_comuna$sexo), as.character(lb_weighted_mean_2015_comuna$sexo))))
setnames(lb_weighted_mean_income_comuna, colnames(lb_weighted_mean_income_comuna), "sexo")

lb_weighted_mean_income_comuna <- join(lb_weighted_mean_income_comuna, lb_weighted_mean_1990_comuna, type = "left")
lb_weighted_mean_income_comuna <- join(lb_weighted_mean_income_comuna, lb_weighted_mean_1992_comuna, type = "left")
lb_weighted_mean_income_comuna <- join(lb_weighted_mean_income_comuna, lb_weighted_mean_1994_comuna, type = "left")
lb_weighted_mean_income_comuna <- join(lb_weighted_mean_income_comuna, lb_weighted_mean_1996_comuna, type = "left")
lb_weighted_mean_income_comuna <- join(lb_weighted_mean_income_comuna, lb_weighted_mean_1998_comuna, type = "left")
lb_weighted_mean_income_comuna <- join(lb_weighted_mean_income_comuna, lb_weighted_mean_2000_comuna, type = "left")
lb_weighted_mean_income_comuna <- join(lb_weighted_mean_income_comuna, lb_weighted_mean_2003_comuna, type = "left")
lb_weighted_mean_income_comuna <- join(lb_weighted_mean_income_comuna, lb_weighted_mean_2006_comuna, type = "left")
lb_weighted_mean_income_comuna <- join(lb_weighted_mean_income_comuna, lb_weighted_mean_2009_comuna, type = "left")
lb_weighted_mean_income_comuna <- join(lb_weighted_mean_income_comuna, lb_weighted_mean_2011_comuna, type = "left")
lb_weighted_mean_income_comuna <- join(lb_weighted_mean_income_comuna, lb_weighted_mean_2013_comuna, type = "left")
lb_weighted_mean_income_comuna <- join(lb_weighted_mean_income_comuna, lb_weighted_mean_2015_comuna, type = "left")

lb_weighted_mean_income_comuna <- lb_weighted_mean_income_comuna[order(lb_weighted_mean_income_comuna$sexo),]
rownames(lb_weighted_mean_income_comuna) <- c(seq(1:nrow(lb_weighted_mean_income_comuna)))

#########################
# join ub_weighted_mean_income #
#########################

ub_weighted_mean_income_comuna <- as.data.frame(unique(c(as.character(ub_weighted_mean_1990_comuna$sexo), as.character(ub_weighted_mean_2015_comuna$sexo))))
setnames(ub_weighted_mean_income_comuna, colnames(ub_weighted_mean_income_comuna), "sexo")

ub_weighted_mean_income_comuna <- join(ub_weighted_mean_income_comuna, ub_weighted_mean_1990_comuna, type = "left")
ub_weighted_mean_income_comuna <- join(ub_weighted_mean_income_comuna, ub_weighted_mean_1992_comuna, type = "left")
ub_weighted_mean_income_comuna <- join(ub_weighted_mean_income_comuna, ub_weighted_mean_1994_comuna, type = "left")
ub_weighted_mean_income_comuna <- join(ub_weighted_mean_income_comuna, ub_weighted_mean_1996_comuna, type = "left")
ub_weighted_mean_income_comuna <- join(ub_weighted_mean_income_comuna, ub_weighted_mean_1998_comuna, type = "left")
ub_weighted_mean_income_comuna <- join(ub_weighted_mean_income_comuna, ub_weighted_mean_2000_comuna, type = "left")
ub_weighted_mean_income_comuna <- join(ub_weighted_mean_income_comuna, ub_weighted_mean_2003_comuna, type = "left")
ub_weighted_mean_income_comuna <- join(ub_weighted_mean_income_comuna, ub_weighted_mean_2006_comuna, type = "left")
ub_weighted_mean_income_comuna <- join(ub_weighted_mean_income_comuna, ub_weighted_mean_2009_comuna, type = "left")
ub_weighted_mean_income_comuna <- join(ub_weighted_mean_income_comuna, ub_weighted_mean_2011_comuna, type = "left")
ub_weighted_mean_income_comuna <- join(ub_weighted_mean_income_comuna, ub_weighted_mean_2013_comuna, type = "left")
ub_weighted_mean_income_comuna <- join(ub_weighted_mean_income_comuna, ub_weighted_mean_2015_comuna, type = "left")

ub_weighted_mean_income_comuna <- ub_weighted_mean_income_comuna[order(ub_weighted_mean_income_comuna$sexo),]
rownames(ub_weighted_mean_income_comuna) <- c(seq(1:nrow(ub_weighted_mean_income_comuna)))

###############
# tidy median #
###############

tidy_weighted_median_income_comuna <- weighted_median_income_comuna %>% gather(year, weighted_median_income, `1990`:`2015`)
tidy_lb_weighted_median_income_comuna <- lb_weighted_median_income_comuna %>% gather(year, lb_weighted_median_income, `1990`:`2015`)
tidy_ub_weighted_median_income_comuna <- ub_weighted_median_income_comuna %>% gather(year, ub_weighted_median_income, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_weighted_mean_income_comuna <- weighted_mean_income_comuna %>% gather(year, weighted_mean_income, `1990`:`2015`)
tidy_lb_weighted_mean_income_comuna <- lb_weighted_mean_income_comuna %>% gather(year, lb_weighted_mean_income, `1990`:`2015`)
tidy_ub_weighted_mean_income_comuna <- ub_weighted_mean_income_comuna %>% gather(year, ub_weighted_mean_income, `1990`:`2015`)

############
# join all #
############

tidy_all_comuna <- join(tidy_weighted_mean_income_comuna, tidy_weighted_median_income_comuna, by = c("sexo","comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_lb_weighted_mean_income_comuna, by = c("sexo","comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_ub_weighted_mean_income_comuna, by = c("sexo","comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_lb_weighted_median_income_comuna, by = c("sexo","comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_ub_weighted_median_income_comuna, by = c("sexo","comuna","year"))

setnames(tidy_all_comuna, "comuna", "comuna_name")
tidy_all_comuna <- join(tidy_all_comuna, unique(region_codes_datachile[,c("comuna_name","comuna_datachile_id")]), by = "comuna_name")
tidy_all_comuna$geography_level <- "comuna"
tidy_all_comuna <- move_col(tidy_all_comuna, c("geography_level"=1, "comuna_name"=2, "comuna_datachile_id"=3, "year"=4))
setnames(tidy_all_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))

tidy_all_comuna$geography_level <- as.character(tidy_all_comuna$geography_level)
tidy_all_comuna$geography_name <- as.character(tidy_all_comuna$geography_name)
tidy_all_comuna$geography_id <- as.character(tidy_all_comuna$geography_id)

tidy_all_comuna$ci_weighted_mean_income <- paste0("[",tidy_all_comuna$lb_weighted_mean_income,", ",tidy_all_comuna$ub_weighted_mean_income,"]")
tidy_all_comuna$ci_weighted_median_income <- paste0("[",tidy_all_comuna$lb_weighted_median_income,", ",tidy_all_comuna$ub_weighted_median_income,"]")

tidy_all_comuna <- tidy_all_comuna[, !(colnames(tidy_all_comuna) %in% c("lb_weighted_mean_income","ub_weighted_mean_income","lb_weighted_median_income","ub_weighted_median_income"))]

tidy_all_comuna <- tidy_all_comuna[complete.cases(tidy_all_comuna),]

########
# save #
########

write.csv(weighted_median_income_comuna, file = "wage_by_gender_with_weights/csv_intermediate_files/wage_by_gender_with_weights_weighted_median_income_comuna.csv")
write.csv(weighted_mean_income_comuna, file = "wage_by_gender_with_weights/csv_intermediate_files/wage_by_gender_with_weights_weighted_mean_income_comuna.csv")
write.csv(tidy_all_comuna, file = "wage_by_gender_with_weights/csv_final_files/wage_by_gender_with_weights_tidy_all_comuna.csv")

##################
# free up memory #
##################

rm(weighted_median_income_comuna, weighted_mean_income_comuna,
   lb_weighted_median_income_comuna, lb_weighted_mean_income_comuna,
   ub_weighted_median_income_comuna, ub_weighted_mean_income_comuna)

rm(tidy_weighted_median_income_comuna, tidy_weighted_mean_income_comuna,
   tidy_lb_weighted_median_income_comuna, tidy_lb_weighted_mean_income_comuna,
   tidy_ub_weighted_median_income_comuna, tidy_ub_weighted_mean_income_comuna)

rm(weighted_median_1990_comuna, weighted_median_1992_comuna, weighted_median_1994_comuna, weighted_median_1996_comuna, weighted_median_1998_comuna,
   weighted_median_2000_comuna, weighted_median_2003_comuna, weighted_median_2006_comuna, weighted_median_2009_comuna, 
   weighted_median_2011_comuna, weighted_median_2013_comuna, weighted_median_2015_comuna)

rm(weighted_mean_1990_comuna, weighted_mean_1992_comuna, weighted_mean_1994_comuna, weighted_mean_1996_comuna, weighted_mean_1998_comuna,
   weighted_mean_2000_comuna, weighted_mean_2003_comuna, weighted_mean_2006_comuna, weighted_mean_2009_comuna, 
   weighted_mean_2011_comuna, weighted_mean_2013_comuna, weighted_mean_2015_comuna)

rm(lb_weighted_median_1990_comuna, lb_weighted_median_1992_comuna, lb_weighted_median_1994_comuna, lb_weighted_median_1996_comuna, lb_weighted_median_1998_comuna,
   lb_weighted_median_2000_comuna, lb_weighted_median_2003_comuna, lb_weighted_median_2006_comuna, lb_weighted_median_2009_comuna, 
   lb_weighted_median_2011_comuna, lb_weighted_median_2013_comuna, lb_weighted_median_2015_comuna)

rm(ub_weighted_median_1990_comuna, ub_weighted_median_1992_comuna, ub_weighted_median_1994_comuna, ub_weighted_median_1996_comuna, ub_weighted_median_1998_comuna,
   ub_weighted_median_2000_comuna, ub_weighted_median_2003_comuna, ub_weighted_median_2006_comuna, ub_weighted_median_2009_comuna, 
   ub_weighted_median_2011_comuna, ub_weighted_median_2013_comuna, ub_weighted_median_2015_comuna)

rm(lb_weighted_mean_1990_comuna, lb_weighted_mean_1992_comuna, lb_weighted_mean_1994_comuna, lb_weighted_mean_1996_comuna, lb_weighted_mean_1998_comuna,
   lb_weighted_mean_2000_comuna, lb_weighted_mean_2003_comuna, lb_weighted_mean_2006_comuna, lb_weighted_mean_2009_comuna, 
   lb_weighted_mean_2011_comuna, lb_weighted_mean_2013_comuna, lb_weighted_mean_2015_comuna)

rm(ub_weighted_mean_1990_comuna, ub_weighted_mean_1992_comuna, ub_weighted_mean_1994_comuna, ub_weighted_mean_1996_comuna, ub_weighted_mean_1998_comuna,
   ub_weighted_mean_2000_comuna, ub_weighted_mean_2003_comuna, ub_weighted_mean_2006_comuna, ub_weighted_mean_2009_comuna, 
   ub_weighted_mean_2011_comuna, ub_weighted_mean_2013_comuna, ub_weighted_mean_2015_comuna)
