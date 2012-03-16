# bai 3
dictionary=dict()

choice='y'
while choice=='y':
    key = raw_input('Nhap tu khoa: ')
    if key in dictionary:
        print "%s : %s" %(key,(dictionary[key]))
    else:
        print 'Khong tim thay trong tu dien'
        dictionary[key]=raw_input('Vui long nhap dinh nghia: ')
    choice=raw_input('Tiep tuc (y|n)? ')
    while choice!='y' and choice!='n':
        choice=raw_input('Tiep tuc (y|n)? ')

