#uncomment lines 2-3 when running this file alone
#source("wage_by_gender_and_occupation/functions/normalization.R")
#source("wage_by_gender_and_occupation/process_wage_by_gender_and_occupation/process_wage_by_gender_and_occupation.R")
source("wage_by_gender_and_occupation/wage_by_gender_and_occupation_statistics_region/wage_by_gender_and_occupation_statistics_region.R")

###############
# join median #
###############

median_income_region <- as.data.frame(unique(c(as.character(median_1990_region$sexo), as.character(median_2015_region$sexo))))
setnames(median_income_region, colnames(median_income_region), "sexo")

median_income_region <- join(median_income_region, median_1990_region, type = "left")
median_income_region <- join(median_income_region, median_1992_region, type = "left")
median_income_region <- join(median_income_region, median_1994_region, type = "left")
median_income_region <- join(median_income_region, median_1996_region, type = "left")
median_income_region <- join(median_income_region, median_1998_region, type = "left")
median_income_region <- join(median_income_region, median_2000_region, type = "left")
median_income_region <- join(median_income_region, median_2003_region, type = "left")
median_income_region <- join(median_income_region, median_2006_region, type = "left")
median_income_region <- join(median_income_region, median_2009_region, type = "left")
median_income_region <- join(median_income_region, median_2011_region, type = "left")
median_income_region <- join(median_income_region, median_2013_region, type = "left")
median_income_region <- join(median_income_region, median_2015_region, type = "left")

median_income_region <- median_income_region[order(median_income_region$sexo),]
rownames(median_income_region) <- c(seq(1:nrow(median_income_region)))

#############
# join mean #
#############

mean_income_region <- as.data.frame(unique(c(as.character(mean_1990_region$sexo), as.character(mean_2015_region$sexo))))
setnames(mean_income_region, colnames(mean_income_region), "sexo")

mean_income_region <- join(mean_income_region, mean_1990_region, type = "left")
mean_income_region <- join(mean_income_region, mean_1992_region, type = "left")
mean_income_region <- join(mean_income_region, mean_1994_region, type = "left")
mean_income_region <- join(mean_income_region, mean_1996_region, type = "left")
mean_income_region <- join(mean_income_region, mean_1998_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2000_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2003_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2006_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2009_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2011_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2013_region, type = "left")
mean_income_region <- join(mean_income_region, mean_2015_region, type = "left")

mean_income_region <- mean_income_region[order(mean_income_region$sexo),]
rownames(mean_income_region) <- c(seq(1:nrow(mean_income_region)))

#########################
# join lb_median_income #
#########################

lb_median_income_region <- as.data.frame(unique(c(as.character(lb_median_1990_region$sexo), as.character(lb_median_2015_region$sexo))))
setnames(lb_median_income_region, colnames(lb_median_income_region), "sexo")

lb_median_income_region <- join(lb_median_income_region, lb_median_1990_region, type = "left")
lb_median_income_region <- join(lb_median_income_region, lb_median_1992_region, type = "left")
lb_median_income_region <- join(lb_median_income_region, lb_median_1994_region, type = "left")
lb_median_income_region <- join(lb_median_income_region, lb_median_1996_region, type = "left")
lb_median_income_region <- join(lb_median_income_region, lb_median_1998_region, type = "left")
lb_median_income_region <- join(lb_median_income_region, lb_median_2000_region, type = "left")
lb_median_income_region <- join(lb_median_income_region, lb_median_2003_region, type = "left")
lb_median_income_region <- join(lb_median_income_region, lb_median_2006_region, type = "left")
lb_median_income_region <- join(lb_median_income_region, lb_median_2009_region, type = "left")
lb_median_income_region <- join(lb_median_income_region, lb_median_2011_region, type = "left")
lb_median_income_region <- join(lb_median_income_region, lb_median_2013_region, type = "left")
lb_median_income_region <- join(lb_median_income_region, lb_median_2015_region, type = "left")

lb_median_income_region <- lb_median_income_region[order(lb_median_income_region$sexo),]
rownames(lb_median_income_region) <- c(seq(1:nrow(lb_median_income_region)))

#########################
# join ub_median_income #
#########################

ub_median_income_region <- as.data.frame(unique(c(as.character(ub_median_1990_region$sexo), as.character(ub_median_2015_region$sexo))))
setnames(ub_median_income_region, colnames(ub_median_income_region), "sexo")

