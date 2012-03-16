""" Ham tinh chu vi hinh vuong. Vi du:
    >>> ChuViHV(2)
    >>> 8
"""
def ChuViHV(canh):
    return 4*canh
""" Ham tinh dien tich hinh vuong. Vi du:
    >>> DienTichHV(2)
    >>> 4
"""
def DienTichHV(canh):
    return canh**2
""" Ham tinh chu vi hinh chu nhat. Vi du:
    >>> ChuViHCN(3,2)
    >>> 10
"""
def ChuViHCN(dai,rong):
    return 2*(dai+rong)
""" Ham tinh dien tich hinh chu nhat. Vi du:
    >>> ChuViHCN(3,2)
    >>> 6
"""
def DienTichHCN(dai,rong):
    return dai*rong
""" Ham tinh chu vi hinh tron. Vi du:
    >>> ChuViHinhTron(3)
    >>> 18.84
"""
def ChuViHinhTron(bk):
    return 2*3.14*bk
""" Ham tinh dien tich hinh tron. Vi du:
    >>> DienTichHinhTron(3)
    >>> 28.26
"""
def DienTichHinhTron(bk):
    return bk**2*3.14
