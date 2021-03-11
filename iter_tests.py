""" Iterable Tests """
from CyStack import CyStack, CyQueue


print("\nCyStack:")
stack = CyStack(i**2 for i in range(10))
this = next(stack)
print("First: ", this)
for itm in stack:
    print(itm)

print("\nCyQueue:")
queue = CyQueue(i**2 for i in range(10))
this = next(queue)
print("First: ", this)
for itm in queue:
    print(itm)
