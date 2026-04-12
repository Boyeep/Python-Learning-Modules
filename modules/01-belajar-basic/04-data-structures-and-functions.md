# Module 4: Data Structures and Functions

## Learning Objectives

By the end of this lesson, you should understand:

- why data structures exist
- the purpose of lists, tuples, sets, and dictionaries
- what a function is
- why functions are central to readable code

## Big Idea

Data structures organize information.
Functions organize behavior.

Together, they let programs scale beyond a few lines of code.

## Core Theory

### Lists

Lists store ordered, mutable collections.

```python
numbers = [1, 2, 3]
numbers.append(4)
```

Use a list when:

- order matters
- duplicates are allowed
- values may change

### Tuples

Tuples are ordered but immutable.

```python
point = (10, 20)
```

Use a tuple when the value should stay fixed.

### Sets

Sets store unique values.

```python
tags = {"python", "backend", "python"}
```

This becomes:

```python
{"python", "backend"}
```

Use a set when uniqueness matters.

### Dictionaries

Dictionaries store key-value pairs.

```python
student = {
    "name": "Alya",
    "age": 21,
    "major": "Computer Science",
}
```

Use a dictionary when you want labeled data.

### Functions

A function is a reusable block of code with a clear purpose.

```python
def greet(name):
    return f"Hello, {name}"
```

Why functions matter:

- reduce repetition
- improve readability
- separate responsibilities
- make testing easier

### Parameters and Return Values

- parameters are inputs
- return values are outputs

```python
def add(a, b):
    return a + b
```

### Scope

Variables created inside a function usually belong only to that function.

This is important because it helps prevent accidental interference between different parts of a program.

## Mental Model

Use data structures to model the shape of information.
Use functions to model the tasks your program performs.

## Common Mistakes

- using the wrong data structure for the job
- writing functions that do too many things
- forgetting to return a value
- relying too much on global variables

## Practice Prompts

1. When is a dictionary better than a list?
2. Why might you choose a set instead of a list?
3. What is the difference between a parameter and a return value?

## Mastery Checklist

- I can explain Python's common built-in data structures.
- I can choose a basic structure based on the problem.
- I understand what functions are for.
- I can read a simple function signature and explain its inputs and output.