ub_median_income_region <- join(ub_median_income_region, ub_median_1990_region, type = "left")
ub_median_income_region <- join(ub_median_income_region, ub_median_1992_region, type = "left")
ub_median_income_region <- join(ub_median_income_region, ub_median_1994_region, type = "left")
ub_median_income_region <- join(ub_median_income_region, ub_median_1996_region, type = "left")
ub_median_income_region <- join(ub_median_income_region, ub_median_1998_region, type = "left")
ub_median_income_region <- join(ub_median_income_region, ub_median_2000_region, type = "left")
ub_median_income_region <- join(ub_median_income_region, ub_median_2003_region, type = "left")
ub_median_income_region <- join(ub_median_income_region, ub_median_2006_region, type = "left")
ub_median_income_region <- join(ub_median_income_region, ub_median_2009_region, type = "left")
ub_median_income_region <- join(ub_median_income_region, ub_median_2011_region, type = "left")
ub_median_income_region <- join(ub_median_income_region, ub_median_2013_region, type = "left")
ub_median_income_region <- join(ub_median_income_region, ub_median_2015_region, type = "left")

ub_median_income_region <- ub_median_income_region[order(ub_median_income_region$sexo),]
rownames(ub_median_income_region) <- c(seq(1:nrow(ub_median_income_region)))

#########################
# join lb_mean_income #
#########################

lb_mean_income_region <- as.data.frame(unique(c(as.character(lb_mean_1990_region$sexo), as.character(lb_mean_2015_region$sexo))))
setnames(lb_mean_income_region, colnames(lb_mean_income_region), "sexo")

lb_mean_income_region <- join(lb_mean_income_region, lb_mean_1990_region, type = "left")
lb_mean_income_region <- join(lb_mean_income_region, lb_mean_1992_region, type = "left")
lb_mean_income_region <- join(lb_mean_income_region, lb_mean_1994_region, type = "left")
lb_mean_income_region <- join(lb_mean_income_region, lb_mean_1996_region, type = "left")
lb_mean_income_region <- join(lb_mean_income_region, lb_mean_1998_region, type = "left")
lb_mean_income_region <- join(lb_mean_income_region, lb_mean_2000_region, type = "left")
lb_mean_income_region <- join(lb_mean_income_region, lb_mean_2003_region, type = "left")
lb_mean_income_region <- join(lb_mean_income_region, lb_mean_2006_region, type = "left")
lb_mean_income_region <- join(lb_mean_income_region, lb_mean_2009_region, type = "left")
lb_mean_income_region <- join(lb_mean_income_region, lb_mean_2011_region, type = "left")
lb_mean_income_region <- join(lb_mean_income_region, lb_mean_2013_region, type = "left")
lb_mean_income_region <- join(lb_mean_income_region, lb_mean_2015_region, type = "left")

lb_mean_income_region <- lb_mean_income_region[order(lb_mean_income_region$sexo),]
rownames(lb_mean_income_region) <- c(seq(1:nrow(lb_mean_income_region)))

#########################
# join ub_mean_income #
#########################

ub_mean_income_region <- as.data.frame(unique(c(as.character(ub_mean_1990_region$sexo), as.character(ub_mean_2015_region$sexo))))
setnames(ub_mean_income_region, colnames(ub_mean_income_region), "sexo")

ub_mean_income_region <- join(ub_mean_income_region, ub_mean_1990_region, type = "left")
ub_mean_income_region <- join(ub_mean_income_region, ub_mean_1992_region, type = "left")
ub_mean_income_region <- join(ub_mean_income_region, ub_mean_1994_region, type = "left")
ub_mean_income_region <- join(ub_mean_income_region, ub_mean_1996_region, type = "left")
ub_mean_income_region <- join(ub_mean_income_region, ub_mean_1998_region, type = "left")
ub_mean_income_region <- join(ub_mean_income_region, ub_mean_2000_region, type = "left")
ub_mean_income_region <- join(ub_mean_income_region, ub_mean_2003_region, type = "left")
ub_mean_income_region <- join(ub_mean_income_region, ub_mean_2006_region, type = "left")
ub_mean_income_region <- join(ub_mean_income_region, ub_mean_2009_region, type = "left")
ub_mean_income_region <- join(ub_mean_income_region, ub_mean_2011_region, type = "left")
ub_mean_income_region <- join(ub_mean_income_region, ub_mean_2013_region, type = "left")
ub_mean_income_region <- join(ub_mean_income_region, ub_mean_2015_region, type = "left")

ub_mean_income_region <- ub_mean_income_region[order(ub_mean_income_region$sexo),]
rownames(ub_mean_income_region) <- c(seq(1:nrow(ub_mean_income_region)))

###############
# tidy median #
###############

