# -*- coding: utf-8 -*-

import os
import re
import sqlite3
import sys
import json

NODE_PARSER = re.compile(r'<text top="(?P<top>\d+)" left="(?P<left>\d+)"[^>]+>(?P<text>[^<]+)</text>')
RUT_PARSER = re.compile(r'(?P<rut>[0-9\.]{1,10})-(?P<dv>[0-9Kk])\s*(?P<genero>MUJ|VAR)')
MULTISPACE = re.compile(r'\s\s+')


def extract_file(local, filename):
    combo = []

    with open(filename, 'r') as file:
        current_group = dict(domicilio='', circ='')
        current_group.update(local)
        next_line = 'NOMBRE'
        last_top = '0'

        for line in file:
            if '</b>' in line:
                continue

            match = NODE_PARSER.match(line)

            if not match:
                continue

            top = match.group('top')
            text = match.group('text').strip()
            text = MULTISPACE.sub(' ', text)

            if next_line == 'NOMBRE':
                current_group['nombre'] = text
                next_line = 'RUTGENERO_UNSAFE'
            
            elif next_line == 'RUTGENERO_UNSAFE':
                if top != last_top:
                    current_group['nombre'] += ' %s' % text
                    next_line = 'RUTGENERO_SAFE'
                
                else:
                    match = RUT_PARSER.match(text)
                    #try:
                    rut = match.group('rut').replace('.', '')
                    #except AttributeError:
                    #    print(filename)
                    #    print(line, current_group)
                    #    print(combo[-1])
                    #    exit()
                    
                    current_group['rut'] = int(rut)
                    current_group['dv'] = match.group('dv')
                    current_group['genero'] = match.group('genero')
                    next_line = 'DOMICILIO'
            
            elif next_line == 'RUTGENERO_SAFE':
                match = RUT_PARSER.match(text)
                rut = match.group('rut').replace('.', '')
                
                current_group['rut'] = int(rut)
                current_group['dv'] = match.group('dv')
                current_group['genero'] = match.group('genero')
                next_line = 'DOMICILIO'

            elif next_line == 'DOMICILIO':
                left = int(match.group('left'))

                if left > 700:
                    current_group['circ'] = text
                    next_line = 'MESA'

                else:
                    current_group['domicilio'] = text
                    next_line = 'CIRCUNS_UNSAFE'

            elif next_line == 'CIRCUNS_UNSAFE':
                left = int(match.group('left'))

                if top != last_top:
                    current_group['domicilio'] += ' %s' % text
                    next_line = 'CIRCUNS_SAFE'
                
                elif left > 1100:
                    current_group['mesa'] = text.replace(' ', '')
                    combo.append(current_group)
                    current_group = dict(domicilio='', circ='')
                    current_group.update(local)
                    next_line = 'NOMBRE'

                else:
                    current_group['circ'] = text
                    next_line = 'MESA'

            elif next_line == 'CIRCUNS_SAFE':
                current_group['circ'] = text
                next_line = 'MESA'

            elif next_line == 'MESA':
                current_group['mesa'] = text.replace(' ', '')
                combo.append(current_group)
                # print('{0[nombre]:10.10} {0[rut]:8d}-{0[dv]}'.format(current_group))
                # print(current_group)
                current_group = dict(domicilio='', circ='')
                current_group.update(local)
                next_line = 'NOMBRE'

            last_top = top
    
    return combo

def main():
    SQL_CREATE = '''
CREATE TABLE votantes(id INTEGER PRIMARY KEY, 
                      rut INTEGER UNIQUE, 
                      dv TEXT, nombre TEXT, 
                      genero TEXT, 
                      domicilio TEXT, 
                      circ TEXT, 
                      region INTEGER, 
                      comuna TEXT, 
                      mesa TEXT)'''
    SQL_INSERT = 'INSERT INTO votantes(rut, dv, nombre, genero, domicilio, circ, region, comuna, mesa) VALUES(:rut, :dv, :nombre, :genero, :domicilio, :circ, :region, :comuna, :mesa)'
    
    # os.remove('testpadron.db')
    db = sqlite3.connect('padron.db')
    cursor = db.cursor()

    cursor.execute(SQL_CREATE)
    db.commit()

    file_comunas = open('comunas.json', 'r')
    comunas = json.load(file_comunas)
    file_comunas.close()

    os.chdir('./xml/')
    filelist = os.listdir()
    filelist.sort()

    filenumber = len(filelist)
    total = 0
    print('%d FILES FOUND' % filenumber)

    for filename in filelist:
        datos = comunas.get(filename, {})
        local = dict(comuna=datos['comuna'], region=datos['region'])
        lista = extract_file(local, filename)
        total += len(lista)
        cursor.executemany(SQL_INSERT, lista)
        db.commit()

        filenumber -= 1
        print('%s INSERTED, %d FILES REMAINING, TOTAL: %d ROWS' % (filename, filenumber, total))
        os.rename(filename, '../done/%s' % filename)
        
    db.close()

if __name__ == "__main__":
    sys.exit(main())
