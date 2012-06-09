a = input('pls enter a: ')
b = input('pls enter b: ')
c = input('pls enter c: ')
import math
d=b*b-a*a*c
if d==0:
    x1 = -b/(2*a)
    x2 = -b/(2*a)
    print "0.4%f 0.4%f" %(x1,x2)
elif (d> 0) :
    
        x1 = (-b+math.sqrt(d))/(2*a)
        x2 = (-b-math.sqrt(d))/(2*a)
        print "0.4%f 0.4%f" %(x1,x2)
else:
        print "0.4%f + 0.4%fi" %(-b/(2*a),math.sqrt(d)/(2/a))
        print "0.4%f + 0.4%fi" %(-b/(2*a),math.sqrt(d)/(2/a))
