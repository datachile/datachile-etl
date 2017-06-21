def inline_table_xml(df, alias, id_column_name, desc_column_name):
    xml = """
<InlineTable alias="%(alias)s">
  <ColumnDefs>
    <ColumnDef name="id" type="Numeric" />
    <ColumnDef name="description" type="String" />
    <ColumnDef name="es_description" type="String" />
  </ColumnDefs>
  <Rows>
  %(rows)s
  </Rows>
</InlineTable>
    """
    
    keys = [id_column_name, desc_column_name, desc_column_name]
    cols = ['id', 'description', 'es_description']
    
    
    rows = [("  <Row>\n%s\n    </Row>" % ("\n".join(["      <Value column=\"%s\">%s</Value>" % (cols[i], r[k]) for i, k in enumerate(keys)]))) for r in df.to_dict('records')]
    
    return xml % { 'alias': alias, 'rows': "\n".join(rows)}

import os.path
from urllib import request
import shutil
import pandas as pd

def download_file(remote_path,local_path,file_name):
    remote_file = remote_path + file_name
    local_file = local_path + file_name

    if not os.path.isfile(local_file):
        with request.urlopen(remote_file) as remote_csv,open(local_file, 'wb') as local_csv:
            shutil.copyfileobj(remote_csv, local_csv)
    
    return pd.read_csv(local_file,delimiter=",")