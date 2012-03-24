class queue(list):
    def enq(self,element):
        self.append(element)
    def deq(self):
        return self.pop(0)
    def lenq(self):
        return len(self)
    def firstq(self):
        return self[0]

q1 = queue([1,2])
print q1
print q1.firstq()
