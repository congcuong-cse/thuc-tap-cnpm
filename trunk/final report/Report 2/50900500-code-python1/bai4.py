#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      TrongDai
#
# Created:     17/03/2012
# Copyright:   (c) TrongDai 2012
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#!/usr/bin/env python

def main():
    pass

if __name__ == '__main__':
    main()
try: foutput=open('output.txt','w')
except IOError:
    foutput=file('output.txt','w')
else:
    try:
            finput=open('input.txt','r')
    except IOError:
        print"file not found"
    else:
        line=finput.readline()
        while line:
            foutput.write(line.swapcase())
            line=finput.readline()
        finput.close()
        foutput.close()
