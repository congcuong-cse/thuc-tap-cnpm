dictionary = {
        'I':'Toi',
        'you':'Ban',
        'He':'anh ay,ong ay,cau ay'
        }
while 1:
    Word= raw_input("Enter your word: ")
    if Word in dictionary:
        name = dictionary[Word]
        print name
    else :
        NewWord = raw_input("New Word is mean: ")
        dictionary[Word]=NewWord
    continu= raw_input("press n to exit, other key to continue ")
    if continu == "n":
        break
          
        
            
    
    
