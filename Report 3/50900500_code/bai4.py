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

lst=[1,2,3]
class Stack(list):
    def pushStack(lst,n):
        lst.append(n)
    def popStack(lst):
        lst=lst[:len(lst)-1]
    def topStack(lst):
        return lst[len(lst)-1]
    def lenStack(lst):
        return len(lst)

S1=Stack()
S2=Stack([1,2,3])
print 'chieu dai stack S2', S2.lenStack()
print 'top cua stack S2', S2.topStack()