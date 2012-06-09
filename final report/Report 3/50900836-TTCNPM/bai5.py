class Queue(list):
    def enqueue(self,element):
        self.append(element)
    def dequeue(self):
        return self.pop(0)
    def lenqueue(self):
        return len(self)
    def firstqueue(self):
        return self[0]
q1 = Queue() 
q2 = Queue([1, 2, 3])
q1.enqueue('A')
q2.enqueue('B')
print q2.lenqueue()
print q1.dequeue()
print q2.firstqueue()
