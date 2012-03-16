import math
while 1:
    print "Giai phuong trinh bac 2 Ax^2 + Bx + C = 0 "
    a = input(" Nhap vao A (A#0): ")
    while a == 0:
        print " A phai khac 0 "
        a = input(" Nhap vao A (A#0): ")
    b = input(" Nhap vao B: ")
    c = input(" Nhap vao C: ")
    x = b*b-4*a*c
    if x > 0:
        print " phuong trinh co 2 nghiem "
        z = (-b + math.sqrt(x))/(2*a)
        print "X1 = %0.4f" %(z)
        t = (-b - math.sqrt(x))/(2*a)
        print "X2 = %0.4f" %(t)
    elif x == 0:
        print " Phuong trinh co nghiem kep "
        print "X = %0.4f"%(-b/(2*a))
    elif x < 0:
        print " Phuong trinh co nghiem phuc"
        print " X1 = (%0.4f + " % (-b),
        print "%0.4f i)/%0.4f"%(math.sqrt(-x),2*a)
        print " X2 = (%0.4f - " % (-b),
        print "%0.4f i)/%0.4f"%(math.sqrt(-x),2*a)
    continu = raw_input(" Ban co muon tiep tuc khong ? (y/n): ")
    if continu == 'n':
        break
