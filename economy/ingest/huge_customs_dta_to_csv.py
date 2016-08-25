import sys

import pandas as pd
import csv

f = pd.read_stata(sys.argv[1], iterator=True, convert_categoricals=False, order_categoricals=False, convert_dates=False)

COLUMNS_EXPORTS = [u'month', u'year', u'country_dest', u'rut_exportador',
       u'comuna_exportador', u'hs_6digits', u'q_traded', u'fob_us',
       u'unit_of_measure', u'hs_yearoriginal', u'code', u'glosa']

COLUMNS_IMPORTS = [u'month', u'year', u'country_ori', u'rut_importador',
                    u'comuna_importador', u'hs_6digits', u'q_traded', u'cif_us',
                    u'unit_of_measure', u'hs_yearoriginal', u'code', u'glosa']

w = csv.DictWriter(sys.stdout,
                   COLUMNS_EXPORTS)

w.writeheader()
try:
    chunk = f.read(10*10000)
    while len(chunk) > 0:
        for i, row in chunk.iterrows():
            w.writerow(dict(row))
        chunk = f.read(10*10000)
        sys.stdout.flush()
except StopIteration, KeyboardInterrupt:
    pass
