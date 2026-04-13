# Module 4: Data Structures and Functions

## Learning Objectives

By the end of this lesson, you should understand:

- how the main Python data structures differ from each other
- how to choose a structure based on the problem you are solving
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
3. What is the difference between a parameter and an argument?
4. Why is returning a value different from printing it?

## Mini Exercises

1. Create a dictionary representing a book with a title, author, and year.
2. Write a function that receives a list of numbers and returns the largest one.
3. Create a set from a list with repeated values and inspect the result.

## Mastery Checklist

- I can describe lists, tuples, sets, and dictionaries in practical terms.
- I can choose a data structure based on the kind of access I need.
- I understand why functions reduce repetition and improve clarity.
- I know what parameters and return values do.
- I understand the basic idea of local scope.
