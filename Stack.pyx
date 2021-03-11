#!python3
#distutils: language = c++
from typing import Iterable
from itertools import tee


__all__ = ("CyStack", "CyQueue")


cdef extern from "Stack.hpp":

    cdef cppclass Stack:
        Stack() except +
        int size()
        int pop()
        void push(int)

    cdef cppclass Queue:
        Queue() except +
        int size()
        int pop()
        void push(int)


cdef class CyStack:
    cdef Stack stack

    def __cinit__(self, arr: Iterable[int] = ()):
        self.stack = Stack()
        for itm in arr:
            self.stack.push(itm)

    def pop(self):
        return self.stack.pop()

    def push(self, int value):
        self.stack.push(value)

    def __len__(self):
        return self.stack.size()

    def __iter__(self):
        while self:
            yield self.stack.pop()

    def __next__(self):
        return self.stack.pop()

    def __str__(self):
        stack = tuple(itm for itm in self)
        for itm in reversed(stack):
            self.push(itm)
        return ', '.join(map(str, stack))


cdef class CyQueue:
    cdef Queue queue

    def __cinit__(self, arr: Iterable[int] = ()):
        self.queue = Queue()
        for itm in arr:
            self.queue.push(itm)

    def pop(self):
        return self.queue.pop()

    def push(self, int value):
        self.queue.push(value)

    def __len__(self):
        return self.queue.size()

    def __iter__(self):
        while self:
            yield self.queue.pop()

    def __next__(self):
        return self.queue.pop()

    def __str__(self):
        queue = tuple(itm for itm in self)
        for itm in queue:
            self.push(itm)
        return ', '.join(map(str, queue))
