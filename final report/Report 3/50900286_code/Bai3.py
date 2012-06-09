#-------------------------------------------------------------------------------
# Name:        Python2-Bai3
# Purpose:
#
# Author:      Pham Cong Cuong
#
# Created:     24/03/2012
# Copyright:   congcuong.cse@gmail.com
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#!/usr/bin/env python

import random
import time

def fibonacci(n):
  a,b = 0,1
  r=[]
  while a<=n :
    r.append(a)
    a,b, = b,a+b
  return r

def consumer():
    while True:
        n=(yield)
        if n in fibonacci(1000):
            print('%d \t la so fibonacci' %n)
        else:
            print('%d \t khong la so fibonacci'% n)
def producer():
    g=consumer();
    g.next();
    while 1:
        g.send(random.randint(0,1000))
        time.sleep(1)



def main():
    producer();

if __name__ == '__main__':
    main()
