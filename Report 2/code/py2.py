while 1:
    print " Chương trình nhập vào số N,in ra các số prime power từ lớn đến bé và nhỏ hơn N "
    n = input(" Nhap vao so N (nhap vao so 0 de thoat): ")
    if n == 0:
        break
    while n < 2:
        n = input(" Nhap lai so N : ")
    i = n - 1
    while i > 1:
        ok = 1
        j = 2
        while j<i:
            if i%j==0:
                k = i/j
                while k>j:
                    if (k%j)==0:
                        k = k/j
                    else :
                        ok = 0
                        break
                break
            j = j + 1
        if ok == 1:
            print i
        i = i - 1
        

        
