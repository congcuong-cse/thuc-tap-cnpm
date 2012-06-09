#-------------------------------------------------------------------------------
# Name:        Python2-Bai4
# Purpose:
#
# Author:      Pham Cong Cuong
#
# Created:     24/03/2012
# Copyright:   (c) congcuong.cse@gmail.com
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#!/usr/bin/env python
class Stack(object):

    def __init__(self,data=[]):
        self.data=data
    def length(self):
        return len(self.data)
    def push(self,i):
        self.data += [i];
    def pop(self):
        self.data=self.data[:len(self.data)-1]
    def top(self):
        return self.data[len(self.data)-1]

def main():
    print 'Khoi tao S1 = Stack(), S2 = Stack([1, 2, 3])'
    S1 = Stack()
    S2 = Stack([1, 2, 3])
    print ' S1=',S1.data, ',' ,'S2=',S2.data
    print 'Thuc hien: \n 1. S2.push(4)\
                      \n 2. a=S2.top() \
                      \n 3. S2.pop() \
                      \n 4. l=S2.length() \
                      \nKet qua:'
    #1
    S2.push(4)
    print ' 1. S2= ',S2.data
    #2
    a=S2.top()
    print ' 2. a=',a
    #3
    S2.pop()
    print ' 3. S2=',S2.data
    #4
    l=S2.length()
    print ' 4. l=',l
    while 1:
        exec(raw_input('Nhap lenh cac ban muon thuc hien.\nHoac nhap "exit()" de thoat\n'))

if __name__ == '__main__':
    main()
