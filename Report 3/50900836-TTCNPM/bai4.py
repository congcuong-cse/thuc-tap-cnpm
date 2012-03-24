class Stack(list):
    def stpush(self,object):
        self.append(object)
    def stpop(self):
        return self.pop()
    def stlength(self):
        return len(self)
    def sttop(self):
        return self[len(self)-1]
s1 = Stack()
s2 = Stack(['a','b','c'])
s1.stpush(42)
s1.stpush([1,2,3])
print s1.stpop()
print s2.sttop()
print s2.stlength()



