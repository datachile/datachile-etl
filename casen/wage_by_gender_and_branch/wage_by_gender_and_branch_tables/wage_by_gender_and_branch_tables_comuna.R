#uncomment lines 2-3 when running this file alone
#source("wage_by_gender_and_branch/functions/normalization.R")
#source("wage_by_gender_and_branch/process_wage_by_gender_and_branch/process_wage_by_gender_and_branch.R")
source("wage_by_gender_and_branch/wage_by_gender_and_branch_statistics_comuna/wage_by_gender_and_branch_statistics_comuna.R")

###############
# join median #
###############

median_income_comuna <- as.data.frame(unique(c(as.character(median_2011_comuna$sexo), as.character(median_2015_comuna$sexo))))
setnames(median_income_comuna, colnames(median_income_comuna), "sexo")

median_income_comuna <- join(median_income_comuna, median_2011_comuna, type = "left")
median_income_comuna <- join(median_income_comuna, median_2013_comuna, type = "left")
median_income_comuna <- join(median_income_comuna, median_2015_comuna, type = "left")

median_income_comuna <- median_income_comuna[order(median_income_comuna$sexo),]
rownames(median_income_comuna) <- c(seq(1:nrow(median_income_comuna)))

#############
# join mean #
#############

mean_income_comuna <- as.data.frame(unique(c(as.character(mean_2011_comuna$sexo), as.character(mean_2015_comuna$sexo))))
setnames(mean_income_comuna, colnames(mean_income_comuna), "sexo")

mean_income_comuna <- join(mean_income_comuna, mean_2011_comuna, type = "left")
mean_income_comuna <- join(mean_income_comuna, mean_2013_comuna, type = "left")
mean_income_comuna <- join(mean_income_comuna, mean_2015_comuna, type = "left")

mean_income_comuna <- mean_income_comuna[order(mean_income_comuna$sexo),]
rownames(mean_income_comuna) <- c(seq(1:nrow(mean_income_comuna)))

#########################
# join lb_median_income #
#########################

lb_median_income_comuna <- as.data.frame(unique(c(as.character(lb_median_2011_comuna$sexo), as.character(lb_median_2015_comuna$sexo))))
setnames(lb_median_income_comuna, colnames(lb_median_income_comuna), "sexo")

lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_2011_comuna, type = "left")
lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_2013_comuna, type = "left")
lb_median_income_comuna <- join(lb_median_income_comuna, lb_median_2015_comuna, type = "left")

lb_median_income_comuna <- lb_median_income_comuna[order(lb_median_income_comuna$sexo),]
rownames(lb_median_income_comuna) <- c(seq(1:nrow(lb_median_income_comuna)))

#########################
# join ub_median_income #
#########################

ub_median_income_comuna <- as.data.frame(unique(c(as.character(ub_median_2011_comuna$sexo), as.character(ub_median_2015_comuna$sexo))))
setnames(ub_median_income_comuna, colnames(ub_median_income_comuna), "sexo")

ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_2011_comuna, type = "left")
ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_2013_comuna, type = "left")
ub_median_income_comuna <- join(ub_median_income_comuna, ub_median_2015_comuna, type = "left")

ub_median_income_comuna <- ub_median_income_comuna[order(ub_median_income_comuna$sexo),]
rownames(ub_median_income_comuna) <- c(seq(1:nrow(ub_median_income_comuna)))

#########################
# join lb_mean_income #
#########################

lb_mean_income_comuna <- as.data.frame(unique(c(as.character(lb_mean_2011_comuna$sexo), as.character(lb_mean_2015_comuna$sexo))))
setnames(lb_mean_income_comuna, colnames(lb_mean_income_comuna), "sexo")

lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_2011_comuna, type = "left")
lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_2013_comuna, type = "left")
lb_mean_income_comuna <- join(lb_mean_income_comuna, lb_mean_2015_comuna, type = "left")

lb_mean_income_comuna <- lb_mean_income_comuna[order(lb_mean_income_comuna$sexo),]
rownames(lb_mean_income_comuna) <- c(seq(1:nrow(lb_mean_income_comuna)))

#########################
# join ub_mean_income #
#########################

ub_mean_income_comuna <- as.data.frame(unique(c(as.character(ub_mean_2011_comuna$sexo), as.character(ub_mean_2015_comuna$sexo))))
setnames(ub_mean_income_comuna, colnames(ub_mean_income_comuna), "sexo")

ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_2011_comuna, type = "left")
ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_2013_comuna, type = "left")
ub_mean_income_comuna <- join(ub_mean_income_comuna, ub_mean_2015_comuna, type = "left")

