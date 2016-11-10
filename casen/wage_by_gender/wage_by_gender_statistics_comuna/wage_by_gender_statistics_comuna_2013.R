########
# 2013 #
########

# Median Wage by Gender by comuna
median_2013_comuna <- aggregate(ingreso_ocup_principal ~ sexo + comuna, data = wage_by_gender_2013, FUN = median, na.rm = TRUE)
setnames(median_2013_comuna, colnames(median_2013_comuna), c("sexo","comuna","2013"))
#median_2013_comuna <- insert_row(median_2013_comuna, c("Pa\u00eds", median(wage_by_gender_2013$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2013_comuna)+1)
median_2013_comuna$`2013` <- as.numeric(median_2013_comuna$`2013`)
median_2013_comuna$`2013` <- round(median_2013_comuna$`2013`, 0)
median_2013_comuna$`2013` <- as.numeric(median_2013_comuna$`2013`)
median_2013_comuna$`2013` <- round(median_2013_comuna$`2013`, 0)

# Average Wage by Gender by comuna
mean_2013_comuna <- aggregate(ingreso_ocup_principal ~ sexo + comuna, data = wage_by_gender_2013, FUN = mean, na.rm = TRUE)
setnames(mean_2013_comuna, colnames(mean_2013_comuna), c("sexo","comuna","2013"))
mean_2013_comuna$`2013` <- as.numeric(mean_2013_comuna$`2013`)
mean_2013_comuna$`2013` <- round(mean_2013_comuna$`2013`, 0)
mean_2013_comuna$`2013` <- as.numeric(mean_2013_comuna$`2013`)
mean_2013_comuna$`2013` <- round(mean_2013_comuna$`2013`, 0)

# Lower Bound for Median Wage by Gender by comuna
lb_median_2013_comuna <- aggregate(ingreso_ocup_principal ~ sexo + comuna, data = wage_by_gender_2013, FUN = lb_median)
setnames(lb_median_2013_comuna, colnames(lb_median_2013_comuna), c("sexo","comuna","2013"))
lb_median_2013_comuna$`2013` <- as.numeric(lb_median_2013_comuna$`2013`)
lb_median_2013_comuna$`2013` <- round(lb_median_2013_comuna$`2013`, 0)
lb_median_2013_comuna$`2013` <- as.numeric(lb_median_2013_comuna$`2013`)
lb_median_2013_comuna$`2013` <- round(lb_median_2013_comuna$`2013`, 0)

# Upper Bound for Median Wage by Gender by comuna
ub_median_2013_comuna <- aggregate(ingreso_ocup_principal ~ sexo + comuna, data = wage_by_gender_2013, FUN = ub_median)
setnames(ub_median_2013_comuna, colnames(ub_median_2013_comuna), c("sexo","comuna","2013"))
ub_median_2013_comuna$`2013` <- as.numeric(ub_median_2013_comuna$`2013`)
ub_median_2013_comuna$`2013` <- round(ub_median_2013_comuna$`2013`, 0)

# Lower Bound for Mean Wage by Gender by comuna
lb_mean_2013_comuna <- aggregate(ingreso_ocup_principal ~ sexo + comuna, data = wage_by_gender_2013, FUN = lb_mean)
setnames(lb_mean_2013_comuna, colnames(lb_mean_2013_comuna), c("sexo","comuna","2013"))
lb_mean_2013_comuna$`2013` <- as.numeric(lb_mean_2013_comuna$`2013`)
lb_mean_2013_comuna$`2013` <- round(lb_mean_2013_comuna$`2013`, 0)

# Upper Bound for Mean Wage by Gender by comuna
ub_mean_2013_comuna <- aggregate(ingreso_ocup_principal ~ sexo + comuna, data = wage_by_gender_2013, FUN = ub_mean)
setnames(ub_mean_2013_comuna, colnames(ub_mean_2013_comuna), c("sexo","comuna","2013"))
ub_mean_2013_comuna$`2013` <- as.numeric(ub_mean_2013_comuna$`2013`)
ub_mean_2013_comuna$`2013` <- round(ub_mean_2013_comuna$`2013`, 0)
