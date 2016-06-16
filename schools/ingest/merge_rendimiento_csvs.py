# -*- coding: utf-8 -*-

# Pre-processing of the source CSV files:
# The encoding was inconsistent between the CSVs. To detect the encoding
# of the CSVs, run:
#
# find . -name '*csv' -exec bash -c 'echo -n "{}: "; uchardet "{}"' \;
#
# For those files encoded in other than UTF-8, run:
#
# iconv -f windows-1252 -t utf-8 -c $FILE | sponge $FILE
#
# Column names must be uppercased before running the python script:
#
# for i in `ls -1 *csv`; do sed -e '1 s/\(.*\)/\U\1/' $i | sponge $i; done
#
# Additional editing:
#
# sed -e '1 s/;AÑO;/;AGNO;/' Rendimiento\ por\ estudiante\ 2006.csv | sponge Rendimiento\ por\ estudiante\ 2006.csv
# sed -e '1 s/;AÑO;/;AGNO;/' Rendimiento\ por\ estudiante\ 2004.csv | sponge Rendimiento\ por\ estudiante\ 2004.csv

# The following Python script consolidates multiple CSVs into one, that containst
# all the possible columns described in the documentation for the data files.

import unicodecsv as csv
import glob, sys, os

ALL_FIELDS = ['AGNO','RBD','DGV_RBD','NOM_RBD',
              'LET_RBD','NUM_RBD','COD_REG_RBD','COD_PRO_RBD',
              'COD_COM_RBD','NOM_COM_RBD','COD_DEPROV_RBD','NOM_DEPROV_RBD',
              'COD_DEPE','COD_DEPE2','RURAL_RBD','ESTADO_ESTAB',
              'COD_ENSE','COD_ENSE2','COD_GRADO','LET_CUR',
              'COD_JOR','COD_TIP_CUR','MRUN','GEN_ALU',
              'FEC_NAC_ALU','GD_ALU','COD_REG_ALU','COD_COM_ALU',
              'NOM_COM_ALU','COD_RAMA','COD_SEC','COD_ESPE',
              'PROM_GRAL','ASISTENCIA','SIT_FIN','SIT_FIN_R']

DD = { k: None for k in ALL_FIELDS}

files = glob.glob('2*.csv')
print >>sys.stderr, files

#outf = open('merged_performance.csv', 'w')
outf = sys.stdout
writer = csv.DictWriter(outf, fieldnames=ALL_FIELDS)
writer.writeheader()

for path in files:
    with open(path) as f:
        reader = csv.DictReader(f, delimiter=';')
        print >>sys.stderr, "parsing %s" % os.path.basename(path)

        while True:
            try:
                row = reader.next()
                writer.writerow(dict(DD, **{k: v for k, v in row.iteritems() if k in DD}))
            except StopIteration:
                break
            except UnicodeDecodeError:
                pass
            except csv.Error:
                pass
