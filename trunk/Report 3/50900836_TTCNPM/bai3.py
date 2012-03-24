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

def producer():
    time.sleep(1)
    a = random.randint(1,1000)
    print a
    consumer(a)

def consumer(n):
        is_fibs(n)  

while True:
    producer()