tidy_median_income_region <- median_income_region %>% gather(year, median_income, `1990`:`2015`)
tidy_lb_median_income_region <- lb_median_income_region %>% gather(year, lb_median_income, `1990`:`2015`)
tidy_ub_median_income_region <- ub_median_income_region %>% gather(year, ub_median_income, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_mean_income_region <- mean_income_region %>% gather(year, mean_income, `1990`:`2015`)
tidy_lb_mean_income_region <- lb_mean_income_region %>% gather(year, lb_mean_income, `1990`:`2015`)
tidy_ub_mean_income_region <- ub_mean_income_region %>% gather(year, ub_mean_income, `1990`:`2015`)

############
# join all #
############

tidy_all_region <- join(tidy_mean_income_region, tidy_median_income_region, by = c("sexo","oficio","region","year"))
tidy_all_region <- join(tidy_all_region, tidy_lb_mean_income_region, by = c("sexo","oficio","region","year"))
tidy_all_region <- join(tidy_all_region, tidy_ub_mean_income_region, by = c("sexo","oficio","region","year"))
tidy_all_region <- join(tidy_all_region, tidy_lb_median_income_region, by = c("sexo","oficio","region","year"))
tidy_all_region <- join(tidy_all_region, tidy_ub_median_income_region, by = c("sexo","oficio","region","year"))

setnames(tidy_all_region, "region", "region_name")
tidy_all_region <- join(tidy_all_region, unique(region_codes_datachile[,c("region_name","region_id")]), by = "region_name")
tidy_all_region$geography_level <- "region"
tidy_all_region <- move_col(tidy_all_region, c("geography_level"=1, "region_name"=2, "region_id"=3, "year"=4))
setnames(tidy_all_region, c("region_name","region_id"), c("geography_name","geography_id"))

tidy_all_region$geography_level <- as.character(tidy_all_region$geography_level)
tidy_all_region$geography_name <- as.character(tidy_all_region$geography_name)
tidy_all_region$geography_id <- as.character(tidy_all_region$geography_id)

tidy_all_region$ci_mean_income <- paste0("[",tidy_all_region$lb_mean_income,", ",tidy_all_region$ub_mean_income,"]")
tidy_all_region$ci_median_income <- paste0("[",tidy_all_region$lb_median_income,", ",tidy_all_region$ub_median_income,"]")

tidy_all_region <- tidy_all_region[, !(colnames(tidy_all_region) %in% c("lb_mean_income","ub_mean_income","lb_median_income","ub_median_income"))]

tidy_all_region <- tidy_all_region[complete.cases(tidy_all_region),]

########
# save #
########

write.csv(median_income_region, file = "wage_by_gender_and_occupation/csv_intermediate_files/wage_by_gender_and_occupation_median_income_region.csv")
write.csv(mean_income_region, file = "wage_by_gender_and_occupation/csv_intermediate_files/wage_by_gender_and_occupation_mean_income_region.csv")
write.csv(tidy_all_region, file = "wage_by_gender_and_occupation/csv_final_files/wage_by_gender_and_occupation_tidy_all_region.csv")

##################
# free up memory #
##################

rm(median_income_region, mean_income_region,
   lb_median_income_region, lb_mean_income_region,
   ub_median_income_region, ub_mean_income_region)

rm(tidy_median_income_region, tidy_mean_income_region,
   tidy_lb_median_income_region, tidy_lb_mean_income_region,
   tidy_ub_median_income_region, tidy_ub_mean_income_region)

rm(median_1990_region, median_1992_region, median_1994_region, median_1996_region, median_1998_region,
   median_2000_region, median_2003_region, median_2006_region, median_2009_region, 
   median_2011_region, median_2013_region, median_2015_region)

rm(mean_1990_region, mean_1992_region, mean_1994_region, mean_1996_region, mean_1998_region,
   mean_2000_region, mean_2003_region, mean_2006_region, mean_2009_region, 
   mean_2011_region, mean_2013_region, mean_2015_region)

rm(lb_median_1990_region, lb_median_1992_region, lb_median_1994_region, lb_median_1996_region, lb_median_1998_region,
   lb_median_2000_region, lb_median_2003_region, lb_median_2006_region, lb_median_2009_region, 
   lb_median_2011_region, lb_median_2013_region, lb_median_2015_region)

rm(ub_median_1990_region, ub_median_1992_region, ub_median_1994_region, ub_median_1996_region, ub_median_1998_region,
   ub_median_2000_region, ub_median_2003_region, ub_median_2006_region, ub_median_2009_region, 
   ub_median_2011_region, ub_median_2013_region, ub_median_2015_region)

rm(lb_mean_1990_region, lb_mean_1992_region, lb_mean_1994_region, lb_mean_1996_region, lb_mean_1998_region,
   lb_mean_2000_region, lb_mean_2003_region, lb_mean_2006_region, lb_mean_2009_region, 
   lb_mean_2011_region, lb_mean_2013_region, lb_mean_2015_region)

rm(ub_mean_1990_region, ub_mean_1992_region, ub_mean_1994_region, ub_mean_1996_region, ub_mean_1998_region,
   ub_mean_2000_region, ub_mean_2003_region, ub_mean_2006_region, ub_mean_2009_region, 
   ub_mean_2011_region, ub_mean_2013_region, ub_mean_2015_region)
