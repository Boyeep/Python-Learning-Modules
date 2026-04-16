# Module 2: Operators and String Manipulation

## Learning Objectives

By the end of this lesson, you should understand:

- how operators turn values into new values
- how Python evaluates expressions and comparisons
- how strings can be combined, cleaned, and reformatted
- why text processing shows up in almost every real program

## Big Idea

Operators are the grammar of Python expressions.
They let you calculate, compare, and combine values.

String manipulation matters because programs are constantly handling names, messages, file paths, URLs, commands, and user input.

## Why This Matters

If variables are the containers of a program, operators are the actions performed on what those containers hold.

You will use operators to:

- add totals
- compare values
- check multiple conditions
- build readable output
- transform raw text into something useful

This lesson is where Python starts to feel less like stored data and more like active logic.

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

Important details:

- `/` always produces a float
- `//` performs floor division
- `%` gives the remainder
- `**` means exponentiation

These details matter because similar-looking operators can produce different kinds of results.

### Comparison Operators

Comparison operators answer yes/no questions.

```python
5 > 3
5 == 5
5 != 2
7 <= 9
```

Their result is always a boolean: `True` or `False`.

That makes them the foundation for `if` statements, filtering, validation, and many kinds of program rules.

### Logical Operators

Logical operators combine boolean expressions.

```python
age >= 18 and has_id
is_admin or is_moderator
not is_banned
```

Use them when one condition is not enough.

- `and` means both conditions must be true
- `or` means at least one must be true
- `not` flips truth to falsehood, or falsehood to truth

### Operator Precedence

Python evaluates some parts of an expression before others.

```python
2 + 3 * 4
```

This evaluates to `14`, not `20`, because multiplication happens before addition.

When readability matters more than cleverness, use parentheses:

```python
(2 + 3) * 4
```

### Strings Are Sequences of Characters

Strings are text values, but they are also ordered sequences.

```python
first_name = "Alya"
last_name = "Putri"
full_name = first_name + " " + last_name
```

Because strings are ordered, you can inspect specific characters and slices of characters.

### Common String Operations

String methods help you normalize or transform text.

```python
text = "  python programming  "

text.strip()
text.upper()
text.lower()
text.title()
text.replace("python", "Python")
text.split()
```

These methods are useful when handling messy user input or preparing output for display.

### String Formatting

Modern Python usually uses f-strings for readable output.

```python
name = "Alya"
score = 95
message = f"{name} got a score of {score}"
```

Why f-strings are a good default:

- they are easy to read
- they reduce manual string concatenation
- they scale better when messages become more complex

### Indexing and Slicing

Because strings are ordered, you can access parts of them by position.

```python
word = "python"
word[0]
word[-1]
word[0:3]
```

Results:

- `word[0]` gives `"p"`
- `word[-1]` gives `"n"`
- `word[0:3]` gives `"pyt"`

### Strings Are Immutable

You cannot change one character in a string directly.

```python
word = "cat"
# word[0] = "b"  # this would fail
word = "b" + word[1:]
```

This is important because string operations usually create new strings instead of modifying the old one in place.

## Quick Walkthrough

Imagine a program that builds a username from raw input:

```python
full_name = "  alya putri  "
clean_name = full_name.strip().title()
username = clean_name.lower().replace(" ", "_")

print(clean_name)
print(username)
```

This small example uses several ideas together:

- `strip()` removes unwanted spaces
- `title()` improves display formatting
- `lower()` normalizes the text
- `replace()` transforms spaces into underscores

That is a realistic pattern: text comes in messy, and operators plus string methods make it usable.

## Rules of Thumb

- use `==` for comparison and `=` for assignment
- prefer f-strings over complicated concatenation
- normalize user input before comparing it
- use parentheses when precedence could confuse a reader
- remember that string methods usually return new strings

## Mental Model

An expression is code that evaluates to a value.

```python
2 + 3
```

That expression produces `5`.

```python
name.upper()
```

That expression produces a transformed string.

If you keep asking "what value does this expression produce?" your reasoning about code gets much stronger.

## Common Mistakes

- writing `=` when you mean `==`
- assuming `"5" + "2"` behaves like numeric addition
- forgetting that comparisons are case-sensitive for strings
- trying to mutate a string character directly
- writing dense expressions that technically work but are hard to read

## Practice Prompts

1. What is the difference between `=` and `==`?
2. Why is `%` useful beyond math homework?
3. Why are f-strings usually better than repeated string concatenation?
4. What does it mean to say that strings are immutable?

## Mini Exercises

1. Write an expression that checks whether a number is between `10` and `20`.
2. Create a string and print its first, last, and first three characters.
3. Take the text `"  hello world  "` and transform it into `"Hello World"`.

## Mastery Checklist

- I can explain arithmetic, comparison, and logical operators.
- I understand that expressions evaluate to values.
- I can manipulate strings with common methods.
- I know how to format output with f-strings.
- I understand that strings are ordered and immutable.
