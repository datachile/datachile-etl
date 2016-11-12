########
# 2015 #
########

# Median Wage by Gender by comuna
median_2015_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2015, FUN = median, na.rm = TRUE)
setnames(median_2015_comuna, colnames(median_2015_comuna), c("sexo","oficio","comuna","2015"))
#median_2015_comuna <- insert_row(median_2015_comuna, c("Pa\u00eds", median(wage_by_gender_and_occupation_2015$ingreso_ocup_principal, na.rm = TRUE)), nrow(median_2015_comuna)+1)
median_2015_comuna$`2015` <- as.numeric(median_2015_comuna$`2015`)
median_2015_comuna$`2015` <- round(median_2015_comuna$`2015`, 0)
median_2015_comuna$`2015` <- as.numeric(median_2015_comuna$`2015`)
median_2015_comuna$`2015` <- round(median_2015_comuna$`2015`, 0)

# Average Wage by Gender by comuna
mean_2015_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2015, FUN = mean, na.rm = TRUE)
setnames(mean_2015_comuna, colnames(mean_2015_comuna), c("sexo","oficio","comuna","2015"))
mean_2015_comuna$`2015` <- as.numeric(mean_2015_comuna$`2015`)
mean_2015_comuna$`2015` <- round(mean_2015_comuna$`2015`, 0)
mean_2015_comuna$`2015` <- as.numeric(mean_2015_comuna$`2015`)
mean_2015_comuna$`2015` <- round(mean_2015_comuna$`2015`, 0)

# Lower Bound for Median Wage by Gender by comuna
lb_median_2015_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2015, FUN = lb_median)
setnames(lb_median_2015_comuna, colnames(lb_median_2015_comuna), c("sexo","oficio","comuna","2015"))
lb_median_2015_comuna$`2015` <- as.numeric(lb_median_2015_comuna$`2015`)
lb_median_2015_comuna$`2015` <- round(lb_median_2015_comuna$`2015`, 0)
lb_median_2015_comuna$`2015` <- as.numeric(lb_median_2015_comuna$`2015`)
lb_median_2015_comuna$`2015` <- round(lb_median_2015_comuna$`2015`, 0)

# Upper Bound for Median Wage by Gender by comuna
ub_median_2015_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2015, FUN = ub_median)
setnames(ub_median_2015_comuna, colnames(ub_median_2015_comuna), c("sexo","oficio","comuna","2015"))
ub_median_2015_comuna$`2015` <- as.numeric(ub_median_2015_comuna$`2015`)
ub_median_2015_comuna$`2015` <- round(ub_median_2015_comuna$`2015`, 0)

# Lower Bound for Mean Wage by Gender by comuna
lb_mean_2015_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2015, FUN = lb_mean)
setnames(lb_mean_2015_comuna, colnames(lb_mean_2015_comuna), c("sexo","oficio","comuna","2015"))
lb_mean_2015_comuna$`2015` <- as.numeric(lb_mean_2015_comuna$`2015`)
lb_mean_2015_comuna$`2015` <- round(lb_mean_2015_comuna$`2015`, 0)

# Upper Bound for Mean Wage by Gender by comuna
ub_mean_2015_comuna <- aggregate(ingreso_ocup_principal ~ sexo + oficio + comuna, data = wage_by_gender_and_occupation_2015, FUN = ub_mean)
setnames(ub_mean_2015_comuna, colnames(ub_mean_2015_comuna), c("sexo","oficio","comuna","2015"))
ub_mean_2015_comuna$`2015` <- as.numeric(ub_mean_2015_comuna$`2015`)
ub_mean_2015_comuna$`2015` <- round(ub_mean_2015_comuna$`2015`, 0)
