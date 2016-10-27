# README

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

## Files

The relevant file is **tidy_all.csv** any other file is an intermediate product. The rest of the csv files are more presentation/spreadsheet oriented.

### `tidy_all.csv`'s structure

<<<<<<< HEAD
| Index | Column ID       | Type   | Description                                      |
| ----- | --------------- | -----  | ------------------------------------------------ |
| 0     | geography_level | Factor | Factor w/ 3 levels "comuna","provincia","region" |
| 1     | geography_name  | Factor | Factor w/ 356 levels "Arica", "Antogasta", ...   |
| 2     | geography_id    | Factor | Factor w/ 401 levels "1", "2", ... , "p11"       |
| 3     | year            | num    | from 1990 to 2015                                |
| 4     | mean_income     | num    | mean by geography_id (contains NAs)              |
| 5     | median_income   | num    | median by geography_id (contains NAs)            |
| 6     | gini_income   | num    | normed [0-1] inequality parameter (contains NAs) |

Note: `geography_id` contains values such as "p11" (means provincia 1 region 1), "p21" (means provincia 1 region 2), etc. that are **not** a part of the original Data Chile codes. I've added them in that way to be able to include information about provincias without disturbing other users. Provincias are important as "1 provincia = 1 congressman" and "3 provincias or more = 1 senator". The importance of provincias is not only political but also economical as a provincia is a geographical unit used in government's decision making,

=======
| 0     | geography_level | Factor | Factor w/ 4 levels "comuna", "provincia", "region" and "pais" |
| 0     | geography_name  | Factor | Factor w/ 356 levels "Arica", "Antofagasta", ... |
| 0     | geography_id    | Factor | Factor w/ 375 levels "1", "2", ... , "p11", "p21", "pais" |
| 0     | year            | num    | from 1990 to 2015                                |
| 0     | mean_income     | num    | mean by geography_id (contains NAs)              |
| 0     | median_income   | num    | median by geography_id (contains NAs)            |
| 0     | median_income   | num    | normed [0-1] inequality parameter (contains NAs) |

Note: `geography_id` contains values such as "p11" (means provincia 1 region 1), "p21" (means provincia 1 region 2), "pais" (country/national), etc. that are **not** a part of the original Data Chile codes. I've added them in that way to be able to include information about the country and provincias without disturbing other users. Provincias are important as "1 provincia = 1 congressman" and "3 provincias or more = 1 senator". The importance of provincias is not only political but also economical as a provincia is a geographical unit used in government's decision making,
>>>>>>> pacha
