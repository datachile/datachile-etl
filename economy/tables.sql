create schema economy;
set schema 'economy';

create table hs (
       id serial not null,
       hs varchar(10),
       glo_aranc varchar(128),
       advalorem varchar(10),
       fecini varchar(10),
       fecfin varchar(10)
);

create foreign table exports (
       the_month integer,
       the_year integer,
       country_dest_id integer,
       exporter_rut varchar(64),
       exporter_comuna_id integer,
       hs_6digits varchar(8),
       q_traded numeric,
       fob_us numeric
)
SERVER cstore_server
OPTIONS (compression 'pglz');

create foreign table imports (
       the_month integer,
       the_year integer,
       country_origin_id integer,
       importer_rut varchar(64),
       importer_comuna_id integer,
       hs_6digits varchar(8),
       q_traded numeric,
       cif_us numeric
)
SERVER cstore_server
OPTIONS (compression 'pglz');


create table rd_survey (
       the_year integer,
       isic_rev_4 varchar(8),
       region varchar(8),
       unit integer,
       -- measures
       total_rd_intramural_expenditure_millions_pesos numeric,
       basic_research_expenditure_millions_pesos numeric,
       applied_research_expenditure_millions_pesos numeric,
       experimental_development_expenditure_millions_pesos numeric,
       natural_science_expenditure_millions_pesos numeric,
       engineering_and_technology_expenditure_millions_pesos numeric,
       medical_and_helth_sciences_expenditure_millions_pesos numeric,
       agricultural_sciences_expenditure_millions_pesos numeric,
       social_sciences_expenditure_millions_pesos numeric,
       humanities_expenditure_millions_pesos numeric,
       total_rd_personnel_in_fte numeric,
       woman_rd_personnel_in_fte numeric,
       phd_rd_personnel numeric,
       master_rd_personnel numeric,
       undergraduates_rd_personnel numeric,
       technicians_rd_personnel numeric,
       other_rd_personnel numeric,
       total_rd_researchers_in_fte numeric,
       total_rd_woman_researchers_in_fte numeric
);

create table tax_data (
       id serial not null,
       the_year integer,
       codigo_comuna integer,
       ciiu4_ori varchar(8),
       output numeric,
       labour numeric,
       labour_cost numeric,
       investment numeric,
       intermediates numeric
);

----------------------------------------------
------ import data
----------------------------------------------
BEGIN;


COPY economy.exports FROM '/home/hermes/gdrive/DataChile/Datos/Customs/exports_1991_2015.csv' WITH (FORMAT CSV, HEADER TRUE);

COPY economy.imports FROM '/home/hermes/gdrive/DataChile/Datos/Customs/imports_1991_2015.csv' WITH (FORMAT CSV, HEADER TRUE);

COPY economy.rd_survey (the_year,isic_rev_4,region,unit,total_rd_intramural_expenditure_millions_pesos,basic_research_expenditure_millions_pesos,applied_research_expenditure_millions_pesos,experimental_development_expenditure_millions_pesos,natural_science_expenditure_millions_pesos,engineering_and_technology_expenditure_millions_pesos,medical_and_helth_sciences_expenditure_millions_pesos,agricultural_sciences_expenditure_millions_pesos,social_sciences_expenditure_millions_pesos,humanities_expenditure_millions_pesos,total_rd_personnel_in_fte,woman_rd_personnel_in_fte,phd_rd_personnel,master_rd_personnel,undergraduates_rd_personnel,technicians_rd_personnel,other_rd_personnel, total_rd_researchers_in_fte, total_rd_woman_researchers_in_fte) FROM '/home/hermes/gdrive/DataChile/Datos/R&D survey/R&Survey for DataChile.csv' WITH (format csv, header true);

COPY economy.hs (hs,glo_aranc,advalorem,fecini,fecfin) FROM '/home/hermes/gdrive/DataChile/Datos/Customs/HS code detailed.csv' WITH (format csv, header true);


CREATE INDEX sub_hs_idx ON hs(substring(hs, 5, 4));
CREATE INDEX sub2_hs_idx ON hs(substring(hs for 4));
CREATE INDEX hs_int_idx ON hs(cast(hs AS integer));

--- tax data

COPY economy.tax_data (the_year,codigo_comuna,ciiu4_ori,output,labour,labour_cost,investment,intermediates) FROM '/home/hermes/gdrive/DataChile/Datos/Tax office/Taxdata 14 april.csv' WITH (FORMAT CSV, HEADER TRUE);

ALTER TABLE economy.tax_data ADD COLUMN date_id integer;
ALTER TABLE economy.tax_data ADD COLUMN comuna_id integer;

UPDATE economy.tax_data td
SET date_id = dd.id
FROM dim_date dd
WHERE dd.the_year = td.the_year;

UPDATE economy.tax_data td
SET comuna_id = dc.id
FROM dim_comunas dc
WHERE dc.comuna_tax_office_id = td.codigo_comuna;

COMMIT;


-------------------------------
------ wrangle HS data
-------------------------------
BEGIN;

