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
class Queue(list):
    #enqueue, dequeue v? property length, first.
    def enQueue(lst,n):
        lst.append(n)
    def deQueue(lst):
        lst.remove(lst[0])
        return lst
    def lenQueue(lst):
        return len(lst)
    def fQueue(lst):
        return lst[0]

lst=[1,2,3]
q1 = Queue()
q2 = Queue(lst)
print 'Danh sach ban dau', lst
print 'Them phan tu dung ham q2.enQueue(4)'
q2.enQueue(4)
print 'Chieu dai danh sach la:', q2.lenQueue()
print 'Xoa bot phan tu dung ham q2.deQueue()'
q2.deQueue()
print 'Phan tu dau tien la:',q2.fQueue()