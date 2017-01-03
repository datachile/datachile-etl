# README

1. I have divided the code in several files and folders to keep this simple :)

2. The relevant folders (at the moment) are:

* describe_dataset
* household_income

Please see the file I did upload to [Google Drive](https://docs.google.com/spreadsheets/d/11fB0WbMgJNEiFmc7Rw8yZPMIhEdbXBBBIXhCpQP3XlA/edit#gid=1236419237) to see the variables' description.

3. If you want to re run the code, the master file is `household_income/0_do_all_household_income.R` that will every other script.

# Mean/Median household income and Gini

The file `household_income/10_csv_final_files/household_income_tidy_all.csv` centralizes everything. The other files in `household_income/10_csv_final_files` are division of that file at different geographical levels (comuna, provincia, región and country)

The columns in this file are:

* geography_level (comuna, provincia, región and country)
* geography_name (Alhué, Andacollo, Angol, Antofagasta, etc)
* geography_id (1,2,3,...,n for regions and comunas and  p11, p12,...,pmn for provincias)
* year (1990 to 2015)
* weighted_mean_income (in CLP)
* weighted_median_income (in CLP)
* weighted_gini_income  (0-1 normed value)
* ci_weighted_mean_income (confidence interval for weighted_mean_income)
* ci_weighted_median_income (confidence interval for weighted_median_income)
* ci_weighted_gini_income (confidence interval for weighted_gini_income)

In total this has 4122 rows.

# Important note about `geography_id` variable

`geography_id` Contains values such as "p11" (means provincia 1 region 1), "p21" (means provincia 1 region 2), "pais" (country/national), etc. that are **not** a part of the original Data Chile codes. I've added them in that way to be able to include information about the country and provincias without disturbing other users. Provincias are important as "1 provincia = 1 congressman" and "3 provincias or more = 1 senator". The importance of provincias is not only political but also economical as a provincia is a geographical unit used in government's decision making,