ub_mean_income_comuna <- ub_mean_income_comuna[order(ub_mean_income_comuna$sexo),]
rownames(ub_mean_income_comuna) <- c(seq(1:nrow(ub_mean_income_comuna)))

###############
# tidy median #
###############

tidy_median_income_comuna <- median_income_comuna %>% gather(year, median_income, `2011`:`2015`)
tidy_lb_median_income_comuna <- lb_median_income_comuna %>% gather(year, lb_median_income, `2011`:`2015`)
tidy_ub_median_income_comuna <- ub_median_income_comuna %>% gather(year, ub_median_income, `2011`:`2015`)

#############
# tidy mean #
#############

tidy_mean_income_comuna <- mean_income_comuna %>% gather(year, mean_income, `2011`:`2015`)
tidy_lb_mean_income_comuna <- lb_mean_income_comuna %>% gather(year, lb_mean_income, `2011`:`2015`)
tidy_ub_mean_income_comuna <- ub_mean_income_comuna %>% gather(year, ub_mean_income, `2011`:`2015`)

############
# join all #
############

tidy_all_comuna <- join(tidy_mean_income_comuna, tidy_median_income_comuna, by = c("sexo","rama","comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_lb_mean_income_comuna, by = c("sexo","rama","comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_ub_mean_income_comuna, by = c("sexo","rama","comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_lb_median_income_comuna, by = c("sexo","rama","comuna","year"))
tidy_all_comuna <- join(tidy_all_comuna, tidy_ub_median_income_comuna, by = c("sexo","rama","comuna","year"))

setnames(tidy_all_comuna, "comuna", "comuna_name")
tidy_all_comuna <- join(tidy_all_comuna, unique(region_codes_datachile[,c("comuna_name","comuna_datachile_id")]), by = "comuna_name")
tidy_all_comuna$geography_level <- "comuna"
tidy_all_comuna <- move_col(tidy_all_comuna, c("geography_level"=1, "comuna_name"=2, "comuna_datachile_id"=3, "year"=4))
setnames(tidy_all_comuna, c("comuna_name","comuna_datachile_id"), c("geography_name","geography_id"))

tidy_all_comuna$geography_level <- as.character(tidy_all_comuna$geography_level)
tidy_all_comuna$geography_name <- as.character(tidy_all_comuna$geography_name)
tidy_all_comuna$geography_id <- as.character(tidy_all_comuna$geography_id)

tidy_all_comuna$ci_mean_income <- paste0("[",tidy_all_comuna$lb_mean_income,", ",tidy_all_comuna$ub_mean_income,"]")
tidy_all_comuna$ci_median_income <- paste0("[",tidy_all_comuna$lb_median_income,", ",tidy_all_comuna$ub_median_income,"]")

tidy_all_comuna <- tidy_all_comuna[, !(colnames(tidy_all_comuna) %in% c("lb_mean_income","ub_mean_income","lb_median_income","ub_median_income"))]

tidy_all_comuna <- tidy_all_comuna[complete.cases(tidy_all_comuna),]

########
# save #
########

write.csv(median_income_comuna, file = "wage_by_gender_and_branch/csv_intermediate_files/wage_by_gender_and_branch_median_income_comuna.csv")
write.csv(mean_income_comuna, file = "wage_by_gender_and_branch/csv_intermediate_files/wage_by_gender_and_branch_mean_income_comuna.csv")
write.csv(tidy_all_comuna, file = "wage_by_gender_and_branch/csv_final_files/wage_by_gender_and_branch_tidy_all_comuna.csv")

##################
# free up memory #
##################

rm(median_income_comuna, mean_income_comuna,
   lb_median_income_comuna, lb_mean_income_comuna,
   ub_median_income_comuna, ub_mean_income_comuna)

rm(tidy_median_income_comuna, tidy_mean_income_comuna,
   tidy_lb_median_income_comuna, tidy_lb_mean_income_comuna,
   tidy_ub_median_income_comuna, tidy_ub_mean_income_comuna)

rm(median_2011_comuna, median_2013_comuna, median_2015_comuna)

rm(mean_2011_comuna, mean_2013_comuna, mean_2015_comuna)

rm(lb_median_2011_comuna, lb_median_2013_comuna, lb_median_2015_comuna)

rm(ub_median_2011_comuna, ub_median_2013_comuna, ub_median_2015_comuna)

rm(lb_mean_2011_comuna, lb_mean_2013_comuna, lb_mean_2015_comuna)

rm(ub_mean_2011_comuna, ub_mean_2013_comuna, ub_mean_2015_comuna)
