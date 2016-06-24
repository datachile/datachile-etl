require 'mdarray-jcsv'

Jcsv.reader('./2006.csv',
            format: :map,
            col_sep: ';').read do |ln, rn, row, headers|

  puts row.inspect

end
