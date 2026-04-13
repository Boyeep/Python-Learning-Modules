# Module 4: Data Structures and Functions

## Learning Objectives

By the end of this lesson, you should understand:

- how the main Python data structures differ from each other
- how to choose a structure based on the problem you are solving
- how classic concepts like arrays, linked lists, stacks, and queues relate to Python
- why functions are essential for readable, reusable code
- how parameters, return values, and scope work together

## Big Idea

Programs become more powerful when they can organize groups of values and package repeated behavior.

Data structures help you shape information.
Functions help you shape logic.

## Why This Matters

As soon as a program grows beyond a few lines, you start asking questions like:

- where should I store this collection of items?
- how do I avoid repeating the same logic everywhere?
- how do I give one part of the program data without exposing everything?

The answers usually involve data structures and functions.

## Core Theory

### Data Structures Help Organize Information

Data structures are ways of storing and organizing values so your program can use them efficiently.

When the amount of data grows, structure matters more.
Without structure, code becomes difficult to maintain because you lose track of where information belongs and how it should be accessed.

### Lists

Lists are ordered, mutable collections.

```python
fruits = ["apple", "banana", "cherry"]
```

Lists are a good fit when:

- order matters
- items may be added or removed
- duplicates are allowed

Common list operations:

```python
fruits.append("mango")
fruits[0]
len(fruits)
```

### Arrays and Python Lists

In many programming courses, arrays are introduced as fixed indexed collections.
In beginner Python, `list` is usually the closest everyday equivalent.

Example:

```python
numbers = [10, 20, 30]
print(numbers[0])
numbers.append(40)
print(numbers)
```

So when older material talks about arrays, you can often map that idea to Python lists while remembering that Python lists are more flexible than many low-level arrays.

### Tuples

Tuples are ordered, immutable collections.

```python
coordinates = (10, 20)
```

Tuples are useful when a group of values belongs together and should not be changed casually.

Examples:

- coordinates
- RGB color values
- a function returning multiple related results

### Sets

Sets store unique values.

```python
tags = {"python", "beginner", "tutorial"}
```

Sets are especially useful when:

- duplicates should be removed
- membership checks matter
- order is not the main concern

### Dictionaries

Dictionaries store key-value pairs.

```python
user = {"name": "Alya", "age": 21}
```

Use a dictionary when values should be retrieved by a meaningful label rather than a numeric position.

That makes dictionaries a natural fit for:

- user records
- settings
- counters
- API-like structured data

### Choosing the Right Structure

You do not choose a structure because it exists.
You choose it because its behavior matches your need.

- use a `list` for an ordered collection
- use a `tuple` for a fixed group of related values
- use a `set` for uniqueness
- use a `dict` for named lookup

This is one of the most important decision-making habits in programming.

### Linked Lists as a Concept

A linked list is a data structure made of connected nodes.
Each node stores data and a reference to the next node.

You do not use linked lists directly in beginner Python nearly as often as lists or dictionaries, but the concept is important because it teaches that data can be connected instead of stored only by numeric index.

Example:

```python
class Node:
    def __init__(self, data, next_node=None):
        self.data = data
        self.next = next_node

node3 = Node(30)
node2 = Node(20, node3)
node1 = Node(10, node2)

print(node1.data)
print(node1.next.data)
```

The most important idea is not memorizing the code.
It is understanding that each node points to another node, forming a chain.

### Stacks and Queues

Two classic data-structure behaviors are:

- stack -> LIFO, or Last In First Out
- queue -> FIFO, or First In First Out

Stack example:

```python
stack = []
stack.append("A")
stack.append("B")
stack.append("C")

print(stack.pop())  # C
print(stack.pop())  # B
```

Queue example:

```python
from collections import deque

queue = deque(["A", "B"])
queue.append("C")

print(queue.popleft())  # A
print(queue.popleft())  # B
```

These ideas appear in task handling, undo systems, scheduling, and many other areas.

### Functions Package Behavior

Functions let you give a name to a block of reusable logic.

```python
def greet(name):
    print(f"Hello, {name}")
```

Instead of rewriting the same code many times, you call the function whenever you need it.

That improves:

- readability
- reuse
- testing
- maintainability

### Parameters and Return Values

Parameters bring data into a function.
Return values send results back out.

```python
def add(a, b):
    return a + b
```

This matters because a function should usually take input, do one focused job, and produce a clear output.

Printing and returning are not the same thing:

- `print()` shows something to the user
- `return` gives a value back to the caller

### Scope

Scope describes where a variable is visible.

```python
def example():
    message = "hello"
    print(message)
```

`message` exists only inside the function unless it is returned or stored somewhere else.

This is helpful because it keeps temporary details local instead of leaking them into the whole program.

## Quick Walkthrough

Imagine a tiny student record program:

```python
student = {
    "name": "Alya",
    "scores": [80, 90, 85],
}

def average(scores):
    return sum(scores) / len(scores)

result = average(student["scores"])
print(f"{student['name']} has an average of {result}")
```

This example uses:

- a dictionary for named student data
- a list for multiple scores
- a function for reusable calculation
- a return value so the result can be used elsewhere

That is a small but realistic example of how these ideas combine.

## Rules of Thumb

- choose a data structure based on behavior, not habit
- keep functions focused on one clear job
- prefer returning values over printing inside utility functions
- use descriptive parameter names
- avoid relying on global variables when a function parameter would be clearer

## Mental Model

Data structures organize what your program knows.
Functions organize what your program does.

If variables are individual boxes, data structures are shelves of boxes, and functions are labeled tools for working with them.

## Common Mistakes

- choosing a list when a dictionary would make the data clearer
- using a set when order actually matters
- writing functions that do several unrelated jobs
- forgetting to return a value
- assuming a variable created inside a function is available everywhere

## Practice Prompts

1. When would a dictionary be a better choice than a list?
2. Why might a tuple be safer than a list in some situations?
3. How is a Python list similar to the array idea taught in many languages?
4. What is the core idea behind a linked list?
5. What is the difference between a stack and a queue?
6. What is the difference between a parameter and an argument?
7. Why is returning a value different from printing it?

## Mini Exercises

1. Create a dictionary representing a book with a title, author, and year.
2. Write a function that receives a list of numbers and returns the largest one.
3. Create a set from a list with repeated values and inspect the result.
4. Build a simple stack with a Python list and remove two items from it.
5. Build a simple queue with `collections.deque` and remove two items from it.

## Mastery Checklist

- I can describe lists, tuples, sets, and dictionaries in practical terms.
- I understand how array-style thinking maps to Python lists.
- I know the basic ideas behind linked lists, stacks, and queues.
- I can choose a data structure based on the kind of access I need.
- I understand why functions reduce repetition and improve clarity.
- I know what parameters and return values do.
- I understand the basic idea of local scope.
