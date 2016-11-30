########
# 2011 #
########

# Median Wage by Gender by region
weighted_median_2011_region <- ddply(wage_by_gender_and_branch_with_weights_2011, .(sex,branch,region), summarise, FUN = matrixStats::weightedMedian(individual_income, w = exp_region, na.rm = TRUE))
setnames(weighted_median_2011_region, colnames(weighted_median_2011_region), c("sex","branch","region","2011"))
#weighted_median_2011_region <- insert_row(weighted_median_2011_region, c("Pa\u00eds", median(wage_by_gender_and_branch_with_weights_2011$individual_income, na.rm = TRUE)), nrow(weighted_median_2011_region)+1)
weighted_median_2011_region$`2011` <- as.numeric(weighted_median_2011_region$`2011`)
weighted_median_2011_region$`2011` <- round(weighted_median_2011_region$`2011`, 0)
weighted_median_2011_region$`2011` <- as.numeric(weighted_median_2011_region$`2011`)
weighted_median_2011_region$`2011` <- round(weighted_median_2011_region$`2011`, 0)

# Average Wage by Gender by region
weighted_mean_2011_region <- ddply(wage_by_gender_and_branch_with_weights_2011, .(sex,branch,region), summarise, FUN = matrixStats::weightedMean(individual_income, w = exp_region, na.rm = TRUE))
setnames(weighted_mean_2011_region, colnames(weighted_mean_2011_region), c("sex","branch","region","2011"))
weighted_mean_2011_region$`2011` <- as.numeric(weighted_mean_2011_region$`2011`)
weighted_mean_2011_region$`2011` <- round(weighted_mean_2011_region$`2011`, 0)
weighted_mean_2011_region$`2011` <- as.numeric(weighted_mean_2011_region$`2011`)
weighted_mean_2011_region$`2011` <- round(weighted_mean_2011_region$`2011`, 0)

# Lower Bound for Median Wage by Gender by region
lb_weighted_median_2011_region <- ddply(wage_by_gender_and_branch_with_weights_2011, .(sex,branch,region), summarise, FUN = lb_weighted_median_plyr(individual_income, exp_region))
setnames(lb_weighted_median_2011_region, colnames(lb_weighted_median_2011_region), c("sex","branch","region","2011"))
lb_weighted_median_2011_region$`2011` <- as.numeric(lb_weighted_median_2011_region$`2011`)
lb_weighted_median_2011_region$`2011` <- round(lb_weighted_median_2011_region$`2011`, 0)
lb_weighted_median_2011_region$`2011` <- as.numeric(lb_weighted_median_2011_region$`2011`)
lb_weighted_median_2011_region$`2011` <- round(lb_weighted_median_2011_region$`2011`, 0)

# Upper Bound for Median Wage by Gender by region
ub_weighted_median_2011_region <- ddply(wage_by_gender_and_branch_with_weights_2011, .(sex,branch,region), summarise, FUN = ub_weighted_median_plyr(individual_income, exp_region))
setnames(ub_weighted_median_2011_region, colnames(ub_weighted_median_2011_region), c("sex","branch","region","2011"))
ub_weighted_median_2011_region$`2011` <- as.numeric(ub_weighted_median_2011_region$`2011`)
ub_weighted_median_2011_region$`2011` <- round(ub_weighted_median_2011_region$`2011`, 0)

# Lower Bound for Mean Wage by Gender by region
lb_weighted_mean_2011_region <- ddply(wage_by_gender_and_branch_with_weights_2011, .(sex,branch,region), summarise, FUN = lb_weighted_mean_plyr(individual_income, exp_region))
setnames(lb_weighted_mean_2011_region, colnames(lb_weighted_mean_2011_region), c("sex","branch","region","2011"))
lb_weighted_mean_2011_region$`2011` <- as.numeric(lb_weighted_mean_2011_region$`2011`)
lb_weighted_mean_2011_region$`2011` <- round(lb_weighted_mean_2011_region$`2011`, 0)

# Upper Bound for Mean Wage by Gender by region
ub_weighted_mean_2011_region <- ddply(wage_by_gender_and_branch_with_weights_2011, .(sex,branch,region), summarise, FUN = ub_weighted_mean_plyr(individual_income, exp_region))
setnames(ub_weighted_mean_2011_region, colnames(ub_weighted_mean_2011_region), c("sex","branch","region","2011"))
ub_weighted_mean_2011_region$`2011` <- as.numeric(ub_weighted_mean_2011_region$`2011`)
ub_weighted_mean_2011_region$`2011` <- round(ub_weighted_mean_2011_region$`2011`, 0)
