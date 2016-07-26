BEGIN;

--- countries table

create table dim_countries (
  id serial not null,
  country_code integer,
  country_name varchar(256),
  PRIMARY KEY(id)
);

COPY dim_countries (country_code, country_name)
FROM '/home/hermes/gdrive/DataChile/Datos/Customs/paises.csv'
WITH (FORMAT CSV, HEADER TRUE);

--- calendar table

CREATE TABLE dim_date (id serial NOT NULL, the_year INT, quarter_of_year INT, month_of_year INT, week_of_year INT, day_of_month INT, day_of_week INT, ts TIMESTAMP, PRIMARY KEY (id));


INSERT INTO dim_date (the_year, quarter_of_year, month_of_year, week_of_year, day_of_month, day_of_week, ts)
  (SELECT date_part('year', s.a) AS the_year,
          date_part('quarter', s.a) AS quarter_of_year,
          date_part('month', s.a) AS month_of_year,
          date_part('week', s.a) AS week_of_year,
          date_part('day', s.a) AS day_of_month,
          date_part('dow', s.a) AS day_of_week,
          s.a AS ts
   FROM generate_series('1990-01-01'::TIMESTAMP, '2025-12-31'::TIMESTAMP, '1 day') AS s(a));

--- geographies (comunas) table

CREATE TABLE dim_comunas (id serial NOT NULL, region_id integer, region_name varchar(64), comuna_datachile_id integer, comuna_customs_id integer, comuna_tax_office_id integer, comuna_name varchar(64), PRIMARY KEY(id));

COPY dim_comunas (comuna_name, region_id, comuna_customs_id, comuna_tax_office_id, comuna_datachile_id)
FROM '/home/hermes/gdrive/DataChile/Comuna master list.csv' WITH (FORMAT CSV, HEADER TRUE);

CREATE TEMP TABLE region_names (region_id integer, region_name varchar(64));

insert into region_names values
(1,'Tarapacá'),
(2,'Antofagasta'),
(3,'Atacama'),
(4,'Coquimbo'),
(5,'Valparaíso'),
(6,'O''Higgins'),
(7,'Maule'),
(8,'Biobío'),
(9,'Araucanía'),
(10,'Los Lagos'),
(11,'Aysén'),
(12,'Magallanes'),
(13,'Region Metropolitana Santiago'),
(14,'Los Ríos'),
(15,'Arica ha Parinacota');

UPDATE dim_comunas AS c
SET region_name = rn.region_name
FROM region_names rn AS rn
WHERE c.region_id = rn.region_id;

--- ISIC table (using output from common/ingest/process_isic.py)

CREATE TABLE dim_isic (
	id serial NOT NULL,
	level1 varchar(2),
	level1_description varchar(128),
	level2 varchar(4),
	level2_description varchar(128),
	level3 varchar(4),
	level3_description varchar(128),
	level4 varchar(4),
	level4_description varchar(128)
);

COPY dim_isic (level1,level1_description,level2,level2_description,level3,level3_description,level4,level4_description)
FROM '/home/hermes/gdrive/DataChile/Datos/Tax office/ISIC4.csv' WITH (FORMAT CSV, HEADER TRUE);




COMMIT;
