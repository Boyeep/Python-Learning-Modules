# Module 5: Error Handling

## Learning Objectives

By the end of this lesson, you should understand:

- what exceptions are and how they differ from syntax errors
- how `try`, `except`, `else`, and `finally` work together
- why error handling should be specific and intentional
- when it makes sense to raise your own exceptions

## Big Idea

Errors are not strange interruptions from outside programming.
They are part of normal program behavior.

Good developers do not try to pretend errors never happen.
They decide which errors can be handled, which should be reported, and which should stop the program.

## Why This Matters

Programs interact with unreliable things all the time:

- user input
- files
- network responses
- external libraries

Any of those can fail.
If you do not plan for failure, your program becomes fragile and confusing.

If you plan too aggressively and catch everything, you may hide real bugs.

Error handling is about balance.

## Core Theory

### Syntax Errors vs Exceptions

A syntax error means Python cannot understand the code structure itself.

An exception means the code was syntactically valid, but something went wrong during execution.

For example:

- missing a colon after `if` can cause a syntax error
- dividing by zero raises a `ZeroDivisionError`

This distinction matters because exceptions can often be handled in code, while syntax errors must be fixed in the source.

### Common Exceptions

Some exceptions beginners see often:

- `ValueError`
- `TypeError`
- `ZeroDivisionError`
- `FileNotFoundError`
- `KeyError`
- `IndexError`

Learning to recognize these names helps you understand what the program is complaining about.

### Basic `try` and `except`

Use `try` to mark code that may fail, and `except` to define a response.

```python
try:
    number = int("hello")
except ValueError:
    print("That was not a valid integer")
```

This allows the program to handle a predictable problem instead of crashing immediately.

### `else` and `finally`

Python also gives you two helpful optional parts:

- `else` runs only if no exception occurred
- `finally` runs whether an exception happened or not

```python
try:
    result = 10 / 2
except ZeroDivisionError:
    print("Cannot divide by zero")
else:
    print(result)
finally:
    print("Done")
```

This is useful when you want a clean separation between failure logic, success logic, and cleanup logic.

### Catch Specific Exceptions

Specific exception handling is usually better than catching everything.

Better:

```python
try:
    age = int(user_input)
except ValueError:
    print("Please enter a valid number")
```

Riskier:

```python
try:
    age = int(user_input)
except Exception:
    print("Something went wrong")
```

The broader version may hide bugs unrelated to the input conversion itself.

### Raising Exceptions

Your own code can raise exceptions when an invalid state should not be allowed.

```python
def set_age(age):
    if age < 0:
        raise ValueError("Age cannot be negative")
```

This is a way of protecting the rules of your program.

### Validation and Recovery

Not every error should be handled in the same place.

Sometimes you want to:

- validate early and prevent the error
- catch the error and show a friendly message
- let the program fail loudly because the bug should be fixed, not hidden

That decision depends on context.

## Quick Walkthrough

Imagine a program that asks for a number:

```python
text = input("Enter a number: ")

try:
    number = int(text)
except ValueError:
    print("You must enter digits only")
else:
    print(number * 2)
```

This is a strong beginner pattern because:

- the risky line is small and obvious
- the exception type is specific
- the success path stays readable

## Rules of Thumb

- keep the `try` block as small as practical
- catch the most specific exception you can
- use exceptions for exceptional situations, not ordinary branching
- raise an exception when invalid input would break program correctness
- do not silence an error unless you know why it is safe

## Mental Model

An exception is Python saying, "I cannot continue normally with the current assumptions."

Error handling is your chance to decide what happens next:

- recover
- clean up
- inform the user
- stop the program clearly

## Common Mistakes

- using `except Exception` too early in learning
- hiding an error with a generic message and losing the real cause
- putting too much code inside the `try` block
- confusing validation logic with exception handling
- using exceptions as the main way to control ordinary program flow

## Practice Prompts

1. Why is `except ValueError` often better than `except Exception`?
2. What is the role of `finally`, even when nothing fails?
3. When should your own code raise an exception instead of quietly continuing?
4. What is the difference between a syntax error and an exception?

## Mini Exercises

1. Write code that catches a `ZeroDivisionError`.
2. Write a function that raises `ValueError` when given a negative price.
3. Create a small script that asks for an integer and prints a helpful message if the input is invalid.

## Mastery Checklist

- I understand what an exception is.
- I can explain the difference between syntax errors and runtime exceptions.
- I can read and write a basic `try`/`except` block.
- I know why overly broad exception handling can be dangerous.
- I understand that raising exceptions can protect program correctness.
