# Module 3: Conditionals and Control Flow

## Learning Objectives

By the end of this lesson, you should understand:

- how programs make decisions
- what control flow means
- how `if`, `elif`, and `else` work
- when loops are useful

## Big Idea

Control flow is the order in which code runs.

Without control flow, a program only goes straight from top to bottom.
With control flow, a program can make decisions and repeat work.

## Core Theory

### Conditional Statements

Conditionals let a program choose between paths.

```python
age = 20

if age >= 18:
    print("Adult")
else:
    print("Minor")
```

### Multiple Branches

```python
score = 85

if score >= 90:
    print("Excellent")
elif score >= 75:
    print("Good")
else:
    print("Keep improving")
```

Important idea:

The first matching condition runs.

### Truthy and Falsy Values

In Python, some values are treated as false in conditions:

- `False`
- `None`
- `0`
- `0.0`
- `""`
- `[]`
- `{}`

This matters because conditions are not limited to explicit booleans.

### Loops

Loops repeat instructions.

#### `for` loop

Used when iterating over a sequence.

```python
for letter in "python":
    print(letter)
```

#### `while` loop

Used when repeating until a condition changes.

```python
count = 0

while count < 3:
    print(count)
    count += 1
```

### Loop Control

```python
for number in range(10):
    if number == 5:
        break
```

- `break` stops the loop
- `continue` skips to the next iteration

## Mental Model

Control flow answers the question:

`What should happen next?`

That question is at the center of almost every program.

## Common Mistakes

- writing overlapping conditions carelessly
- forgetting indentation
- creating infinite `while` loops
- using loops when built-in tools would be clearer

## Practice Prompts

1. What is control flow?
2. When should you use `for` instead of `while`?
3. What values are commonly falsy in Python?

## Mastery Checklist

- I can explain how `if`, `elif`, and `else` work.
- I know the difference between `for` and `while`.
- I understand truthy and falsy values.
- I can reason about the path a program will take.
