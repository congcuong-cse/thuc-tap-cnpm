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
          print "day la so Fib"
          break
      if fib > n:
        print "day ko la so fib"
        break
import random
def producer():
    return random.randint(1,1000)



def consumer():
    print ("ready to recieve")
    while True:
        n = (yield)
        is_fibs(n)
        


c = producer()
print c
r = consumer()
r.next()
print r.send(c)
