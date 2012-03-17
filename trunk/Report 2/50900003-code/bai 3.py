dictionary=dict()

choice='y'
while choice=='y':
    key = raw_input('pls enter key: ')
    if key in dictionary:
        print "%s" %(dictionary[key])
    else:
        print 'cannot find this key'
        dictionary[key]=raw_input('pls enter a defination for this key: ')
    choice=raw_input('continue (y|n)? ')
    while choice!='y' and choice!='n':
        choice=raw_input('continue (y|n)? ')


