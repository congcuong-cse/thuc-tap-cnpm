#-------------------------------------------------------------------------------
# Name:        Python2-Bai5
# Purpose:
#
# Author:      Pham Cong Cuong
#
# Created:     24/03/2012
# Copyright:   (c) congcuong.cse@gmail.com
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#!/usr/bin/env python

class Queue(object):

    def __init__(self,data=[]):
        self.data=data
    def length(self):
        return len(self.data)
    def enqueue(self,i):
        self.data = [i]+self.data;
    def dequeue(self):
        self.data=self.data[:len(self.data)-1]
    def first(self):
        return self.data[len(self.data)-1]

def main():
    print 'Khoi tao q1 = Queue(), q2 = Queue([1, 2, 3])'
    q1 = Queue()
    q2 = Queue([1, 2, 3])
    print ' q1=',q1.data, ',' ,'q2=',q2.data
    print 'Thuc hien: \n 1. q2.enqueue(4)\
                      \n 2. a=q2.first() \
                      \n 3. q2.dequeue() \
                      \n 4. l=q2.length() \
                      \nKet qua:'
    #1
    q2.enqueue(4)
    print ' 1. q2= ',q2.data
    #2
    a=q2.first()
    print ' 2. a=',a
    #3
    q2.dequeue()
    print ' 3. q2=',q2.data
    #4
    l=q2.length()
    print ' 4. l=',l
    while 1:
        exec(raw_input('Nhap lenh cac ban muon thuc hien.\nHoac nhap "exit()" de thoat\n'))
if __name__ == '__main__':
    main()
