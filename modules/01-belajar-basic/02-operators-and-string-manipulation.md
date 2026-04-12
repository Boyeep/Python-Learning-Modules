# Module 2: Operators and String Manipulation

## Learning Objectives

By the end of this lesson, you should understand:

- what operators do
- how Python evaluates expressions
- how string manipulation works
- why strings are one of the most important data types in real programs

## Big Idea

Operators let you combine or compare values.
String manipulation lets you transform text into useful forms.

## Core Theory

### Arithmetic Operators

Arithmetic operators work on numeric values.

```python
10 + 5
10 - 5
10 * 5
10 / 5
10 % 3
10 ** 2
```

Important ideas:

- `/` returns a float
- `%` gives the remainder
- `**` means exponentiation

### Comparison Operators

Comparison operators produce boolean values.

```python
5 > 3
5 == 5
5 != 2
```

These are essential for decision-making.

### Logical Operators

Logical operators combine conditions.

```python
age >= 18 and has_id
is_admin or is_moderator
not is_banned
```

### String Basics

Strings are text values.

```python
first_name = "Alya"
last_name = "Putri"
full_name = first_name + " " + last_name
```

### Common String Operations

```python
text = "python programming"

text.upper()
text.lower()
text.title()
text.strip()
text.replace("python", "Python")
text.split()
```

### String Formatting

Modern Python commonly uses f-strings.

```python
name = "Alya"
score = 95
message = f"{name} got a score of {score}"
```

Why this matters:

- clearer than manual concatenation
- easier to read
- widely used in real code

### Indexing and Slicing

Strings are ordered sequences.

```python
word = "python"
word[0]
word[-1]
word[0:3]
```

That means you can access characters by position.

## Mental Model

An expression is something that produces a value.

Example:

```python
2 + 3
```

This is not just text on a screen.
It is an instruction that evaluates to `5`.

## Common Mistakes

- using `=` when you mean `==`
- forgetting that strings are case-sensitive
- trying to add a string and a number directly without conversion

Example:

```python
age = 20
"Age: " + str(age)
```

## Practice Prompts

1. What is the difference between `=` and `==`?
2. Why is `%` useful?
3. Why are f-strings better than repeated string concatenation?

## Mastery Checklist

- I can explain arithmetic, comparison, and logical operators.
- I can manipulate strings with common methods.
- I know how to format output with f-strings.
- I understand that strings are sequences.
