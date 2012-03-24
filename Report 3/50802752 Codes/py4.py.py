class Stack(list):
    def push(self,object):
        self.append(object)
    def pop(self):
        self.remove(self.top())
    def length(self):
        return len(self)
    def top(self):
        return self[len(self)-1]
s = Stack()
s2 = Stack([9,8,5,6])
s.push("dave")
s.push("copy")
s.push("pass")
s.pop()
print s
print s2.top()
print s2.length()




