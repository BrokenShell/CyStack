""" Speed Tests """
from CyStack import CyStack, CyQueue
from MonkeyScope import timer


def test_list():
    array = list(range(100))
    for _ in array:
        array.pop()


def test_stack():
    stack = CyStack(range(100))
    for _ in stack:
        stack.pop()


def test_queue():
    queue = CyQueue(range(100))
    for _ in queue:
        queue.pop()


if __name__ == '__main__':
    print("\nList: ")
    timer(test_list)
    print("\nStack: ")
    timer(test_stack)
    print("\nQueue: ")
    timer(test_queue)
