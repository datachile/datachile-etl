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

import os
from urllib import request
import shutil
import pandas as pd
import zipfile
import chardet

def download_file(remote_path,local_path,file_name):
    remote_file = remote_path + file_name
    local_file = local_path + file_name

    if not os.path.isfile(local_file):
        print ("Downloading... "+remote_file)
        with request.urlopen(remote_file) as remote_csv,open(local_file, 'wb') as local_csv:    
            shutil.copyfileobj(remote_csv, local_csv)
    else:
        print ("Already downloaded. Using: "+local_file)
    
    with open(local_file, 'rb') as local_csv:
        result = chardet.detect(local_csv.read())

    return pd.read_csv(local_file,delimiter=",",encoding = result['encoding'])

def extract_zip_file(local_path,file_name):
    local_file = local_path + file_name
    print ("Unzipping... "+local_file)
    zip_ref = zipfile.ZipFile(local_file, 'r')
    zip_ref.extractall(local_path)
    zip_ref.close()
    return True;

def download_zip_file(remote_path,local_path,file_name):
    remote_file = remote_path + file_name
    local_file = local_path + "temp.zip"

    if not os.path.isfile(local_file):
        print ("Downloading... "+remote_file)
        with request.urlopen(remote_file) as remote_zip,open(local_file, 'wb') as local_zip:
            shutil.copyfileobj(remote_zip, local_zip)
    
    return True


