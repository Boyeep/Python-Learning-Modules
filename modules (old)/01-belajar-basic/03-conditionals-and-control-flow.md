# Module 3: Conditionals and Control Flow

## Learning Objectives

By the end of this lesson, you should understand:

- how Python decides which code runs next
- how conditionals create branching behavior
- how nested conditions and switch-style matching fit into decision-making
- how loops repeat work without copying code
- what truthy and falsy values mean in real programs

## Big Idea

Control flow is the part of programming that turns a script into a decision-making system.

Without control flow, a program would only move straight downward, one line at a time, with no ability to react, repeat, or choose.

## Why This Matters

Real programs constantly make decisions:

- is the user allowed to continue?
- did the input pass validation?
- should we keep reading items, or stop now?
- has a goal been reached?

Conditionals answer "which path?"
Loops answer "how many times?"

Together, they control the behavior of almost every non-trivial program.

## Core Theory

### Conditional Statements

Conditional statements allow code to run only when a condition is true.

```python
age = 20

if age >= 18:
    print("Adult")
```

If the condition evaluates to `True`, the indented block runs.
If it evaluates to `False`, Python skips it.

### Multiple Branches

Use `elif` and `else` when you have multiple possible outcomes.

```python
score = 85

if score >= 90:
    print("A")
elif score >= 80:
    print("B")
else:
    print("Keep practicing")
```

Only one branch runs in this example.
Python checks from top to bottom and stops at the first true condition.

### Nested Conditions

Sometimes one decision leads to another decision.

That is where nested conditions appear:

```python
age = 20
has_ticket = True

if age >= 18:
    if has_ticket:
        print("Can enter")
    else:
        print("Must buy a ticket first")
else:
    print("Too young")
```

Nested `if` blocks are useful when one condition only matters after another condition has already passed.
They should still be used carefully, because deeply nested logic becomes hard to read.

### Switch-Style Matching in Python

Many programming languages teach a `switch` statement for fixed choices.
Traditional Python usually uses `if` / `elif` / `else`, but modern Python also supports `match` / `case`.

Example:

```python
day = "monday"

match day:
    case "monday":
        print("Start working")
    case "sunday":
        print("Rest day")
    case _:
        print("Regular day")
```

You do not need `match` to learn conditionals well, but it is useful to know that Python has a switch-like option for readable fixed-pattern branching.

### Truthy and Falsy Values

In conditions, Python does not require a literal `True` or `False`.
Many values can behave as truthy or falsy.

Common falsy values:

- `0`
- `0.0`
- `""`
- `[]`
- `{}`
- `set()`
- `None`

Most other values are truthy.

This is useful, but you should still write conditions clearly so your intent is easy to understand.

### Why Loops Exist

Loops exist so you do not have to repeat the same code manually.

Without loops:

```python
print("Hello")
print("Hello")
print("Hello")
```

With a loop:

```python
for _ in range(3):
    print("Hello")
```

This is one of the first major ways programming saves effort and reduces duplication.

### `for` Loops

Use a `for` loop when you want to repeat work over a collection or sequence.

```python
for name in ["Alya", "Bima", "Citra"]:
    print(name)
```

`for` loops are great when Python already knows what values you want to iterate through.

You will also use them with `range()`:

```python
for number in range(3):
    print(number)
```

This prints `0`, `1`, and `2`.

### `while` Loops

Use a `while` loop when repetition depends on a condition remaining true.

```python
count = 0

while count < 3:
    print(count)
    count += 1
```

This is useful when the number of repetitions is not known in advance.

### Loop Control

Python gives you tools to change loop behavior:

- `break` stops the loop immediately
- `continue` skips the rest of the current iteration
- `pass` is a placeholder that does nothing

Example:

```python
for number in range(5):
    if number == 2:
        continue
    if number == 4:
        break
    print(number)
```

### Conditions Should Be Readable

A condition is not just a technical requirement.
It is also a sentence you are writing for future readers.

Compare these:

```python
if is_logged_in and not is_banned:
    print("Allow access")
```

```python
if user_status == "active" and has_permission:
    print("Allow access")
```

Good condition names make program logic much easier to follow.

## Quick Walkthrough

Imagine a simple login attempt system:

```python
attempts = 0
max_attempts = 3

while attempts < max_attempts:
    password = input("Password: ")

    if password == "python123":
        print("Access granted")
        break

    attempts += 1
    print("Wrong password")

if attempts == max_attempts:
    print("Account locked")
```

This example shows:

- a `while` loop for repeated attempts
- an `if` statement for success
- `break` to exit early
- a final check after the loop

That is a realistic pattern in many interactive programs.

## Rules of Thumb

- use `if` for decisions and loops for repetition
- prefer `for` when iterating through a known collection
- use `while` when repetition depends on a changing condition
- make sure something inside a `while` loop can change the condition
- keep condition expressions readable, even if they could be written more compactly

## Mental Model

Think of your program as moving through roads and intersections.

- an `if` statement is a fork in the road
- a loop is a road that circles until a condition changes
- `break` is an emergency exit

This mental model helps you reason about what path the program is taking at each moment.

## Common Mistakes

- forgetting indentation
- writing a `while` loop whose condition never changes
- confusing `=` with `==`
- using complicated conditions without meaningful variable names
- creating nested loops or nested `if` statements before the logic is clear

## Practice Prompts

1. What is the difference between `if`, `for`, and `while`?
2. Why can an empty string be used as a falsy value in a condition?
3. When is a nested condition useful, and when might it become too complex?
4. What problem does `match` / `case` solve compared with long chains of fixed-value checks?
5. When is `break` useful, and when might it hide unclear loop design?
6. Why should you be careful with `while True`?

## Mini Exercises

1. Write a program that prints `"even"` for even numbers and `"odd"` for odd numbers from `1` to `5`.
2. Create a loop that counts down from `5` to `1`.
3. Write an `if` statement that prints a message only when a list is not empty.
4. Write a nested condition that checks age first, then checks whether a person has permission.
5. Write a small `match` / `case` example for menu choices such as `"start"`, `"help"`, and `"exit"`.

## Mastery Checklist

- I can explain how `if`, `elif`, and `else` work.
- I understand what nested conditions are for.
- I know that Python can also do switch-style matching with `match` / `case`.
- I understand the difference between `for` and `while`.
- I know what truthy and falsy values are.
- I can use `break` and `continue` intentionally.
- I understand how control flow changes the path a program takes.
