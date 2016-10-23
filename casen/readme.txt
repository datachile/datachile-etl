##########
# README #
##########

1. I have divided the code in several files to keep this simple :)

2. There is a master file named "do_all.R". This file will download and/or load datasets,
process information and create a csv file named "tidy_all.csv" that contains all the
information at all levels with a column that shows if the row i^th refers to a region,
provincia or comuna. This file also calls the files "household_tables_xxx.R"
(read item 3 for more information about the separated levels files)

3. The files "household_tables_xxx.R" (xxx can be "region", "provincia" or "comuna") will
download and/or load datasets, process information and create csv files named
"tidy_all_region.csv", "tidy_all_provincia.csv" and "tidy_comuna.csv". Those files are
separated at levels and include a final pa\u00eds's row (country's row) that is a measure
considering all the entities at the indicated level (i.e. is not an average of averages!).
You can run, for example, "household_tables_region.R" if you are not interested in other
levels.

4. The file "tidy_all.csv" follows the tidy structure discussed here:
https://github.com/Datawheel/datachile-etl/pull/11. As Manual asked, the format is

tidy_all.csv
  * geography_id
  * geography_name
  * geography_level
  * year
  * mean_income
  * median_income
  * gini_income.

The rest of the csv files are more presentation/spreadsheet oriented.
