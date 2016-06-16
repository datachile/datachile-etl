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
