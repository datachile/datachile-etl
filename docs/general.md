# Datachile ETL documentación general

## El proceso

El proceso es el siguiente:

1. Conseguimos información de distintas fuentes públicas.
2. De acuerdo a la disponibilidad de los datos definimos que datos utilizar en primera instancia en los perfiles de región y comuna yendo de general a particular.
3. Una vez que tenemos los datos más generales, para describir las comunas y regiones de muy grueso modo, pasamos a datos particulares que nos permiten comprender de mejor manera la realidad de las distintas divisiones geográficas del país.
4. Toda la información disponible está organizada en secciones: economía, educación, vivienda, demografía, salud y cívica

Para organizar esto nos guiamos por los principios de [Tidy Data](tidy.md) para ordenar, validar e integrar la información.

En los datos tenemos dimensiones comunes como: geográficas (comunas, regiones), sexo, códigos de clasificación industrial, etc.

Todo el proceso de datos recae en tres tecnologías:

* R: Descarga, limpieza, trasformación y almacenamiento de datos en formato plano
* Python: Carga de datos generados por R a la [base de datos](db.md)
* PostgreSQL: Almacenamiento y organización de los datos en un esquema de cubos organizados separadamente entre hechos (e.g. cantidad de población) y dimensiones (e.g. grupos etáreos)

DataChile cuenta con una API que permite interactuar con la base de datos y esquema de cubos ver [API Mondrian para DataChile](https://github.com/Datawheel/datachile-mondrian).

## Documentación relacionada

*   [Tidy Data](tidy.md)
*   [R scripts](r.md)
*   [iPython Notebook scripts](python.md)
*   [Esquemas + DB](db.md)
*   [Datasets](datasets.md)
