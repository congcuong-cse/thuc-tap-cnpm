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

import random
import time

def main():
    pass

if __name__ == '__main__':
    main()
def fibo(n):
    a,b=0,1
    lst=[0,1]
    while a+b<n:
        lst.append(a+b)
        a,b=b,a+b
    return lst

def consumer():
    while True:
        n=(yield)
        if n in fibo(1000):
            print(' %d la so fibonacci' %n)
        else:
            print(' %d khong la so fibonacci'% n)

def producer():
    g=consumer();
    g.next();
    while True:
        g.send(random.randint(0,1000))
        time.sleep(1)

producer()