#-------------------------------------------------------------------------------
# Name:        Python1-2
# Purpose:      Primepower
#
# Author:      Pham Cong Cuong
#
# Created:     17/03/2012
# Copyright:   (c) congcuong.cse@gmail.com
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#!/usr/bin/env python
import math
def isprime(n):
    '''check if integer n is a prime'''
    # range starts with 2 and only needs to go up the squareroot of n
    for x in range(2, int(n**0.5)+1):
        if n % x == 0:
            return False
    return True
## {{{ http://code.activestate.com/recipes/410663/ (r1)
def primepow(aNumber):
	'''finds the prime base P and power N such that aNumber = P^N.'''
	firstfactor = 0
	p = 0
	n = 0
	if aNumber <= 1:
		return False
	if isprime(aNumber):
		p = aNumber
		n = 1
		return (p, n)
	else:
	  	for k in xrange(2, int(math.sqrt(aNumber+1))+1):
	  		if ( ( aNumber % k ) == 0 ):
	  			firstfactor = k
	  			break

	  	if ( False == isprime( firstfactor ) ):
	  		return False

  		q = aNumber
  		while( True ):
  			if q == 1:
  				return (firstfactor, n)
  			if (q % firstfactor) == 0:
  				n = n + 1
  				q = q / firstfactor
  			else:
  				return False
## end of http://code.activestate.com/recipes/410663/ }}}

def pripower():
    print "Tim cac so primepower nho hon so N"
    N= input( "Nhap so tu nhien N>=2: ")
    while N<2:
        N=input("Nhap lai N>=2:")
    print "Cac so do la:",
    for i in range(2,N):
        if(primepow(i)):
            print i,

def main():
    while True:
        pripower()
        s = raw_input("Tiep tuc hay khong (y/n)? ")
        while s <> "y" and s <> "n":
            s = raw_input("Tiep tuc hay khong (y/n)? ")
        if s == "n":
            break


if __name__ == '__main__':
    main()
