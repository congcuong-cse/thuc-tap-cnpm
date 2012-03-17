#-------------------------------------------------------------------------------
# Name:        Python1-3
# Purpose:     Nhap xuat thu vien.
#
# Author:      Pham Cong Cuong
#
# Created:     17/03/2012
# Copyright:   (c) congcuong.cse@gmail.com
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#!/usr/bin/env python

def main():
    print "Thu vien"
    dic = {}
    while True:
        key = raw_input("Nhap key :")
        if key in dic:
            print dic[key]
        else:
            dic[key]= raw_input("Nhap data: ")
        s = raw_input("Tiep tuc hay khong (y/n)? ")
        while s <> "y" and s <> "n":
            s = raw_input("Tiep tuc hay khong (y/n)? ")
        if s == "n":
            break
if __name__ == '__main__':
    main()

