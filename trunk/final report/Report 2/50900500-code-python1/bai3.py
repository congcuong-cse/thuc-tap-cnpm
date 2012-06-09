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
stock={
"love":"yeu",
"hate":"ghet",
"like":"thich",
}
while True:
    x=raw_input('nhap tu khoa vao:')
    if x in stock:
        print stock[x]
        y=raw_input('tiep tuc nhan y, khong thi nhan bat ky')
        if y!='y': break
    else:
        n=raw_input('moi ban nhap dinh nghia')
        stock[x]=n
        y=raw_input('tiep tuc nhan y, khong thi nhan bat ky')
        if y!='y': break
