def hoanvi(lst,i):
    if(i <= 1):
        print lst
    else:
        j = 0
        while j <= i-1:
            lst[j],lst[i-1] = lst[i-1],lst[j]
            hoanvi(lst,i-1)
            lst[j],lst[i-1] = lst[i-1],lst[j]
            j += 1           
hoanvi([1,2,3],3)

