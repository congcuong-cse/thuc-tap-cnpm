ds = []
k = input("Nhap so phan tu cua danh sach: ")  
i = 1
while i <= k:
    pt = input("Nhap cac phan tu cua danh sach: ")
    ds.append(pt)
    i += 1
def hoanvi(k):
    if k == 1:
        print ds
    else:
        j = k - 1
        while j >= 0:
            ds[j],ds[k-1] = ds[k-1],ds[j]
            hoanvi(k-1)
            ds[j],ds[k-1] = ds[k-1],ds[j]
            j -= 1
hoanvi(k)
        
    

