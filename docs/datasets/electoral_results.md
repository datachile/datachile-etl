[Volver a datasets](../datasets.md)

# Resultados electorales

## Fuente

SERVEL (API, archivos estáticos y aplicaciones web)

## Descripción

Contiene los resultados a nivel de mesas de votación de todas las elecciones del año 2009 en adelante.

## Proceso

Asociamos cada candidato a un ID único (e.g. si el candidato Domingo Lamosa se presenta a más de una elección en todas las elecciones su identificador numérico, digamos 10, es el mismo)

Debido a las múltiples variaciones en las formas de escribir los nombres de los candidatos (e.g. LAMOSA, DOMINGO versus Dom. Lamosa y varias alteraciones) empleamos algoritmos de fuzzy logic, seguido de un algoritmo de fuerza bruta (e.g. para Domingo Antonio Lamosa Céspedes obtengo todas las permutaciones con y sin eliminación de palabras), seguido de un proceso de verificación manual.

El mismo proceso que realizamos para los candidatos se realizó de manera más simple para las listas.

Adicionalmente, los archivos no siguen un formato estándar a lo largo del tiempo y en muchos de ellos se indican los ganadores según número de votos, lo cual no es correcto. Ya que el periodo analizado tiene elecciones que se rigen por sistema directo, sistema binominal y sistema D'Hont, escribimos funciones que nos permiten obtener los ganadores y perdedores de acuerdo a las listas y reglas particulares de cada elección (e.g. las reglas de elección de alcalde no son las mismas que las de elección de senadores)

Una consideración especial son los candidatos que ganan por sorteo y las personas en ejercicio debido a la renuncia/destitución del candidato ganador. Tales excepciones también se revisaron manualmente (e.g. alcalde de Huara)

## Dimesiones relacionadas
...

## Tabla en base de datos
...
