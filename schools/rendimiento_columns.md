## Columns

| Index | Column ID  | Type          | Description |
| -----------| -----------|-------------- | -----------|
| 0 | AGNO   | number      |Year processed|
| 1 | RBD   | number      |Role based on establishment data|
| 2 | DGV_RBD   | number      |Digit verifier of RBD|
| 3 | NOM_RBD   | string      |Name of establishment|
| 4 | LET_RBD   | string    |Letter establishment|
| 5 | NUM_RBD   | number      |Number of establishment|
| 6 | COD_REG_RBD   | number      |Area Code of establishment|
| 7 | COD_COM_RBD   | number      |Official Commune Code of establishment|
| 8 | NOM_COM_RBD   | string      |Name of commune|
| 9 | COD_DEPE  | number      |Administrative Unit: 1: Municipal Corporation, 2: Municipal DAEM, 3: Particular Subsidized, 4: Particular Paid, 5: Delegate Management Corporation |
| 10 | RURAL_RBD   | number      |Geographic Code of establishment: 0: Urban, 1: Rural |
| 11 | COD_ENSE  | number      |Type of education (see [attached-I](attached-I))|
| 12 | COD_GRADO  | number      |Grade (see [attached-II](attached-II))|
| 13 | LET_CUR  | string      |Course Letter|
| 14 | MRUN2  | number     |Student ID (mask RUN)|
| 15 | GEN_ALU  | number      |Gender: 1: Male, 2: Female|
| 16 | FEC_NAC_ALU | number      |DOB (yyyymmdd)|
| 17 | INT_ALU | number      |Indicator of integrated student: 0: No, 1: Yes|
| 18 | COD_COM_ALU | number      |Official commune Code of student residence|
| 19 | NOM_COM_ALU | string     |Name of commune of student residence|
| 20 | COD_SEC | number     |Economic Sector (See [attached-III](attached-III))|
| 21 | COD_ESPE | number    |Specialty (See [attached-III](attached-III))|
| 22 | PROM_GRAL | number     |Annual general average|
| 23 | ASISTENCIA| number    |Annual attendance rate|
| 24 | SIT_FIN| string    |Promotion situation at the end of the school year: P: Promoted, R: Failed, Y: Retired|
| 25 | SIT_FIN_R| string   |Promotion situation at the end of the school year, with indication of transfers: P: Promoted, R: Failed, Y: Retired, T: Transferred|

# attached-I

| Code          | Description |
|-------------- | ----------- |
| 10 | Preschool education |
| 110 | Basic education |
| 160 | Common Adult Basic Education (Decree 584/2007) |
| 161 | Special Adult Basic Education |
| 163 | Jails Schools (Adult Basic) |
| 165 | Adult Basic Education Without Crafts (Decree 584/2007) |
| 167 | Adult Basic Education with Offices (Decree 584/2007 and 999/2009) |
| 211 | Special Education Hearing Impaired |
| 212 | Special Education Intellectual Disability |
| 213 | Visual Disabilities Special Education |
| 214 | Special education Specific Language Disorders |
| 215 | Special Education motor disabilities |
| 216 | Special Education Autism |
| 217 | Special Education Disability Severe disturbances in Capacity for Relationship and Communication |
| 299 | Option 4 School Integration Program |
| 310 | H-C High School youth |
| 360 | Media Education H-C adult evening and night (Decree No. 190/1975) |
| 361 | Media adult education H-C (Decree No. 12/1987) |
| 362 | Jails Schools (Media Adults) |
| 363 | Media Adult Education H-C (Decree No. 1000/2009) |
| 410 | High School T-P Commercial Youth |
| 460 | Media Education T-P Commercial Adults (Decree No. 152/1989) |
| 461 | Media Education T-P Commercial Adults (Decree No. 152/1989) |
| 463 | Media Education T-P Commercial Adults (Decree No. 1000/2009) |
| 510 | High School T-P Industrial Youth |
| 560 | Media Education T-P Industrial Adults (Decree No. 152/1989) |
| 561 | Media Education T-P Industrial Adults (Decree No. 152/1989) |
| 563 | Media Education T-P Industrial Adults (Decree No. 1000/2009) |
| 610 | High School T-P Technical Youth |
| 660 | Media Education T-P Technical Adults (Decree No. 152/1989) |
| 661 | Media Education T-P Technical Adults (Decree No. 152/1989) |
| 663 | Media Education T-P Technical Adults (Decree No. 1000/2009) |
| 710 | High School T-P Agricultural Youth |
| 760 | Media Education T-P Agricultural Adults (Decree No. 152/1989) |
| 761 | Media Education T-P Agricultural Adults (Decree No. 152/1989) |
| 763 | Media Education T-P Agricultural Adults (Decree No. 1000/2009) |
| 810 | Teaching Youth Media TP Maritime |
| 860 | TP Maritime Secondary Education Adults (Decree ° 152/1989) |
| 861 | EnseñanzaMediaT-PMarítimaAdultos(DecretoN°152/1989) |
| 863 | TP Maritime Secondary Education Adults (Decree ° 1000/2009) |
| 910 | Youth Secondary Education Artistic |
| 963 | Adult Secondary Education Artistic |


