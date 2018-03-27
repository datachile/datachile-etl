# Datachile ETL documentación general

## El proceso

1.	Se consigue la información que se espera integrar en el sitio y se los considera dataset candidato. Es importante que sea considerada data pública y anónimizada.
2.	Se utiliza [R](r.md) y los conceptos de [Tidy Data](tidy.md) para ordenar, validar e integrar la información. El resultado de este proceso son archivos CSV. Uno para los hechos (facts) y uno para cada dimensión relacionada (dims).
3. 	Se debe considerar que existen dimensiones comunes como: geográficas (comunas, regiones), sexo, ISIC, etc.
4.	Se utilizaron scripts de [iPython Notebook](python.md) para validar e ingestar los archivos CSV. Importante mencionar que los scripts realizan la carga inicial, es decir que pisan la tabla con la nueva data, no la actualizan, por lo que es importante contar con los archivos históricos para poder actualizar o bien modificar los scripts.
5.	Si se trata de un dataset nuevo, una vez que existe la tabla en la base de datos se debe mapear al esquema como un cubo nuevo. Para más información sobre la configuración de API y esquema de cubos ver [API Mondrian para DataChile](https://github.com/Datawheel/datachile-mondrian).

## Documentación relacionada sobre ETL

*   [Tidy Data](tidy.md)
*   [R scripts](r.md)
*   [iPython Notebook scripts](python.md)
*   [Esquemas + DB](db.md)
*   [Datasets](datasets.md)


