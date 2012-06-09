#-------------------------------------------------------------------------------
# Name:        Bai1
# Purpose:
#
# Author:      Pham Cong Cuong
#
# Created:     24/03/2012
# Copyright:   (c) congcuong.cse@gmail.com
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#!/usr/bin/env python


def permutate(lst):
    if not lst:
        return [lst]  # is an empty sequence
    else:
        temp = []
        for k in range(len(lst)):
            part = lst[:k] + lst[k+1:]
            #print k, part  # test
            for m in permutate(part):
                temp.append(lst[k:k+1] + m)
                #print m, seq[k:k+1], temp  # test
        return temp

def main():
    for i in permutate(['a','b','c','d']):
        print(i)
    while 1:
        inpu = input('Nhap list cac ban muon hoan vi.\nHoac nhap "exit()" de thoat\n')
        if i=="exit()":
            exit()
        for i in permutate(inpu):
            print(i)



if __name__ == '__main__':
    main()
