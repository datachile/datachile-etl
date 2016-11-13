########
# 2015 #
########

# Median Wage by Gender by provincia
median_2015_provincia <- aggregate(ingreso_ocup_principal ~ sexo + rama + provincia, data = wage_by_gender_and_branch_2015, FUN = median, na.rm = TRUE)
setnames(median_2015_provincia, colnames(median_2015_provincia), c("sexo","rama","provincia","2015"))
#median_2015_provincia <- insert_row(median_2015_provincia, c("Pa\u00eds", median(wage_by_gender_and_branch_2015$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2015_provincia)+1)
median_2015_provincia$`2015` <- as.numeric(median_2015_provincia$`2015`)
median_2015_provincia$`2015` <- round(median_2015_provincia$`2015`, 0)
median_2015_provincia$`2015` <- as.numeric(median_2015_provincia$`2015`)
median_2015_provincia$`2015` <- round(median_2015_provincia$`2015`, 0)

# Average Wage by Gender by provincia
mean_2015_provincia <- aggregate(ingreso_ocup_principal ~ sexo + rama + provincia, data = wage_by_gender_and_branch_2015, FUN = mean, na.rm = TRUE)
setnames(mean_2015_provincia, colnames(mean_2015_provincia), c("sexo","rama","provincia","2015"))
mean_2015_provincia$`2015` <- as.numeric(mean_2015_provincia$`2015`)
mean_2015_provincia$`2015` <- round(mean_2015_provincia$`2015`, 0)
mean_2015_provincia$`2015` <- as.numeric(mean_2015_provincia$`2015`)
mean_2015_provincia$`2015` <- round(mean_2015_provincia$`2015`, 0)

# Lower Bound for Median Wage by Gender by provincia
lb_median_2015_provincia <- aggregate(ingreso_ocup_principal ~ sexo + rama + provincia, data = wage_by_gender_and_branch_2015, FUN = lb_median)
setnames(lb_median_2015_provincia, colnames(lb_median_2015_provincia), c("sexo","rama","provincia","2015"))
lb_median_2015_provincia$`2015` <- as.numeric(lb_median_2015_provincia$`2015`)
lb_median_2015_provincia$`2015` <- round(lb_median_2015_provincia$`2015`, 0)
lb_median_2015_provincia$`2015` <- as.numeric(lb_median_2015_provincia$`2015`)
lb_median_2015_provincia$`2015` <- round(lb_median_2015_provincia$`2015`, 0)

# Upper Bound for Median Wage by Gender by provincia
ub_median_2015_provincia <- aggregate(ingreso_ocup_principal ~ sexo + rama + provincia, data = wage_by_gender_and_branch_2015, FUN = ub_median)
setnames(ub_median_2015_provincia, colnames(ub_median_2015_provincia), c("sexo","rama","provincia","2015"))
ub_median_2015_provincia$`2015` <- as.numeric(ub_median_2015_provincia$`2015`)
ub_median_2015_provincia$`2015` <- round(ub_median_2015_provincia$`2015`, 0)

# Lower Bound for Mean Wage by Gender by provincia
lb_mean_2015_provincia <- aggregate(ingreso_ocup_principal ~ sexo + rama + provincia, data = wage_by_gender_and_branch_2015, FUN = lb_mean)
setnames(lb_mean_2015_provincia, colnames(lb_mean_2015_provincia), c("sexo","rama","provincia","2015"))
lb_mean_2015_provincia$`2015` <- as.numeric(lb_mean_2015_provincia$`2015`)
lb_mean_2015_provincia$`2015` <- round(lb_mean_2015_provincia$`2015`, 0)

# Upper Bound for Mean Wage by Gender by provincia
ub_mean_2015_provincia <- aggregate(ingreso_ocup_principal ~ sexo + rama + provincia, data = wage_by_gender_and_branch_2015, FUN = ub_mean)
setnames(ub_mean_2015_provincia, colnames(ub_mean_2015_provincia), c("sexo","rama","provincia","2015"))
ub_mean_2015_provincia$`2015` <- as.numeric(ub_mean_2015_provincia$`2015`)
ub_mean_2015_provincia$`2015` <- round(ub_mean_2015_provincia$`2015`, 0)
