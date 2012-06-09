"""
chuong trinh kiem tra 1 so co nam trong giai fibonacci hay khong.
Gom co 2 ham:
    ham consumer: de kiem tra
    ham producer: de cu moi giay gui 1 so random tu 0 den 1000 toi ham consumer.Gui 30 lan.
"""
import time
import random
lst = [0,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987]
def consumer():
    print "Kiem tra 1 so co nam trong day fibonacci hay khong ( 30 so)"
    while True:
        n = (yield)
        if n in lst:
            print "%d : YES " %n
        else:
            print "%d : NO " %n
def producer():
    tim = consumer()
    tim.next()
    i = 0
    while i < 30:
        random_number = random.randint(0,1000)
        tim.send(random_number)
        time.sleep(1)
        i += 1
c = producer()
