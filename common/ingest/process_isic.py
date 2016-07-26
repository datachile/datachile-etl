# process ISIC structure file
# files from:
# http://unstats.un.org/unsd/cr/registry/isic-4.asp
# ISIC Rev.4 structure - English (codes and titles only)
# ISIC Rev.4 structure - French (codes and titles only)
# ISIC Rev.4 structure - Spanish (codes and titles only)

import sys
import itertools
import unicodecsv
import ipdb

prev = {'code': '', 'title': ''}
stack = []

inp = unicodecsv.DictReader(sys.stdin)
output = unicodecsv.writer(sys.stdout)

output.writerow(itertools.chain(*[['level%d' % i, 'level%d_description' % i] for i in range(1,5)]))

for row in inp:
    n = {'code': row['Code'], 'title': row['Title']}

    if len(n['code']) == 4:
        output.writerow(itertools.chain(*[[l['code'], l['title']] for l in stack + [n]]))
        prev = n
        continue

    if len(n['code']) > len(prev['code']):
        stack.append(n)
    elif len(n['code']) < len(prev['code']):
        for i in range(len(prev['code']) - len(n['code'])):
            stack.pop()
        stack.append(n)

    prev = n
