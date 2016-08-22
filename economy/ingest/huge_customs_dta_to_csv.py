import sys

import pandas as pd
import csv

f = pd.read_stata(sys.argv[1], iterator=True, convert_categoricals=False, order_categoricals=False, convert_dates=False)
w = csv.DictWriter(sys.stdout,
                   [u'month', u'year', u'country_ori', u'rut_importador',
                    u'comuna_importador', u'hs_6digits', u'q_traded', u'cif_us',
                    u'unit_of_measure', u'hs_yearoriginal', u'code', u'glosa'])

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
