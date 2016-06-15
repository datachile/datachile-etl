# -*- coding: utf-8 -*-
import sys, os
import pandas as pd
import numpy as np
from sqlalchemy import create_engine

SQLALCHEMY_DATABASE_URI = "postgres://{0}:{1}@{2}/{3}".format(
    os.environ.get("DATACHILE_DB_USER", "postgres"),
    os.environ.get("DATACHILE_DB_PW", ""),
    os.environ.get("DATACHILE_DB_HOST", "localhost"),
    os.environ.get("DATACHILE_DB_NAME", "datachile"))

column_formats = {
    'cod_com_rbd':str,
    'cod_com_alu':str
}

year_files = [
    "20130904_matricula_unica_2010_20100430_PUBL.csv",
    "20140805_matricula_unica_2004_20040430_PUBL.csv",
    "20140805_matricula_unica_2005_20050430_PUBL.csv",
    "20140805_matricula_unica_2006_20060430_PUBL.csv",
    "20140805_matricula_unica_2007_20070430_PUBL.csv",
    "20140805_matricula_unica_2008_20080430_PUBL.csv",
    "20140805_matricula_unica_2009_20090430_PUBL.csv",
    "20140808_matricula_unica_2013_20130430_PUBL.csv",
    "20140812_matricula_unica_2011_20110430_PUBL.csv",
    "20140812_matricula_unica_2012_20120430_PUBL.csv",
    "20140924_Matrícula_única_2014_20140430_PUBL.csv",
    "20150923_Matrícula_unica_2015_20150430_PUBL.CSV",
]

this_path = os.path.abspath(__file__)
this_parent = os.path.join(os.path.dirname(this_path), "..")
matricula_dir = os.path.abspath(os.path.join(this_parent, "raw/matricula"))

for yf in year_files:
    # make full file path
    yf_full_path = os.path.join(matricula_dir, yf)
    
    # todo: rename columns to english and/or human readable
    df = pd.read_csv(yf_full_path, sep=';', converters=column_formats, decimal=",")
    print df.head()
    
    # process comuna GEOs
    df['cod_com_rbd'] = df['cod_com_rbd'].str.zfill(5)
    df['cod_com_alu'] = df['cod_com_alu'].str.zfill(5)

    tname = "matricula"
    engine = create_engine(SQLALCHEMY_DATABASE_URI)
    
    # ingest to DB
    # df.to_sql(tname, engine, flavor='postgresql', index=False, schema="schools", if_exists='append')

