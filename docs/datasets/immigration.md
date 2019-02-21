[Volver a datasets](../datasets.md)

# Visas a inmigrantes

## Fuente

Departamento de Extranjería y Migración

## Descripción

Corresponde a la cantidad de visas entregadas desde el año 2005 y detalla la comuna de residencia, ocupación y nivel de estudios de los migrantes.

No se debe tomar como un stock o cuenta de migrantes ya que al ser datos anonimizados una persona puede obtener más de una visa y el archivo contiene una observación por visa y no una observación por persona.

## Proceso

Importamos los datos desde Excel y los llevamos a Tidy Data. Dado que los archivos originales no presentan mayores dificultades bastó con ejecutar un mínimo de expresiones regulares para normalizar los nombres de comunas.

## Campos del archivo de input

| campo | tipo | detalle |
|-------|------|-----------|
| year | integer | Formato: YYYY Ej: 2014 |
| comuna_datachile_id | integer |  |
| sex_id | integer |  |
| activity_id | integer |  |
| birth_date | date | Formato: YYYY-MM-DD Ej: '2010-12-24' |
| age | integer |  |
| studies_id | integer |  |
| country_code | integer |  |
| visa_type_id | integer |  |


## Python insert update file
[Python Notebook](../../demographics/migration/ingest/migrations_ingest.ipynb)

