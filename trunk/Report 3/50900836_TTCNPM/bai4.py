class Stack(list):
    def stpush(self,object):
        self.append(object)
    def stpop(self):
        return self.pop()
    def stlength(self):
        return len(self)
    def sttop(self):
        x = self.pop()
        self.append(x)
        return x
s1 = Stack()
s2 = Stack([1,2,3])
s1.stpush(42)
s1.stpush(['a','b','c'])
print s1.stpop()
print s1.stpop()
print s2.sttop()
print s2.stlength()



