class Queue(list):
    def enqueue(self,object):
        self.append(object)
    def dequeue(self):
        self.remove(self[0])
    def length(self):
        return len(self)
    def first(self):
        return self[0]
s = Queue()
s2 = Queue([9,8,5,6])
s.enqueue("dave")
s.enqueue("copy")
s.enqueue("pass")
s.dequeue()
print s
print s2.first()
print s2.length()