CREATE TEMP TABLE toplevel (seccion_num varchar(2), seccion_description varchar(256), chapter_from varchar(2), chapter_to varchar(2));
-- output of prefix_seccion.py
INSERT into toplevel values
('01','Animales vivos y productos del reino animal','01','05'),
('02','Productos del reino vegetal','06','14'),
('03','Grasas y aceites animales o vegetales; productos de su desdoblamiento; grasas alimenticias elaboradas; ceras de origen animal o vegetal.','15',''),
('04','Productos de las industrias alimentarias; bebidas, líquidos alcohólicos y vinagre; tabaco y sucedáneos del tabaco','16','24'),
('05','Productos Minerales','25','27'),
('06','Productos de las industrias químicas o de las industrias conexas','28','38'),
('07','Plástico y sus manufacturas; caucho y sus manufacturas','39','40'),
('08','Pieles, cueros, peletería y manufacturas de estas materias; artículos de talabartería o guarnicionería; artículos de viaje, bolsos de mano (carteras), y continentes similares; manufacturas de tripa','41','43'),
('09','Madera, carbón vegetal y manufacturas de madera; corcho y sus manufacturas; manufacturas de espartería o cestería','44','46'),
('10','Pasta de madera o de las demás materias fibrosas celulósicas; papel o cartón para reciclar (desperdicios y desechos); papel o cartón y sus aplicaciones','47','49'),
('11','Materias textiles y sus manufacturas','50','63'),
('12','Calzado, sombreros y demás tocados, paraguas, quitasoles, bastones, látigos, fustas, y sus partes; plumas preparadas y artículos de plumas; flores artificiales; manufacturas de cabello','64','67'),
('13','Manufacturas de piedra, yeso fraguable, cemento, amianto (asbesto), mica o materias análogas; productos cerámicos; vidrio y sus manufacturas','68','70'),
('14','Perlas finas (naturales)* o cultivadas, piedras preciosas o semipreciosas, metales preciosos, chapados de metal precioso (plaqué) y manufacturas de estas materias; bisutería; monedas','71',''),
('15','Metales comunes y manufacturas de estos metales.','72','83'),
('16','Máquinas y aparatos, material eléctrico y sus partes; aparatos de grabación o reproducción de sonido, aparatos de grabación o reproducción de imagen y sonido en televisión, y las partes y accesorios de estos aparatos','84','85'),
('17','Material de transporte','86','89'),
('18','Instrumentos y aparatos de óptica, fotografía o cinematografía, de medida, control o precisión; instrumentos y aparatos medicoquirúrgicos; aparatos de relojería; instrumentos musicales; partes y accesorios de estos instrumentos o aparatos.','90','92'),
('19','Armas, municiones, y sus partes y accesorios.','93',''),
('20','Mercancías y productos diversos.','94','96'),
('21','Objetos de arte o colección y antigüedades.','97','99');


CREATE TABLE dim_hs AS

SELECT seccion_num || '000000' AS level1,
       seccion_description AS level1_desc,
       seccion_num || hs1.hs AS level2,
       hs1.glo_aranc AS level2_desc,
       seccion_num || hs2.hs AS level3,
       hs2.glo_aranc AS level3_desc,
       seccion_num || hs3.hs AS level4,
       hs3.glo_aranc AS level4_desc,
       coalesce(hs1.fecini, hs2.fecini) AS start_date,
       coalesce(hs1.fecfin, hs2.fecfin) AS end_date
FROM toplevel tl

INNER JOIN hs hs1 ON substring(hs1.hs, 5, 4) = '0000'
AND CASE
        WHEN tl.chapter_to = '' THEN left(hs1.hs, 2) = tl.chapter_from
             AND right(hs1.hs, 4) = '0000'
        ELSE cast(hs1.hs AS integer) >= tl.chapter_from::integer * 1e6
             AND cast(hs1.hs AS integer) <= tl.chapter_to::integer * 1e6
    END

LEFT OUTER JOIN hs hs2 ON left(hs2.hs, 4) = left(hs1.hs, 4)
AND right(hs2.hs, 2) = '00'
AND cast(hs1.hs AS integer) < cast(hs2.hs AS integer)
AND hs1.fecini = hs2.fecini
AND hs1.fecfin = hs2.fecfin

LEFT OUTER JOIN hs hs3 ON left(hs3.hs, 6) = left(hs2.hs, 6)
AND cast(hs2.hs AS integer) < cast(hs3.hs AS integer)
AND hs2.fecini = hs3.fecini
AND hs2.fecfin = hs3.fecfin

ORDER BY level1,
         level2,
         level3,
         level4
         hs1.fecini;


ALTER TABLE economy.dim_hs ADD COLUMN date_start TIMESTAMP;
ALTER TABLE economy.dim_hs ADD COLUMN date_end TIMESTAMP;

UPDATE economy.dim_hs
SET date_end = ((2000 + split_part(end_date, '/', 3)::integer)::text || '-' || split_part(end_date, '/', 2) || '-' || split_part(end_date, '/', 1))::TIMESTAMP,
    date_start = ((2000 + split_part(start_date, '/', 3)::integer)::text || '-' || split_part(start_date, '/', 2) || '-' || split_part(start_date, '/', 1))::TIMESTAMP;

ALTER TABLE economy.dim_hs DROP COLUMN end_date;
ALTER TABLE economy.dim_hs DROP COLUMN start_date;

commit;
