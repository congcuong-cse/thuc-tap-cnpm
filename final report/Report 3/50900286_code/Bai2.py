#-------------------------------------------------------------------------------
# Name:        Python-Bai2
# Purpose:
#
# Author:      Pham Cong Cuong
#
# Created:     24/03/2012
# Copyright:   (c) congcuong.cse@gmail.com
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#!/usr/bin/env python


def permutate(seq):
    if not seq:
        yield seq
    else:
        temp = []
        for k in range(len(seq)):
            part = seq[:k] + seq[k+1:]
            for m in permutate(part):
                yield seq[k:k+1] + m

def main():
    c=permutate([1,2,3,4])
    print c.next()
    print c.next()
    while 1:
        exec(raw_input('Nhap lenh "print c.next()" de hien ket qua tiep theo\
                    \nNhap lenh "exit()" de thoat\n'))
if __name__ == '__main__':
    main()
