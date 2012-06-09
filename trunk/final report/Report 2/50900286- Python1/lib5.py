#-------------------------------------------------------------------------------
# Name:        Python1-5
# Purpose:      Library
#
# Author:      Pham Cong Cuong
#
# Created:     17/03/2012
# Copyright:   (c) congcuong.cse@gmail.com
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#!/usr/bin/env python

def C_V(canh):
    ''' Ham tinh chu vi hinh vuong . Vi du:
    >>> C_V(1.1)
    >>> 4.4 '''
    return 4*canh

def S_V(canh):
    ''' Ham tinh dien tich hinh vuong . Vi du:
    >>> C_V(3)
    >>> 9 '''
    return canh**2

def C_CN(dai,rong):
    ''' Ham tinh chu vi hinh chu nhat . Vi du:
    >>> C_CN(1,2)
    >>> 6 '''
    return 2*(dai+rong)

def S_CN(dai,rong):
    ''' Ham tinh dien tich hinh chu nhat. Vi du:
    >>> S_CN(3,4)
    >>> 12 '''
    return dai*rong
def C_Tron(bk):
    ''' Ham tinh chu vi hinh tron . Vi du:
    >>> C_Tron(1)
    >>> 6.28 '''
    return 2*3.14*bk

def S_Tron(bk):
    ''' Ham tinh chu vi hinh tron . Vi du:
    >>> S_Tron(1)
    >>> 3.14 '''
    return bk**2*3.14
