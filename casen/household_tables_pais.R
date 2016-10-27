#uncomment lines 2-3 when running this file alone
#source("normalization.R")
#source("process_household_income.R")
source("household_statistics_pais.R")

###############
# join median #
###############

median_income_pais <- as.data.frame(t(c("Pa\u00eds", median_vector_pais)))
setnames(median_income_pais, colnames(median_income_pais), c("region", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
median_income_pais[,-c(1)] <- lapply(median_income_pais[,-c(1)], function (x) as.numeric(as.character(x)))

#############
# join mean #
#############

mean_income_pais <- as.data.frame(t(c("Pa\u00eds", mean_vector_pais)))
setnames(mean_income_pais, colnames(mean_income_pais), c("region", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
mean_income_pais[,-c(1)] <- lapply(mean_income_pais[,-c(1)], function (x) as.numeric(as.character(x)))

#############
# join gini #
#############

gini_income_pais <- as.data.frame(t(c("Pa\u00eds", gini_vector_pais)))
setnames(gini_income_pais, colnames(gini_income_pais), c("region", c(seq(1990,2000,2), seq(2003,2006,3), seq(2009,2015,2))))
gini_income_pais[,-c(1)] <- lapply(gini_income_pais[,-c(1)], function (x) as.numeric(as.character(x)))

###############
# tidy median #
###############

tidy_median_income_pais <- median_income_pais %>% gather(year, median, `1990`:`2015`)

#############
# tidy mean #
#############

tidy_mean_income_pais <- mean_income_pais %>% gather(year, mean, `1990`:`2015`)

#############
# tidy gini #
#############

tidy_gini_income_pais <- gini_income_pais %>% gather(year, gini, `1990`:`2015`)

############
# join all #
############

tidy_all_pais <- join(tidy_mean_income_pais, tidy_median_income_pais, by = c("region","year"))
tidy_all_pais <- join(tidy_all_pais, tidy_gini_income_pais, by = c("region","year"))

setnames(tidy_all_pais, c("region","mean","median","gini"), c("geography_name","mean_income","median_income","gini_income"))
tidy_all_pais$geography_level <- "pais"
tidy_all_pais$geography_id <- "pais"
tidy_all_pais <- move_col(tidy_all_pais, c("geography_level"=1, "geography_name"=2, "geography_id"=3, "year"=4))

tidy_all_pais <- tidy_all_pais[,c("geography_level","geography_name","geography_id","year","mean_income","median_income","gini_income")]

tidy_all_pais$geography_level <- as.character(tidy_all_pais$geography_level)
tidy_all_pais$geography_name <- as.character(tidy_all_pais$geography_name)
tidy_all_pais$geography_id <- as.character(tidy_all_pais$geography_id)

########
# save #
########

write.csv(median_income_pais, file = "median_income_pais.csv")
write.csv(mean_income_pais, file = "mean_income_pais.csv")
write.csv(gini_income_pais, file = "gini_income_pais.csv")
write.csv(tidy_all_pais, file = "tidy_all_pais.csv")
