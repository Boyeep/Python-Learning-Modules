# Module 1: Variables and Data Types

## Learning Objectives

By the end of this lesson, you should understand:

- what a variable really represents in Python
- how to choose clear and valid variable names
- how built-in data types influence the operations you can perform
- why type awareness prevents many beginner bugs
- when to convert values from one type to another

## Big Idea

Programming is mostly about values.

Variables give names to those values, and data types tell Python how those values should behave.

If you understand what kind of data you are holding, many programming decisions become much easier.

## Why This Matters

Almost every Python program works by receiving data, transforming it, and producing a result.

That means you constantly need to answer questions like:

- is this value text or a number?
- can I compare these two values directly?
- am I storing a real answer, or just a placeholder for later?

Most beginner confusion comes from losing track of those answers.

## Core Theory

### Variables Bind Names to Values

A variable is a name that points to a value.

```python
name = "Alya"
age = 21
is_student = True
```

Here, `name`, `age`, and `is_student` are labels.
The actual values are `"Alya"`, `21`, and `True`.

This sounds simple, but it matters:

- you work with names in your code
- Python works with the values those names refer to

### Variable Naming Rules

Variable names should help a reader understand the role of the data.

Basic rules:

- a name cannot start with a number
- a name cannot contain spaces
- a name should not be a Python keyword
- a descriptive name is usually better than a short vague name

Examples:

```python
age = 18
total_price = 99.5
is_logged_in = True
```

Less helpful examples:

```python
x = 18
data = 99.5
value = True
```

These are not always wrong, but they often force the reader to guess what the variable means.

### Common Built-in Data Types

You do not need to memorize every type at once.
Start with the ones you will use constantly:

- `int`
  Whole numbers such as `1`, `25`, and `-10`
- `float`
  Decimal numbers such as `3.14` and `0.5`
- `str`
  Text values such as `"hello"` or `"123"`
- `bool`
  Logical values: `True` or `False`
- `NoneType`
  The type of `None`, which usually means "no value yet" or "nothing meaningful here"

These types exist for a reason.
Numbers are meant for calculation, strings are meant for text, booleans are meant for decisions, and `None` is often used to represent absence.

### Primitive-Type Thinking Across Languages

If you are coming from slide material or another language, you may hear categories such as:

- integer
- float or double
- boolean
- char
- string

Python maps those ideas in a slightly different way:

- integer -> `int`
- decimal number -> `float`
- boolean -> `bool`
- character -> usually a one-character `str`
- string -> `str`

So while some languages separate `char` and `string`, Python usually treats both as strings of different lengths.

### Assignment Can Change What a Name Refers To

Assignment in Python does not permanently "lock" a variable.

```python
score = 80
score = 95
```

After the second line, `score` refers to `95`, not `80`.

That is useful, because programs often update state over time.
But it also means you should choose variable names carefully so their meaning stays clear.

### Dynamic Typing

Python is dynamically typed.
You do not declare a type separately before assigning a value.

```python
value = 10
value = "ten"
```

The same name can refer to different types at different times.

This flexibility is powerful, but it also means you must stay aware of what a value is right now, not what it used to be a few lines earlier.

### Type Awareness in Real Expressions

Different types support different operations.

```python
count = 3
title = "Python"
price = 19.99
```

- numbers can be added, subtracted, multiplied, and compared
- strings can be joined, sliced, and transformed with string methods
- booleans are commonly used in `if` statements and loops

Type mistakes often look like this:

```python
"5" + "2"   # gives "52"
5 + 2       # gives 7
```

Both lines are valid, but they mean very different things.

### Type Conversion

Sometimes you need to explicitly convert a value.

This is especially common with user input:

```python
age_text = input("Enter your age: ")
age_number = int(age_text)
```

`input()` always returns a string.
If you want to do arithmetic with the result, you usually need `int()` or `float()`.

Common conversion functions:

- `int()`
- `float()`
- `str()`
- `bool()`

Be careful: not every conversion makes sense for every value.

## Quick Walkthrough

Imagine you are writing a tiny checkout script:

```python
item_name = "Notebook"
quantity = 3
unit_price = 4.5
is_discounted = True

total = quantity * unit_price
print(f"{item_name}: {total}")
```

Each variable has a clear role:

- `item_name` is text
- `quantity` is a whole number
- `unit_price` is a decimal number
- `is_discounted` is a yes/no value

Because the types are appropriate, the code reads naturally.

## Rules of Thumb

- use names that describe the role of the value, not just its type
- do not assume user input is numeric until you convert it
- treat `"5"` and `5` as completely different values
- use `None` only when the absence of a value is meaningful
- prefer `snake_case` for normal variable names in Python

## Useful Built-ins

These built-ins help you inspect or convert values:

```python
type("hello")
isinstance(42, int)
float("3.14")
str(99)
```

`type()` shows the exact type.
`isinstance()` is often more useful when checking whether a value behaves like a certain kind of object.

## Mental Model

Think of variables as sticky notes attached to values.

The sticky note is the variable name.
The actual thing being labeled is the value.

When you write a new assignment, you are not changing the name itself.
You are telling the name to point at a different value.

## Common Mistakes

- assuming a printed number is always stored as a numeric type
- forgetting that `input()` returns a string
- mixing text and numbers without conversion
- using a vague variable name like `data` or `value` when a clearer name would reduce confusion
- treating `None`, `0`, and `""` as if they all mean the same thing

## Practice Prompts

1. Explain the difference between `int`, `float`, `str`, and `bool` in your own words.
2. Why is `"25"` different from `25`, even though they look similar?
3. Why does Python's dynamic typing feel convenient at first but require more attention later?
4. What makes a variable name clear and descriptive?
5. Give an example of a real program variable that should probably start as `None`.

## Mini Exercises

1. Create variables for a person's name, age, height, and membership status.
2. Convert the string `"42"` into an integer, then add `8` to it.
3. Write a short snippet that prints the type of three different values.
4. Rename three vague variables into clearer Python-style names.

## Mastery Checklist

- I can explain that variables are names bound to values.
- I know the basic rules for naming variables clearly.
- I can identify the most common built-in Python data types.
- I understand why type affects valid operations.
- I know when to use explicit type conversion.
- I can spot common beginner mistakes involving strings, numbers, and `None`.
