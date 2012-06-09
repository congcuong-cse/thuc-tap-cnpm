#-------------------------------------------------------------------------------
# Name:        Python1-1
# Purpose:
#
# Author:      Pham Cong Cuong
#
# Created:     17/03/2012
# Copyright:   (c) congcuong.cse@gmail.com
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#!/usr/bin/env python

def Gptb2():
    import math
    print "Giai pt bac 2 AX^2+Bx+C=0 (A <> 0)"
    A = input("Nhap A khac 0: ")
    while A==0:
        A= input("Nhap lai, A phai khac 0: ")
    B = input("Nhap B: ")
    C = input("Nhap C: ")
    delta = B*B-4*A*C
    if delta > 0:
        x1=(-B+math.sqrt(delta))/(2*A)
        x2=(-B-math.sqrt(delta))/(2*A)
        print "Pt co 2 nghiem: x1= %0.4f, x2= % 0.4f"% (x1,x2)
    elif delta == 0:
        x=-B/(2*A)
        print "Pt co nghiem kep x= %0.4f" %(x)
    else:
        print "Pt co 2 nghiem phuc: x1= %0.4f + %0.4f *i, x2= % 0.4f - %0.4f *i"\
         %(-B, (math.sqrt(-delta))/(2*A),-B, (math.sqrt(-delta))/(2*A))
def main():
    while True:
        Gptb2()
        if raw_input("Tiep tuc khong? (y/n)")=='n':
            break

if __name__ == '__main__':
    main()
