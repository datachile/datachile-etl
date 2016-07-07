# Economy datasets

## Customs

### Exports (`exports_1991_2015.csv`)

|  Index | Column ID         | Type   | Description                                                      |
| ------ | ----------------- | -----  | ---------------------------------------------------------------- |
|      0 | month             | number | month of record                                                  |
|      1 | year              | number | year of record                                                   |
|      2 | country_dest      | number | destination country                                              |
|      3 | rut_exportador    | number | tax id of exporter                                               |
|      4 | comuna_exportador | number | comuna of exporter (empty until Nov. 2001)                       |
|      5 | hs_6digits        | number | Classification of export (in *ad-hoc* Chilean HS classification) |
|      6 | q_traded          | number | quantity?                                                        |
|      7 | fob_us            | number | amount in current (non-adjusted) dollars                         |

### Imports (`imports_1991_2015.csv`)

|  Index | Column ID         | Type   | Description                                                               |
| ------ | ----------------- | -----  | ----------------------------------------------------------------          |
|      0 | month             | number | month of record                                                           |
|      1 | year              | number | year of record                                                            |
|      2 | country_ori       | number | origin country                                                            |
|      3 | rut_importador    | number | tax id of importer                                                        |
|      4 | comuna_exportador | number | comuna of importer (empty until may. 1999)                                |
|      5 | hs_6digits        | number | Classification of export (in *ad-hoc* Chilean HS classification)          |
|      6 | q_traded          | number | quantity?                                                                 |
|      7 | cif_us            | number | CIF (cost, insurance and fright) amount in current (non-adjusted) dollars |

## R&D Survey (`R&Survey for DataChile.csv`)

All monetary amounts are in current (non-adjusted) CLP

| Index | Column ID                                               | Type    | Description                                   |
| ----- | ------------------------------------------------------- | ----    | --------------------------------------------  |
|     0 | YEAR                                                    | numeric |                                               |
|     1 | ISIC rev 4                                              | alpha   | See dictionary in `Variables R&D Survey.docx` |
|     2 | REGION                                                  | numeric | See dictionary in `Variables R&D Survey.docx` |
|     3 | UNIT                                                    | numeric | 1:State, 2:University, 3:NGO, 4:Firm          |
|     4 | Total R&D intramural expenditure (millions pesos)       | numeric |                                               |
|     5 | Basic Research expenditure (millions pesos)             | numeric |                                               |
|     6 | Applied Research expenditure (millions pesos)           | numeric |                                               |
|     7 | Experimental Development expenditure (millions pesos)   | numeric |                                               |
|     8 | Natural Science expenditure (millions pesos)            | numeric |                                               |
|     9 | Engineering and Technology expenditure (millions pesos) | numeric |                                               |
|    10 | Medical and Helth sciences expenditure (millions pesos) | numeric |                                               |
|    11 | Agricultural Sciences expenditure (millions pesos)      | numeric |                                               |
|    12 | Social Sciences expenditure (millions pesos)            | numeric |                                               |
|    13 | Humanities expenditure (millions pesos)                 | numeric |                                               |
|    14 | Total R&D Personnel  in FTE                             | numeric |                                               |
|    15 | Woman R&D Personnel  in FTE                             | numeric |                                               |
|    16 | PhD R&D Personnel                                       | numeric |                                               |
|    17 | Master R&D Personnel                                    | numeric |                                               |
|    18 | Undergraduates R&D Personnel                            | numeric |                                               |
|    19 | technicians R&D Personnel                               | numeric |                                               |
|    20 | Other R&D Personnel                                     | numeric |                                               |

## Tax office (`Taxdata 14 april`)

| Index | Column ID     | Type    | Description                                                          |
| ----- | ------------  | ----    | -------------------------------------------------------------------- |
|     0 | year          | numeric |                                                                      |
|     1 | cdigo_comuna  | alpha   | Comuna Code (detailed in the comuna master list)                     |
|     2 | ciuu4_ori     | numeric | ISIC rev 4                                                           |
|     3 | output        | numeric | Sales in current pesos of each year                                  |
|     4 | labour        | numeric | Number of employess                                                  |
|     5 | labour_cost   | numeric | Labor costs in current pesos of each year                            |
|     6 | investment    | numeric | Investment in current pesos of each year                             |
|     7 | intermediates | numeric | Intermediates goods used in production in current pesos of each year |
