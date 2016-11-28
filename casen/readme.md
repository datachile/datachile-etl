# README

OK hasta ahora final 1 link 100% real mega no fake

wage_by_gender_with_weights

1. I have divided the code in several files and folders to keep this simple :)

2. The relevant folders (at the moment) are:

* household_income
* household_income_with_weights
* wage_by_gender
* wage_by_gender_and_occupation
* wage_by_gender_and_branch

3. There is a master file named `do_all.R` inside each of the relevant folders named before. Those files will download and/or load datasets, process information and create a csv file named `relevant_topic/csv_final_files/relevant_topic_tidy_all.csv` that contains all the information at all levels with a column that shows if the row i^th refers to a region, provincia or comuna.

4. `do_all.R` will also create additional files that inside `relevant_topic/csv_final_files` and `relevant_topic/csv_intermediate_files` that are just subsets of `relevant_topic/csv_final_files/relevant_topic_tidy_all.csv` divided by geographical areas (`region`, `provincia` or `comuna`) and variable (`mean_income`, `median_income` or `gini_income`)

5. Inside each master file there are instructions in case you want to calculate, for example, the median by region ignoring any other level.

### `household_income_tidy_all.csv`'s structure

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

No. of observations: 4,080

### `household_income_with_weights_tidy_all.csv`'s structure

The same as before but the numbers change as I included weights for every statistic function.

### `wage_by_gender_tidy_all.csv`'s structure

| Index | Column ID        | Type   | Description                                                   |
| ----- | ---------------- | ------ | ------------------------------------------------------------- |
| 0     | geography_level  | Factor | Factor w/ 4 levels "comuna", "provincia", "region" and "pais" |
| 1     | geography_name   | Factor | Factor w/ 184 levels "Arica", "Antofagasta", ...              |
| 2     | geography_id     | Factor | Factor w/ 207 levels "1", "2", ... , "p11", "p21", "pais"     |
| 3     | year             | num    | from 1990 to 2015                                             |
| 4     | sexo             | Factor | Factor w/ 2 levels "Hombre", "Mujer"                          |
| 5     | mean_income      | num    | mean by geography_id                                          |
| 6     | median_income    | num    | median by geography_id                                        |
| 7     | ci_mean_income   | num    | confidence interval (via bootstrapping) for mean_income       |
| 8     | ci_median_income | num    | confidence interval (via bootstrapping) for median_income     |

No. of observations: 5,054

*Please notice how unanswered questions reduce the geographic areas in this file*

### `wage_by_gender_and_occupation_tidy_all.csv`'s structure

| Index | Column ID        | Type   | Description                                                   |
| ----- | ---------------- | ------ | ------------------------------------------------------------- |
| 0     | geography_level  | Factor | Factor w/ 4 levels "comuna", "provincia", "region" and "pais" |
| 1     | geography_name   | Factor | Factor w/ 184 levels "Arica", "Antofagasta", ...              |
| 2     | geography_id     | Factor | Factor w/ 207 levels "1", "2", ... , "p11", "p21", "pais"     |
| 3     | year             | num    | from 1990 to 2015                                             |
| 4     | sexo             | Factor | Factor w/ 2 levels "Hombre", "Mujer"                          |
| 5     | oficio           | Factor | Factor w/ 10 levels "Empleados de Oficina", ...               |
| 6     | mean_income      | num    | mean by geography_id                                          |
| 7     | median_income    | num    | median by geography_id                                        |
| 8     | ci_mean_income   | num    | confidence interval (via bootstrapping) for mean_income       |
| 9     | ci_median_income | num    | confidence interval (via bootstrapping) for median_income     |

No. of observations: 33,361

*Please notice how unanswered questions reduce the geographic areas in this file*

#### Explanation about `occupation` variable

`occupation` is very gross way to classify workers but that variable is a common ground for *any* CASEN survey applied between the years 1990 and 2015.

|Level|Label                                              |Label translation                                           |
|-----|---------------------------------------------------|------------------------------------------------------------|
|1    |Empleados de Oficina                               |Office workers                                              |
|2    |Fuerzas Armadas                                    |Armed forces                                                |
|3    |Miembros del Poder Ejecutivo y Cuerpos Legislativos|Members of the Executive Power and Legislative Bodies       |
|4    |Operadores y Montadores de Instalaciones y Máquinas|Plant and Machine Operators and Assemblers                  |
|5    |Profesionales, Científicos e Intelectuales         |Professionals, Scientists and Intellectuals                 |
|6    |Técnicos y Profesionales de Nivel Medio            |Technicians and Professionals in Middle Managerial Positions|
|7    |Trabajadores Agropecuarios y Pesqueros             |Agricultural and fishing workers                            |
|8    |Trabajadores de Artes Mecánicas y Otros            |Mechanical and Other Arts Workers                           |
|9    |Trabajadores de Servicios y Vendedores             |Service and Sales Workers                                   |
|10   |Trabajadores No Calificados                        |Unqualified Workers                                         |

### `wage_by_gender_and_branch_tidy_all.csv`'s structure

| Index | Column ID        | Type   | Description                                                   |
| ----- | ---------------- | ------ | ------------------------------------------------------------- |
| 0     | geography_level  | Factor | Factor w/ 4 levels "comuna", "provincia", "region" and "pais" |
| 1     | geography_name   | Factor | Factor w/ 356 levels "Arica", "Antofagasta", ...              |
| 2     | geography_id     | Factor | Factor w/ 375 levels "1", "2", ... , "p11", "p21", "pais"     |
| 3     | year             | num    | from 2011 to 2015                                             |
| 4     | sexo             | Factor | Factor w/ 2 levels "Hombre", "Mujer"                          |
| 5     | rama             | Factor | Factor w/ 17 levels "Actividades Inmobiliarias", ...          |
| 6     | mean_income      | num    | mean by geography_id                                          |
| 7     | median_income    | num    | median by geography_id                                        |
| 8     | ci_mean_income   | num    | confidence interval (via bootstrapping) for mean_income       |
| 9     | ci_median_income | num    | confidence interval (via bootstrapping) for median_income     |

No. of observations: 25,832

*Please notice how unanswered questions reduce the geographic areas in this file*

# Important note about `geography_id` variable

`geography_id` Contains values such as "p11" (means provincia 1 region 1), "p21" (means provincia 1 region 2), "pais" (country/national), etc. that are **not** a part of the original Data Chile codes. I've added them in that way to be able to include information about the country and provincias without disturbing other users. Provincias are important as "1 provincia = 1 congressman" and "3 provincias or more = 1 senator". The importance of provincias is not only political but also economical as a provincia is a geographical unit used in government's decision making,
