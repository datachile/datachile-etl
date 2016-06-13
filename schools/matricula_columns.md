## Columns
| Index | Column ID  | Type          | Description |
| -----------| -----------|-------------- | ----------- |
| 0 | AGNO       | number      | School Year |
| 1 | RBD        | number      | Role based on establishment data|
| 2 | DGV_RBD        | number      | Associate Digit Verifier to the RBD of the establishment|
| 3 | NOM_RBD        | string     | Name of establishment|
| 4 | LET_RBD        | string      | Letter of establishment|
| 5 | NUM_RBD        | number     | Number of establishment|
| 6 | COD_REG_RBD        | number      | Area Code of establishment|
| 7 | COD_PRO_RBD        | number      | Province Code of establishment|
| 8 | COD_COM_RBD        | number      | Official commune Code of establishment|
| 9 | NOM_COM_RBD        | string      | Name of commune of establishment|
| 10 | COD_DEPE        | number      | Annex code of the establishment: 1: Municipal Corporation, 2: Municipal DAEM, 3: Particular Subsidized, 4: Particular paid (or unsubsidized), 5: Delegate Management Corporation (DL 3166)|
| 11 | COD_DEPE2        | number      | Annex code of the establishment (grouped): 1: Municipal, 2: Particular Subsidized, 3: Particular paid (or unsubsidized), 4: Delegate Management Corporation (DL 3166)|
| 12 | RURAL_RBD      | number      | Rurality Index (0: Urban, 1: Rural)|
| 13 | COD_ENSE      | number      | Education code ([attached-1](#attached-1))|
| 14 | COD_ENSE2      | number      | Education levels to calculate coverage of preschool education ([attached-2](#attached-2))|
| 15 | COD_ENSE3      | number      | Education levels with special education reallocated ([attached-3](#attached-3))|
| 16 | COD_GRADO      | number      | Grade code ([attached-8](#attached-8))|
| 17 | COD_GRADO2      | number      | Grades recoded to calculate coverage of Preschool Education ([attached-8](#attached-8))|
| 18 | LET_CUR        | string      | Course Letter|
| 19 | COD_JOR     | number      | Time class is attended: 1: Morning, 2: Afternoon, 3: Morning and Afternoon, 4: Evening/Night, 99: No information|
| 20 | COD_TIP_CUR    | number      | Index type of course 99: No information|
| 21 | MRUN    | number      | Student ID|
| 22 | GEN_ALU   | number      |Student Gender 1: Male, 2: Female|
| 23 | FEC_NAC_ALU   | number      |Student DOB (yyyymmdd)|
| 24 | EDAD_ALU   | number      |Student age on June 30 of corresponding school year|
| 25 | REPITE_ALU   | number      |Indicates whether the student is repeating (self-declared) 0: Not repeating, 1: Repeating|
| 26 | GD_ALU   | number      |Indicates whether student attends a differential group: 0: Does not attend, 1: Attends|
| 27 | COD_REG_ALU   | number      |Area code of students residence. 0: No information|
| 28 | COD_COM_ALU   | number      |Official code comuna of residence (self-declared and voluntary). 0: No information|
| 29 | NOM_COM_ALU   | string      |Name of the comuna of residence|
| 30 | COD_SEC   | number      |Economic sector code (only half technical-professional and artistic) ([attached-5](#attached-5))|
| 31 | COD_ESPE   | number      |Specialty code (technical-professional and artistic media only) ([attached-6](#attached-6))|
| 32 | COD_RAMA   | number      |Branch code (technical-professional and artistic media only) ([attached-4](#attached-4))|
| 33 | ENS   | number      |Recoding Education Code in 13 levels. ([attached-9](#attached-9))|


# attached-1
| COD_ENSE      | Description |
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
| 310 | H-C High School children and youth |
| 360 | Media Education H-C adult evening and night (Decree No. 190/1975) |
| 361 | Media adult education H-C (Decree No. 12/1987) |
| 362 | Jails Schools (Media Adults) |
| 363 | Media Adult Education H-C (Decree No. 1000/2009) |
| 410 | High School T-P Commercial Children and Youth |
| 460 | Media Education T-P Commercial Adults (Decree No. 152/1989) |
| 461 | Media Education T-P Commercial Adults (Decree No. 152/1989) |
| 463 | Media Education T-P Commercial Adults (Decree No. 1000/2009) |
| 510 | High School T-P Industrial Children and Youth |
| 560 | Media Education T-P Industrial Adults (Decree No. 152/1989) |
| 561 | Media Education T-P Industrial Adults (Decree No. 152/1989) |
| 563 | Media Education T-P Industrial Adults (Decree No. 1000/2009) |
| 610 | High School T-P Technical Children and Youth |
| 660 | Media Education T-P Technical Adults (Decree No. 152/1989) |
| 661 | Media Education T-P Technical Adults (Decree No. 152/1989) |
| 663 | Media Education T-P Technical Adults (Decree No. 1000/2009) |
| 710 | High School T-P Agricultural Children and Youth |
| 760 | Media Education T-P Agricultural Adults (Decree No. 152/1989) |
| 761 | Media Education T-P Agricultural Adults (Decree No. 152/1989) |
| 763 | Media Education T-P Agricultural Adults (Decree No. 1000/2009) |
| 810 | High School T-P Maritime Children and Youth |
| 860 | High School T-P Maritime Adults (Decree No. 152/1989) |
| 863 | High School T-P Maritime Adults (Decree No. 1000/2009) |
| 910 | Media Arts Children and Youth Education |
| 963 | Artistic Media Teaching Adults |


# attached-2
| Code          | Description |
|-------------- | ----------- |
| 1 | Preschool education |
| 2 | Kids Basic Education |
| 3 | Adult Basic Education |
| 4 | Special education |
| 5 | Scientific Humanistic Youth Media Education. |
| 6 | Media Scientific Humanistic Adult Education |
| 7 | Media Education Professional Technical and Artistic Youth |
| 8 | Media Education Professional Technical and Artistic Adults |


# attached-3
| Code          | Description |
|-------------- | ----------- |
| 1 | Preschool education |
| 2 | Kids Basic Education |
| 3 | Adult Basic Education |
| 4 | Scientific Humanistic Youth Media Education. |
| 5 | Media Scientific Humanistic Adult Education |
| 6 | Media Education Professional Technical and Artistic Youth |
| 7 | Media Education Professional Technical and Artistic Adults |


# attached-4
## Professional Technical Branch

| COD_RAMA         | Professional Technical Branch |
|-------------- | ----------- |
| 0 | Cycle General / No Information |
| 400 | Commercial |
| 500 | Industrial |
| 600 | Technique |
| 700 | Agricultural |
| 800 | Maritime |
| 900 | Arts |


# attached-5

###Economic Sector

| COD_SEC          | Economic Sector |
|-------------- | ----------- |
|0|General Cycle/ No information |
|410|Administration and commerce|
|510|Construction|
|520|Metal Worker|
|530|Electrician|
|540|Miner|
|550|Graphics|
|560|Chemistry|
|570|Making|
|610|Food|
|620|Social Programs and projects|
|630|Hotels and Tourism|
|710|Lumberjack|
|720|Agricultural|
|810|Maritime|
|910|Visual Arts|
|920|Performing Arts Theatre|
|930|Performing Arts Dance|


# attached-6

###Specialty

| COD_SEC | Description | COD_ESPE | Specialty |
| -----------| -----------|-------------- | -----------|
| 410  | Administration and Commerce | 41001 | Administration |
| 410  | Administration and Commerce | 41002 | Accounting |
| 410  | Administration and Commerce | 41003 | Secretary |
| 410  | Administration and Commerce | 41004 | Sales |
| 410  | Administration and Commerce | 41005 | Other |
| 510  | Construction | 51001 | Buildings |
| 510  | Construction | 51002 | Construction completions |
| 510  | Construction | 51003 | Industrial assembly |
| 510  | Construction | 51004 | Road and Infrastructure Work |
| 510  | Construction | 51005 | Sanitary |
| 510  | Construction | 51006 | Refrigeration and air conditioning |
| 510  | Construction | 51007 | Other |
| 520  | Metal Worker | 52008 | Industrial mechanics |
| 520  | Metal Worker | 52009 | Metal constructions |
| 520  | Metal Worker | 52010 | Mechanics |
| 520  | Metal Worker | 52011 | Moulding |
| 520  | Metal Worker | 52012 | Aircraft maintenance |
| 520  | Metal Worker | 52013 | Other |
| 530  | Electrician | 53014 | Electricity |
| 530  | Electrician | 53015 | Electronics |
| 530  | Electrician | 53016 | Telecommunications |
| 530  | Electrician | 53016 | Other |
| 540  | Miner | 54018 | Mining |
| 540  | Miner | 54019 | extractive metallurgy |
| 540  | Miner | 54020 | Assistance in geology |
| 540  | Miner | 54021 | Assistance in geology |
| 550  | Graphic | 55022 | Graphics |
| 550  | Graphic | 55023 | Technical Drawing |
| 560  | Chemical | 56025 | Chemical plant operation |
| 560  | Chemical | 56026 | Chemical lab |
| 560  | Chemical | 56027 | Other |
| 570  | Making | 57028 | Fabric |
| 570  | Making | 57029 | Textile |
| 570  | Making | 57030 | Clothing and Textiles |
| 570  | Making | 57031 | Leather Products |
| 570  | Making | 57032 | Other |
| 610  | Feeding | 61001 | Industrial food processing |
| 610  | Feeding | 61002 | Collective food service |
| 610  | Feeding | 61003 | Other |
| 620  | Social programs and projects | 62004 | Nursery Care |
| 620  | Social programs and projects | 62005 | Eldercare |
| 620  | Social programs and projects | 62006 | Care for Sick |
| 620  | Social programs and projects | 62007 | Social and recreational care |
| 620  | Social programs and projects | 62008 | Other |
| 630  | Hotels and Tourism | 63009 | Tourism Service  |
| 630  | Hotels and Tourism | 63010 | Hospitality |
| 630  | Hotels and Tourism | 63011 | Other |
| 710  | Lumberjack | 71001 | Forest |
| 710  | Lumberjack | 71002 | Woodworking |
| 710  | Lumberjack  | 71003 | Wood products |
| 710  | Lumberjack  | 71004 | Pulp and paper |
| 710  | Lumberjack  | 71005 | Other |
| 720  | Agricultural | 72006 | Agricultural |
| 720  | Agricultural | 72007 | Other |
| 810  | Maritime | 81001 | Merchant and special ships |
| 810  | Maritime | 81002 | Fishery |
| 810  | Maritime | 81003 | Aquaculture |
| 810  | Maritime | 81004 | Port Operation |
| 810  | Maritime | 81005 | Other |
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




# attached-8


| ENS | Label |
| -------- | --------- |
| 1 | Regular Early Childhood Education |
| 2 | Special Early Childhood Education |
| 3 | Children Regular Basic Education |
| 4 | Special Kids Basic Education |
| 5 | HC Youth Education Media General cycle |
| 6 | Teaching Youth Media General TP cycle |
| 7 | HC Youth Media differentiated teaching cycle |
| 8 | TP Youth Media differentiated teaching cycle |
| 9 | Educación Básica Adultos |
| 10 | Media General Adult Education cycle HC |
| 11 | Media General Adult Education TP cycle  |
| 12 | Media Adult Education HC differentiated cycle |
| 13 | Media Adult Education TP differentiated cycle |







