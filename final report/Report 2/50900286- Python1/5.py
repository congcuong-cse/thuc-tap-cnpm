#-------------------------------------------------------------------------------
# Name:        Python1-5
# Purpose:      Huong dan su dung lib5
#
# Author:      Pham Cong Cuong
#
# Created:     17/03/2012
# Copyright:   (c) congcuong.cse@gmail.com
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#!/usr/bin/env python

def main():
    print "Minh hoa cac ham trong lib5"
    import lib5
    print "Thong ke cac ham trong lib5 su dung lenh: dir(lib5)"
    print dir(lib5)
    print "Muon xem documentation string cua ham C_CN,su dung lenh: lib5.C_CN.__doc__"
    print lib5.C_CN.__doc__
    print "dien tich hinh chu nhat (3.3 va 4.4) ta su dung lenh: lib5.C_CN(3.3,4.4)"
    print lib5.C_CN(3.3,4.4)
    while True:
        if input( "Nhan q de out")==q:
            break
if __name__ == '__main__':
    main()