# attached-II

| COD_ENSE | COD_GRADO | Official name of grade |
| -------- | --------- | ---------------------- |
| 110 | 1 | 1st Basic | 
| 110 | 2 | 2nd Basic | 
| 110 | 3 | 3rd Basic | 
| 110 | 4 | 4th Basic | 
| 110 | 5 | 5th Basic | 
| 110 | 6 | 6th Basic | 
| 110 | 7 | 7th Basic | 
| 110 | 8 | 8th Basic | 
| 160 | 1 | Literacy |
| 160 | 2 | Elementary 1 (1st to 4th) | 
| 160 | 3 | Elementary 2 (5th to 6th) | 
| 160 | 4 | Elementary 3 (7th to 8th) | 
| 160 | 5 | Technical Level | 
| 161 | 1 | Literacy | 
| 161 | 2 | Elementary 1 (1st to 4th) | 
| 161 | 3 | Elementary 2 (5th to 6th) | 
| 161 | 4 | Elementary 3 (7th to 8th) | 
| 161 | 5 | Technical Level | 
| 163 | 1 | Literacy | 
| 163 | 2 | Elementary 1 (1st to 4th) | 
| 163 | 3 | Elementary 2 (5th to 6th) | 
| 163 | 4 | Elementary 3 (7th to 8th) | 
| 163 | 5 | Technical Level | 
| 165 | 1 | Elementary 1 (1st to 4th) | 
| 165 | 2 | Elementary 2 (5th to 6th) | 
| 165 | 3 | Elementary 3 (7th to 8th) | 
| 167 | 4 | Elementary 2 (5th to 6th) | 
| 167 | 5 | Elementary 3 (7th to 8th) | 
| 310 | 1 | 1st middle | 
| 310 | 2 | 2nd middle | 
| 310 | 3 | 3rd middle | 
| 310 | 4 | 4th middle | 
| 360 | 1 | 1st middle |
| 360 | 2 | 2nd middle |
| 360 | 3 | 3rd middle |
| 360 | 4 | 4th middle |
| 361 | 1 | First cycle (1st and 2nd middle) | 
| 361 | 3 | Second Cycle (3rd and 4th middle) | 
| 363 | 1 | First level (1st and 2nd middle) | 
| 363 | 3 | Second level (3rd and 4th middle) | 
| 410 | 1 | 1st middle | 
| 410 | 2 | 2nd middle | 
| 410 | 3 | 3rd middle | 
| 410 | 4 | 4th middle | 
| 460 | 1 | First cycle (1st and 2nd middle) | 
| 460 | 3 | 3rd middle | 
| 460 | 4 | 4th middle | 
| 461 | 1 | First cycle (1st and 2nd middle) | 
| 461 | 3 | 3rd middle | 
| 461 | 4 | 4th middle | 
| 463 | 1 | First level (1st and 2nd middle) | 
| 463 | 3 | Second level (3rd middle) |
| 463 | 4 | Third level (4th middle) |
| 510 | 1 | 1st middle |
| 510 | 2 | 2nd middle |
| 510 | 3 | 3rd middle |
| 510 | 4 | 4th middle |
| 560 | 1 | First cycle (1st and 2nd middle) |
| 560 | 3 | 3rd middle |
| 560 | 4 | 4th middle |
| 561 | 1 | First cycle (1st and 2nd middle) |
| 561 | 3 | 3rd middle |
| 561 | 4 | 4th middle |
| 563 | 1 | First level (1st and 2nd middle) |
| 563 | 3 | Second level (3rd middle) |
| 563 | 4 | Third level (4th middle) |
| 610 | 1 | 1st middle |
| 610 | 2 | 2nd middle |
| 610 | 3 | 3rd middle |
| 610 | 4 | 4th middle |
| 660 | 1 | First cycle (1st and 2nd middle) |
| 660 | 2 | 3rd middle |
| 660 | 4 | 4th middle |
| 661 | 1 | First cycle (1st and 2nd middle) |
| 661 | 3 | 3rd and middle |
| 661 | 4 | 4th and middle |
| 663 | 1 | First level (1st and 2nd middle) |
| 663 | 3 | Second level (3rd middle) |
| 663 | 4 | Third level (4th middle) |
| 710 | 1 | 1st middle |
| 710 | 2 | 2nd middle |
| 710 | 3 | 3rd middle |
| 710 | 4 | 4th middle |
| 760 | 1 | First cycle (1st and 2nd middle) |
| 760 | 3 | 3rd middle |
| 760 | 4 | 4th middle |
| 761 | 1 | First cycle (1st and 2nd middle) |
| 761 | 3 | 3rd middle |
| 761 | 4 | 4th middle |
| 763 | 1 | First level (1st and 2nd middle) |
| 763 | 3 | Second level (3rd middle) |
| 763 | 4 | Third level (4th middle) |
| 810 | 1 | 1st middle |
| 810 | 2 | 2nd middle |
| 810 | 3 | 3rd middle |
| 810 | 4 | 4th middle |
| 860 | 1 | First cycle (1st and 2nd middle) |
| 860 | 3 | 3rd middle |
| 860 | 4 | 3rd middle |
| 861 | 1 | First cycle (1st and 2nd middle) |
| 861 | 3 | 3rd middle |
| 861 | 4 | 3rd middle |
| 863 | 1 | First level (1st and 2nd middle) |
| 863 | 3 | Second level (3rd middle) |
| 863 | 4 | Third level (4th middle) |
| 910 | 1 | 1st middle |
| 910 | 2 | 2nd middle |
| 910 | 3 | 3rd middle |
| 910 | 4 | 4th middle |
| 963 | 3 | Second level (3rd middle) |
| 963 | 4 | Third level (4th middle) |


