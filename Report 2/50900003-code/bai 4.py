import os
infile=raw_input('Enter the name of input file:')
outfile=raw_input('Enter the name of output file:')
try:
    fout = open(infile)
except IOError as e:
    print " File not found. "
else:
    inFile=open(infile,'r')
    outFile=open(outfile, "w")
    line=inFile.readline()
    while line:
        s = line.swapcase()
        outFile.write(s)
        line=inFile.readline()
inFile.close()
outFile.close()
