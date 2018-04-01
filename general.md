# Datachile ETL documentación general

## El proceso

1. Conseguimos información pública la cual cumple con todos los criterios de secreto estadístico.
2. Ordenamos la información disponible de general a particular para ir completando los perfiles de comuna, región u país.
3. Para procesar los datos usamos R y para subir los datos usamos Python.
4. Los datos que generamos se dividen en dos partes: Hechos (facts) y dimensiones relacionadas (dims)
5. Nos guiamos en la filosofía de [Tidy Data](tidy.md) en todas las partes del flujo de trabajo que consiste en importar, ordenar, comprender y comunicar.
6. En los datos existen dimensiones comunes tales como: unidad geográfica (comuna o región), sexo, código de clasificación de comercio (exportaciones e importaciones), etc.
7. Para más información sobre la configuración de API y esquema de cubos ver [API Mondrian para DataChile](https://github.com/Datawheel/datachile-mondrian).

## Documentación relacionada sobre ETL

*   [Tidy Data](tidy.md)
*   [R scripts](r.md)
*   [iPython Notebook scripts](python.md)
*   [Esquemas + DB](db.md)
*   [Datasets](datasets.md)
