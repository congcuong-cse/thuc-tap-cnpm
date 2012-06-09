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
print "tinh phuong trinh bac 2 co dang ax2+bx+c=0"
a=input('Nhap a')
if (type(a) is not int) or a==0:
    print "a phai la so nguyen va khac 0"
else:
    b=input('nhap b')
    if(type(b) is not int):
        print "b phai la so nguyen"
    else:
        c=input('nhap c')
        if(type(c) is not int): print"c phai la so nguyen"
        else:
            d=b*b-4*a*c
            if(d>=0):
                print"nghiem X1:", format((-b-math.sqrt(d))/2/a,"0.4f")
                print"nghiem X2:", format((-b+math.sqrt(d))/2/a,"0.4f")
            else:
                print "nghiem X1:",format(-b/2/a,"0.4f"),"+",format(math.sqrt(-d)/2/a,"0.4f"),"i"
                print "nghiem X2:",format(-b/2/a,"0.4f"),"-",format(math.sqrt(-d)/2/a,"0.4f"),"i"


