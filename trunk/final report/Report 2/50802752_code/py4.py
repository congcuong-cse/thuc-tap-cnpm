try:
    f = open("input.txt")
except IOError as e:
    print " File not found "
else:
    g = open("output.txt","w")
    line = f.readline()
    while line:
        x = line.swapcase()
        g.write(x)
        line = f.readline()
    f.close()
    g.close()