# attached-III
| Code | Description | Code | Description |
| -----------| -----------|-------------- | -----------|
| 410  | Administration and Commerce | 41001 | Administration |
| 410  | Administration and Commerce | 41002 | Accounting |
| 410  | Administration and Commerce | 41003 | Secretary |
| 410  | Administration and Commerce | 41004 | Sales |
| 510  | Construction | 51001 | Buildings |
| 510  | Construction | 51002 | Construction completions |
| 510  | Construction | 51003 | Industrial assembly |
| 510  | Construction | 51004 | Road and Infrastructure Work |
| 510  | Construction | 51005 | Sanitary |
| 510  | Construction | 51006 | Refrigeration and air conditioning |
| 520  | Metal Worker | 52008 | Industrial mechanics |
| 520  | Metal Worker | 52009 | Metal constructions |
| 520  | Metal Worker | 52010 | Mechanics |
| 520  | Metal Worker | 52011 | Moulding |
| 520  | Metal Worker | 52012 | Aircraft maintenance |
| 530  | Electrician | 53014 | Electricity |
| 530  | Electrician | 53015 | Electronics |
| 530  | Electrician | 53016 | Telecommunications |
| 540  | Miner | 54018 | Mining |
| 540  | Miner | 54019 | extractive metallurgy |
| 540  | Miner | 54020 | Assistance in geology |
| 550  | Graphic | 55022 | Graphics |
| 550  | Graphic | 55023 | Technical Drawing |
| 560  | Chemical | 56025 | Chemical plant operation |
| 560  | Chemical | 56026 | Chemical lab |
| 570  | Making | 57028 | Fabric |
| 570  | Making | 57029 | Textile |
| 570  | Making | 57030 | Clothing and Textiles |
| 570  | Making | 57031 | Leather Products |
| 610  | Feeding | 61001 | Industrial food processing |
| 610  | Feeding | 61002 | Collective food service |
| 620  | Social programs and projects | 62004 | Nursery Care |
| 620  | Social programs and projects | 62005 | Eldercare |
| 620  | Social programs and projects | 62006 | Care for Sick |
| 620  | Social programs and projects | 62007 | Social and recreational care |
| 630  | Hotels and Tourism | 63009 | Tourism Service  |
| 630  | Hotels and Tourism | 63010 | Hospitality |
| 710  | Lumberjack | 71001 | Forest |
| 710  | Lumberjack | 71002 | Woodworking |
| 710  | Lumberjack  | 71003 | Wood products |
| 710  | Lumberjack  | 71004 | Pulp and paper |
| 720  | Agricultural | 72006 | Agricultural |
| 810  | Maritime | 81001 | Merchant and special ships |
| 810  | Maritime | 81002 | Fishery |
| 810  | Maritime | 81003 | Aquaculture |
| 810  | Maritime | 81004 | Port Operation |
| 910  | Visual arts  | 91001 | Visual Arts |
| 910  | Visual arts | 91002 | Audio Visual |
| 910  | Visual arts | 91003 | Design |
| 920  | Performing Arts Theatre | 92004 | Theatrical Perfromance |
| 920  | Performing Arts Theatre | 92005 | Scenic Design |
| 930  | Performing Arts Dance | 93006 | Interpretation in Dance Intermediate |
| 930  | Performing Arts Dance | 93007 | Monitoring in Dance |
| 940  | Musical Arts | 94007 | Music Performance |
| 940  | Musical Arts | 94008 | Musical Composition |
| 940  | Musical Arts | 93009 | Music Appreciation |


 