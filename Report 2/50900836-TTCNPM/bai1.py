# bai 1
import math

a = input('nhap a : ')
b = input('nhap b : ')
c = input('nhap c : ')
while(a==0):
    a = input('Nhap lai a khac 0 : ')
d = b*b - 4*a*c
if(d==0):
    print'Phuong trinh co nghiem duy nhat : '
    print -b/(2*a)
elif(d>0):
    print'Phuong trinh co 2 nghiem thuc : '
    print format((-b - math.sqrt(d))/(2*a),"0.4f")
    print format((-b + math.sqrt(d))/(2*a),"0.4f")
else :
    print'Phuong trinh co 2 nghiem ao : '
    print "%0.4f + %0.4fi" %(-b/(2*a),math.sqrt(-d)/(2*a))
    print "%0.4f - %0.4fi" %(-b/(2*a),math.sqrt(-d)/(2*a))  

