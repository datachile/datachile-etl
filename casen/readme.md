# README

1. I have divided the code in several files and folders to keep this simple :)

2. The relevant folder are:

* household_income
* wage_by_gender

2. There is a master file named `do_all.R` inside each of the relevant folders named before. Those files will download and/or load datasets, process information and create a csv file named `relevant_topic/relevant_topic_tidy_all.csv` that contains all the information at all levels with a column that shows if the row i^th refers to a region, provincia or comuna. 

3. Inside each file there are instructions in case you want to calculate, for example, the median by region ignoring any other level.

### `household_income/tidy_all.csv`'s structure

| Index | Column ID        | Type   | Description                                                   |
| ----- | ---------------- | ------ | ------------------------------------------------------------- |
| 0     | geography_level  | Factor | Factor w/ 4 levels "comuna", "provincia", "region" and "pais" |
| 1     | geography_name   | Factor | Factor w/ 356 levels "Arica", "Antofagasta", ...              |
| 2     | geography_id     | Factor | Factor w/ 375 levels "1", "2", ... , "p11", "p21", "pais"     |
| 3     | year             | num    | from 1990 to 2015                                             |
| 4     | mean_income      | num    | mean by geography_id                                          |
| 5     | median_income    | num    | median by geography_id                                        |
| 6     | gini_income      | num    | normed [0-1] inequality parameter                             |
| 7     | ci_mean_income   | num    | confidence interval (via bootstrapping) for mean_income       |
| 8     | ci_median_income | num    | confidence interval (via bootstrapping) for median_income     |
| 9     | ci_gini_income   | num    | confidence interval (via bootstrapping) for gini_income       |

### `wage_by_gender/tidy_all.csv`'s structure

**to be done**

Note: `geography_id` contains values such as "p11" (means provincia 1 region 1), "p21" (means provincia 1 region 2), "pais" (country/national), etc. that are **not** a part of the original Data Chile codes. I've added them in that way to be able to include information about the country and provincias without disturbing other users. Provincias are important as "1 provincia = 1 congressman" and "3 provincias or more = 1 senator". The importance of provincias is not only political but also economical as a provincia is a geographical unit used in government's decision making,
