def fibs():
    a,b = 0,1
    yield a
    yield b
    while True:
        a,b = b,a+b
        yield b
def is_fibs(n):
    for fib in fibs():
      if n == fib:
          print "Day la so Fib"
          break
      if fib > n:
        print "Day ko la so fib"
        break
    
import random
import time


def consumer():
      n = (yield)
      is_fibs(n) 

def producer():
        
     for i in range(10):

         c= consumer()       
         c.next()
         t = random.randint(1,1000)    
         c.send(t)
         time.sleep(1)
         


 
for x in (producer()):
    print x
        


