-- student count by school in a region and year

SELECT rbd,
       nom_rbd,
       count(*) AS stud_count
FROM enrollment
WHERE COD_COM_RBD = '15101'
  AND agno = 2015
GROUP BY rbd,
         nom_rbd
ORDER BY stud_count DESC

--

SELECT rbd,
       nom_rbd,
       cod_ense,
       cod_grado,
       cod_grado2,
       let_cur,
       cod_jor,
       count(*) AS stud_count
FROM enrollment
WHERE COD_COM_RBD = '15101'
  AND agno = 2015
GROUP BY rbd,
         nom_rbd,
         cod_ense,
         cod_grado,
         cod_grado2,
         let_cur,
         cod_jor
ORDER BY rbd,
         cod_grado

--

SELECT *
FROM enrollment
WHERE COD_COM_RBD = '15101'
  AND agno = 2015
  AND rbd = '1'
  AND cod_ense = '563'
  AND cod_grado = '1'
  AND cod_grado2 ='2'
  AND let_cur ='C'
  AND cod_jor = '4'
ORDER BY rbd,
         cod_grado

-----------------------------------------------
---- create and populate performance table ----
-----------------------------------------------

BEGIN;
CREATE UNLOGGED TABLE performance (
AGNO INTEGER,
RBD VARCHAR(128),
DGV_RBD VARCHAR(128),
LET_RBD VARCHAR(128),
NUM_RBD VARCHAR(128),
COD_REG_RBD VARCHAR(128),
COD_PRO_RBD VARCHAR(128),
COD_COM_RBD VARCHAR(128),
COD_DEPROV_RBD VARCHAR(128),
COD_DEPE VARCHAR(128),
COD_DEPE2 VARCHAR(128),
RURAL_RBD VARCHAR(128),
ESTADO_ESTAB VARCHAR(128),
COD_ENSE VARCHAR(128),
COD_ENSE2 VARCHAR(128),
COD_GRADO VARCHAR(128),
LET_CUR VARCHAR(128),
COD_JOR VARCHAR(128),
COD_TIP_CUR VARCHAR(128),
MRUN VARCHAR(128),
GEN_ALU VARCHAR(128),
FEC_NAC_ALU VARCHAR(128),
GD_ALU VARCHAR(128),
COD_REG_ALU VARCHAR(128),
COD_COM_ALU VARCHAR(128),
COD_RAMA VARCHAR(128),
COD_SEC VARCHAR(128),
COD_ESPE VARCHAR(128),
PROM_GRAL VARCHAR(128),
ASISTENCIA VARCHAR(128),
SIT_FIN VARCHAR(128),
SIT_FIN_R VARCHAR(128)
);


COPY performance from '/home/hermes/datasets/DataChile/schools/rendimiento/merged_rendimiento2.csv' with (format csv, header true);
COMMIT;

CREATE FOREIGN TABLE performance_cstore (
AGNO INTEGER,
RBD VARCHAR(128),
DGV_RBD VARCHAR(128),
LET_RBD VARCHAR(128),
NUM_RBD VARCHAR(128),
COD_REG_RBD VARCHAR(128),
COD_PRO_RBD VARCHAR(128),
COD_COM_RBD VARCHAR(128),
COD_DEPROV_RBD VARCHAR(128),
COD_DEPE VARCHAR(128),
COD_DEPE2 VARCHAR(128),
RURAL_RBD VARCHAR(128),
ESTADO_ESTAB VARCHAR(128),
COD_ENSE VARCHAR(128),
COD_ENSE2 VARCHAR(128),
COD_GRADO VARCHAR(128),
LET_CUR VARCHAR(128),
COD_JOR VARCHAR(128),
COD_TIP_CUR VARCHAR(128),
MRUN VARCHAR(128),
GEN_ALU VARCHAR(128),
FEC_NAC_ALU VARCHAR(128),
GD_ALU VARCHAR(128),
COD_REG_ALU VARCHAR(128),
COD_COM_ALU VARCHAR(128),
COD_RAMA VARCHAR(128),
COD_SEC VARCHAR(128),
COD_ESPE VARCHAR(128),
PROM_GRAL NUMERIC,
ASISTENCIA NUMERIC,
SIT_FIN VARCHAR(128),
SIT_FIN_R VARCHAR(128)
)
SERVER cstore_server
OPTIONS (compression 'pglz');

INSERT INTO performance_cstore
(SELECT
AGNO, RBD, DGV_RBD, LET_RBD,
NUM_RBD, COD_REG_RBD, COD_PRO_RBD, COD_COM_RBD,
COD_DEPROV_RBD, COD_DEPE, COD_DEPE2, RURAL_RBD,
ESTADO_ESTAB, COD_ENSE, COD_ENSE2, COD_GRADO,
LET_CUR, COD_JOR, COD_TIP_CUR, MRUN,
GEN_ALU, FEC_NAC_ALU, GD_ALU, COD_REG_ALU,
COD_COM_ALU, COD_RAMA, COD_SEC, COD_ESPE,
replace(PROM_GRAL, ',', '.')::numeric as prom_gral,
replace(ASISTENCIA, ',', '.')::numeric as asistencia,
SIT_FIN, SIT_FIN_R
FROM performance);
