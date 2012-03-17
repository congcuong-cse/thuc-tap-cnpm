#-------------------------------------------------------------------------------
# Name:        Python1-4
# Purpose:      Doi ki tu thuong thanh hoa, hoa thanh thuong
#
# Author:      Pham Cong Cuong
#
# Created:     17/03/2012
# Copyright:   (c) congcuog.cse@gmail.com
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#!/usr/bin/env python
def swapcase():
    import os
    print "Doi ki tu thuong thanh hoa, hoa thanh thuong"
    try:
        print  "Danh sach cac file",os.listdir(".")
        fin=open(raw_input("Nhap file input:"))
    except IOError as e:
        print " File not found "
    else:
        fout=open(raw_input("Nhap file outout:"),"w")
        line = fin.readline()
        while line:
            fout.write(line.swapcase())
            line=fin.readline()
        fin.close()
        fout.close()

def main():
    while True:
        swapcase()
        if raw_input("Tiep tuc khong? (y/n)")=='n':
            break

if __name__ == '__main__':
    main()
