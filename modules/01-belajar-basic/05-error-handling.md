# Module 5: Error Handling

## Learning Objectives

By the end of this lesson, you should understand:

- why errors happen
- what exceptions are
- how `try`, `except`, `else`, and `finally` work
- why error handling should be intentional, not random

## Big Idea

Programs do not fail only because developers are bad.
Programs fail because the world is unpredictable:

- users type wrong input
- files go missing
- conversions fail
- network calls time out

Error handling is how you make your program respond safely.

## Core Theory

### Exceptions

In Python, many runtime errors are represented as exceptions.

Examples:

- `ValueError`
- `TypeError`
- `KeyError`
- `FileNotFoundError`

### Basic Handling

```python
try:
    number = int("hello")
except ValueError:
    print("That is not a valid integer")
```

### Full Structure

```python
try:
    result = 10 / 2
except ZeroDivisionError:
    print("Cannot divide by zero")
else:
    print("Success:", result)
finally:
    print("This always runs")
```

Meaning:

- `try`: code that may fail
- `except`: what to do if failure happens
- `else`: what to do if no exception happens
- `finally`: cleanup that should always happen

### Why Not Catch Everything Carelessly

This is bad practice:

```python
try:
    do_something()
except:
    print("Error")
```

Why it is risky:

- hides the real problem
- makes debugging harder
- may catch errors you did not intend to catch

Prefer specific exception types whenever possible.

### Raising Exceptions

You can also raise your own exceptions.

```python
def divide(a, b):
    if b == 0:
        raise ValueError("b must not be zero")
    return a / b
```

This is useful when your function must enforce a rule.

## Mental Model

Error handling is not about pretending things will go wrong.
It is about designing what your program should do when they do.

## Common Mistakes

- catching every exception without understanding the cause
- ignoring error messages
- using exceptions for normal control flow too often
- failing to clean up resources

## Practice Prompts

1. What is an exception?
2. Why is a specific `except ValueError` usually better than a bare `except`?
3. What is the purpose of `finally`?

## Mastery Checklist

- I understand what Python exceptions are.
- I can read a `try`/`except` block and explain its behavior.
- I know why broad error catching can be harmful.
- I understand that good software plans for failure.
