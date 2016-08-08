import sys
import pandas as pd

def to_csv(file_in, file_out):
    print >>sys.stderr, "Reading stata file: %s" % file_in
    stata = pd.io.stata.read_stata(file_in)
    print >>sys.stderr, "Writing CSV to %s" % 'STDOUT' if file_out == sys.stdout else file_out
    stata.to_csv(file_out, index=False)

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print >>sys.stderr, "Usage: %s input_file.dta [output_file.csv]" % sys.argv[0]

    to_csv(sys.argv[1],
           sys.stdout if len(sys.argv) < 3 else sys.argv[2])
