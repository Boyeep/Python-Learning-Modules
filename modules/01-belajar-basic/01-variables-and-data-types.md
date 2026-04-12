# Module 1: Variables and Data Types

## Learning Objectives

By the end of this lesson, you should understand:

- what a variable is
- what a data type is
- why type matters in programming
- how Python handles common built-in types

## Big Idea

A variable is a name that refers to a value.

A data type describes what kind of value it is and what operations make sense for that value.

## Why This Matters

Programming is mostly about moving and transforming data.
If you do not understand the shape of your data, your code becomes confusing very quickly.

## Core Theory

### Variables

Variables let you store values so you can reuse them later.

```python
name = "Alya"
age = 21
is_student = True
```

In Python, you do not declare the type separately before assigning a value.
Python infers the type from the value you assign.

### Common Built-in Data Types

- `int`
  Whole numbers like `1`, `25`, `-10`
- `float`
  Decimal numbers like `3.14`, `0.5`
- `str`
  Text like `"hello"`
- `bool`
  `True` or `False`
- `NoneType`
  Represented by `None`, meaning no meaningful value

### Dynamic Typing

Python is dynamically typed.
That means a variable name can later refer to a value of a different type.

```python
value = 10
value = "ten"
```

This is flexible, but it also means you must stay mentally disciplined.

### Type Awareness

Different data types support different operations.

```python
count = 10
price = 19.99
title = "Python"
```

- numbers can be added and multiplied
- strings can be concatenated and sliced
- booleans are used in conditions

## Useful Built-ins

```python
type("hello")
type(42)
type(True)
```

Use `type()` to inspect what kind of value you are working with.

## Mental Model

Think of a variable as a label and a value as the actual object.

The variable name is not the data itself.
It is the handle you use to access the data.

## Common Mistakes

- treating numbers and strings as if they behave the same
- forgetting that `"5"` is not the same as `5`
- assuming `None` behaves like an empty string or zero

## Practice Prompts

1. Explain the difference between `int`, `float`, and `str`.
2. What is the type of `False`?
3. Why can dynamic typing be helpful and risky?

## Mastery Checklist

- I can explain what a variable stores.
- I can name the most common Python data types.
- I can tell the difference between text and numeric values.
- I understand that type affects valid operations.
