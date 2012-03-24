class Stack(list):
    def stkpush(self, element):
        self.append(element)
    def stkpop(self):
        return self.pop
    def stklen(self):
        return len(self)
    def stktop(self):
        return self[len(self)-1]



s1 = Stack([1,2,3])
s1.stkpush(5)
print s1
print s1.stklen()
print s1.stktop()
