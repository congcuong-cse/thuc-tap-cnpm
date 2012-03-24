#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      TrongDai
#
# Created:     24/03/2012
# Copyright:   (c) TrongDai 2012
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#!/usr/bin/env python


def main():
    pass

if __name__ == '__main__':
    main()

ds=[]
x=input('nhap so phan tu cua danh sach:')
while x>0:
    a=input('nhap tung phan thu')
    ds.append(a)
    x-=1

def hoanvi(lst):
    if not lst:
        return [lst]
    else:
        temp=[]
        i=0
        while i < (len(lst)):
            for m in hoanvi(lst[0:i]+lst[i+1:]):
                temp.append(m+lst[i:i+1])
            i+=1
        return temp

for l in hoanvi(ds):
    print l
