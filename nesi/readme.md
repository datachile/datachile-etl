# README

1. I have divided the code in several files and folders to keep this simple :)

2. The relevant folders (at the moment) are:

* describe_dataset
* labour_situation

Please see the file I did upload to [Google Drive](https://docs.google.com/spreadsheets/d/1s77lG7gZEqLmryIo1BptxR-VxeHtAcDqeu-kOKX2kWQ/edit#gid=0) to see the variables' description.

3. If you want to re run the code, the master file is `labour_situation/0_do_all_labour_situation.R` that will every other script.

# Mean/Median individuals

The file `labour_situation/6_csv_final_files/sex.csv` is the less informative. The other files in `household_income/6_csv_final_files` are refinements to this.

The columns in this file are:

* geography_level (comuna, provincia, región and country)
* geography_name (Alhué, Andacollo, Angol, Antofagasta, etc)
* geography_id (1,2,3,...,n for regions and comunas and  p11, p12,...,pmn for provincias)
* sex (hombre o mujer / male or female)
* year (2010 to 2015)
* weighted_mean_income (in CLP)
* weighted_median_income (in CLP)
* ci_weighted_mean_income (confidence interval for weighted_mean_income)
* ci_weighted_median_income (confidence interval for weighted_median_income)

In total this has 4122 rows.

The other files contain subdivisions such as

* ICSE (International Classification by Status in Employment by ILO)
* ISCED (International Standard Classification of Education by UNESCO)
* ISCO (International Standard Classification of Occupations by ILO)
* ISIC (International Standard Industrial Classification by UN)
* Workday (part-time or full-time)
* Company size (less than 5 workers, 5 to 10, 11 to 49, 50 to 199, more than 200)

# Important note about `geography_id` variable

`geography_id` Contains values such as "p11" (means provincia 1 region 1), "p21" (means provincia 1 region 2), "pais" (country/national), etc. that are **not** a part of the original Data Chile codes. I've added them in that way to be able to include information about the country and provincias without disturbing other users. Provincias are important as "1 provincia = 1 congressman" and "3 provincias or more = 1 senator". The importance of provincias is not only political but also economical as a provincia is a geographical unit used in government's decision making,
