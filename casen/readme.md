# README

1. I have divided the code in several files and folders to keep this simple :)

2. The relevant folders (at the moment) are:

* household_income_with_weights
* wage_by_gender_with_weights

tomorrow's morning I'll have completed and checked

* wage_by_gender_and_branch_with_weights
* wage_by_gender_and_occupation_with_weights

3. There is a master file named `do_all_relevant_topic.R` inside each of the relevant folders named before. Those files will download and/or load datasets, process information and create a csv file named `relevant_topic/csv_final_files/relevant_topic_tidy_all.csv` that contains all the information at all levels with a column that shows if the row i^th refers to a region, provincia or comuna.

4. `do_all_relevant_topic.R` will also create additional files that inside `relevant_topic/csv_final_files` and `relevant_topic/csv_intermediate_files` that are just subsets of `relevant_topic/csv_final_files/relevant_topic_tidy_all.csv` divided by geographical areas (`pais`, `region`, `provincia` or `comuna`) and variable (`mean_income`, `median_income` or `gini_income`)

### `household_income_with_weights_tidy_all.csv`'s structure

| Index | Column ID                 | Type   | Description                                                        |
| ----- | ------------------------- | ------ | ------------------------------------------------------------------ |
| 0     | geography_level           | factor | Factor w/ 4 levels "comuna", "provincia", "region" and "pais"      |
| 1     | geography_name            | factor | Factor w/ 369 levels "Arica", "Antofagasta", ...                   |
| 2     | geography_id              | factor | Factor w/ 390 levels "1", "2", ... , "p11", "p21", "pais"          |
| 3     | year                      | num    | From 1990 to 2015                                                  |
| 4     | weighted_mean_income      | num    | Mean by geography_id                                               |
| 5     | weighted_median_income    | num    | Median by geography_id                                             |
| 6     | weighted_gini_income      | num    | Normed [0-1] inequality parameter                                  |
| 7     | ci_weighted_mean_income   | num    | Confidence interval (via bootstrapping) for weighted_mean_income   |
| 8     | ci_weighted_median_income | num    | Confidence interval (via bootstrapping) for weighted_median_income |
| 9     | ci_weighted_gini_income   | num    | Confidence interval (via bootstrapping) for weighted_gini_income   |

No. of observations: 4,122

### `wage_by_gender_with_weights_tidy_all.csv`'s structure

| Index | Column ID                 | Type   | Description                                                        |
| ----- | ------------------------- | ------ | ------------------------------------------------------------------ |
| 0     | geography_level           | factor | Factor w/ 4 levels "comuna", "provincia", "region" and "pais"      |
| 1     | geography_name            | factor | Factor w/ 184 levels "Arica", "Antofagasta", ...                   |
| 2     | geography_id              | factor | Factor w/ 207 levels "1", "2", ... , "p11", "p21", "pais"          |
| 3     | year                      | num    | From 1990 to 2015                                                  |
| 4     | sex                       | factor | Factor w/ 2 levels "Hombre", "Mujer"                               |
| 5     | weighted_mean_income      | num    | Mean by geography_id                                               |
| 6     | weighted_median_income    | num    | Median by geography_id                                             |
| 7     | ci_weighted_mean_income   | num    | confidence interval (via bootstrapping) for weighted_mean_income   |
| 8     | ci_weighted_median_income | num    | confidence interval (via bootstrapping) for weighted_median_income |

No. of observations: 5,054

# Important note about `geography_id` variable

`geography_id` Contains values such as "p11" (means provincia 1 region 1), "p21" (means provincia 1 region 2), "pais" (country/national), etc. that are **not** a part of the original Data Chile codes. I've added them in that way to be able to include information about the country and provincias without disturbing other users. Provincias are important as "1 provincia = 1 congressman" and "3 provincias or more = 1 senator". The importance of provincias is not only political but also economical as a provincia is a geographical unit used in government's decision making,
