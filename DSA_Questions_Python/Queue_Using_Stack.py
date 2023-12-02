class QueueUsingStacks:
    def __init__(self):
        self.s1 = []  
        self.s2 = []  

    def push(self, x):
        self.s1.append(x)

    def pop(self):
        if not self.s2:
            while self.s1:
                temp = self.s1.pop()
                self.s2.append(temp)
        if self.s2:
            return self.s2.pop()
        return None

    def peek(self):
        if not self.s2:
            while self.s1:
                temp = self.s1.pop()
                self.s2.append(temp)
        if self.s2:
            return self.s2[-1]
        return None

    def empty(self):
        return not self.s1 and not self.s2
