# bai 2
import math
n = input('Nhap vao so nguyen n : ')
for i in range(2,n+1):
    for x in range(2, i):
        if i%x == 0:
            break
    else:
        print i , 'is a prime number'
