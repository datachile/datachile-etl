########
# 2013 #
########

# Median Wage by Gender by provincia
median_2013_provincia <- aggregate(ingreso_ocup_principal ~ sexo + rama + provincia, data = wage_by_gender_and_branch_2013, FUN = median, na.rm = TRUE)
setnames(median_2013_provincia, colnames(median_2013_provincia), c("sexo","rama","provincia","2013"))
#median_2013_provincia <- insert_row(median_2013_provincia, c("Pa\u00eds", median(wage_by_gender_and_branch_2013$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2013_provincia)+1)
median_2013_provincia$`2013` <- as.numeric(median_2013_provincia$`2013`)
median_2013_provincia$`2013` <- round(median_2013_provincia$`2013`, 0)
median_2013_provincia$`2013` <- as.numeric(median_2013_provincia$`2013`)
median_2013_provincia$`2013` <- round(median_2013_provincia$`2013`, 0)

# Average Wage by Gender by provincia
mean_2013_provincia <- aggregate(ingreso_ocup_principal ~ sexo + rama + provincia, data = wage_by_gender_and_branch_2013, FUN = mean, na.rm = TRUE)
setnames(mean_2013_provincia, colnames(mean_2013_provincia), c("sexo","rama","provincia","2013"))
mean_2013_provincia$`2013` <- as.numeric(mean_2013_provincia$`2013`)
mean_2013_provincia$`2013` <- round(mean_2013_provincia$`2013`, 0)
mean_2013_provincia$`2013` <- as.numeric(mean_2013_provincia$`2013`)
mean_2013_provincia$`2013` <- round(mean_2013_provincia$`2013`, 0)

# Lower Bound for Median Wage by Gender by provincia
lb_median_2013_provincia <- aggregate(ingreso_ocup_principal ~ sexo + rama + provincia, data = wage_by_gender_and_branch_2013, FUN = lb_median)
setnames(lb_median_2013_provincia, colnames(lb_median_2013_provincia), c("sexo","rama","provincia","2013"))
lb_median_2013_provincia$`2013` <- as.numeric(lb_median_2013_provincia$`2013`)
lb_median_2013_provincia$`2013` <- round(lb_median_2013_provincia$`2013`, 0)
lb_median_2013_provincia$`2013` <- as.numeric(lb_median_2013_provincia$`2013`)
lb_median_2013_provincia$`2013` <- round(lb_median_2013_provincia$`2013`, 0)

# Upper Bound for Median Wage by Gender by provincia
ub_median_2013_provincia <- aggregate(ingreso_ocup_principal ~ sexo + rama + provincia, data = wage_by_gender_and_branch_2013, FUN = ub_median)
setnames(ub_median_2013_provincia, colnames(ub_median_2013_provincia), c("sexo","rama","provincia","2013"))
ub_median_2013_provincia$`2013` <- as.numeric(ub_median_2013_provincia$`2013`)
ub_median_2013_provincia$`2013` <- round(ub_median_2013_provincia$`2013`, 0)

# Lower Bound for Mean Wage by Gender by provincia
lb_mean_2013_provincia <- aggregate(ingreso_ocup_principal ~ sexo + rama + provincia, data = wage_by_gender_and_branch_2013, FUN = lb_mean)
setnames(lb_mean_2013_provincia, colnames(lb_mean_2013_provincia), c("sexo","rama","provincia","2013"))
lb_mean_2013_provincia$`2013` <- as.numeric(lb_mean_2013_provincia$`2013`)
lb_mean_2013_provincia$`2013` <- round(lb_mean_2013_provincia$`2013`, 0)

# Upper Bound for Mean Wage by Gender by provincia
ub_mean_2013_provincia <- aggregate(ingreso_ocup_principal ~ sexo + rama + provincia, data = wage_by_gender_and_branch_2013, FUN = ub_mean)
setnames(ub_mean_2013_provincia, colnames(ub_mean_2013_provincia), c("sexo","rama","provincia","2013"))
ub_mean_2013_provincia$`2013` <- as.numeric(ub_mean_2013_provincia$`2013`)
ub_mean_2013_provincia$`2013` <- round(ub_mean_2013_provincia$`2013`, 0)
