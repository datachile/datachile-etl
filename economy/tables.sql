create schema economy;
set schema 'economy';

create table countries (
       id serial not null,
       country_code integer,
       country_name varchar(256)
);

create table comunas (
       id serial not null,
       comuna_datachile_id integer,
       comuna_customs_id integer,
       comuna_tax_office_id integer,
       region_id integer,
       comuna_name varchar(64)
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
       region integer,
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
       other_rd_personnel numeric
);

----------------------------------------------
------ import data
----------------------------------------------
BEGIN;
COPY economy.countries (country_code, country_name) FROM '/home/hermes/gdrive/DataChile/Datos/Customs/paises.csv' with (format csv, header true);
COPY economy.comunas (comuna_name, region_id, comuna_customs_id, comuna_tax_office_id, comuna_datachile_id) FROM '/home/hermes/gdrive/DataChile/Comuna master list.csv' WITH (FORMAT CSV, HEADER TRUE);
COPY economy.exports FROM '/home/hermes/gdrive/DataChile/Datos/Customs/exports_1991_2015.csv' WITH (FORMAT CSV, HEADER TRUE);
COPY economy.imports FROM '/home/hermes/gdrive/DataChile/Datos/Customs/imports_1991_2015.csv' WITH (FORMAT CSV, HEADER TRUE);
COPY economy.rd_survey FROM '/home/hermes/gdrive/DataChile/Datos/R&D survey/R&Survey for DataChile.csv' WITH (format csv, header true);
COMMIT;
