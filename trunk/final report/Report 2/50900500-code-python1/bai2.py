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
import math
def main():
    pass

if __name__ == '__main__':
    main()
t=0
n=input('nhap vao so nguyen N:')
if( type(n) is not int):
    print("N phai la so nguyen")
else:
    for i in range(2,n+1):
        for a in range(2,i):
            if i%a==0:
                t=1
                break
            else: pass
        if t!=1:
            print i
        else:
            t=0
