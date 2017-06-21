import psycopg2
import tempfile
from pandas.io.sql import get_schema

class PostgresDriver(object):
    def __init__(self, engine):
        self.engine = engine

    def to_sql(self, df, schema_name, table_name, dtype=None):
        self._make_schema(df, schema_name, table_name, dtype)
        self._make_table(df, schema_name, table_name)
        self._write_table(df, schema_name, table_name)

    def _make_schema(self, dataframe, schema_name, table_name, dtype=None):
        """Use pandas' functionality to automatically generate a schema"""        
        create_schema_sql = 'CREATE SCHEMA IF NOT EXISTS {};'.format(schema_name)
        conn = self.engine.raw_connection()

        with conn.cursor() as cur:
            try:
                print(create_schema_sql)
                cur.execute(create_schema_sql)
                conn.commit()
            except Exception as err:
                print("[ERROR]", err)
            finally:
                conn.close()

    def _make_table(self, dataframe, schema_name, table_name, dtype=None):
        """ Drop & create table """
        drop_table_sql = 'DROP TABLE IF EXISTS {}.{};'.format(schema_name,table_name)
        
        sql_str = get_schema(dataframe, table_name, dtype=dtype)
        tmp_name = '"{}"."{}"'.format(schema_name, table_name)
        sql_str = sql_str.replace(r'"{}"'.format(table_name), tmp_name)

        conn = self.engine.raw_connection()

        with conn.cursor() as cur:
            try:
                print(drop_table_sql)
                print(sql_str)
                cur.execute(drop_table_sql)
                cur.execute(sql_str)
                conn.commit()
            except Exception as err:
                print("[ERROR]", err)
            finally:
                conn.close()

    def _write_table(self, df, schema_name, table_name, encoding='utf-8'):
        """Write a given table to the Postgres database. If the table does not already exist,
        it will be created."""
        cols = ['"{}"'.format(col) for col in df.columns]
        cols = ",".join(cols)
        conn = self.engine.raw_connection()

        with conn.cursor() as cur, tempfile.NamedTemporaryFile(mode='w+') as temp_file:
            df.to_csv(temp_file, index=False)
            temp_file.seek(0)
            tmp_name = '"{}"."{}"'.format(schema_name, table_name)
            cmd = "COPY {} ({}) FROM STDIN WITH CSV HEADER DELIMITER ',';".format(tmp_name, cols)
            print(cmd)
            cur.copy_expert(cmd, temp_file)
            conn.commit()
        conn.close()