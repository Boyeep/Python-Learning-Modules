# Module 7: Docstrings

## Learning Objectives

By the end of this lesson, you should understand:

- what a docstring is and where it appears
- why docstrings matter for maintainability and onboarding
- how docstrings differ from ordinary comments
- what information a useful docstring should include

## Big Idea

A docstring explains the purpose and behavior of a module, class, function, or method.

It is not decoration.
It is part of the interface between your code and the people who need to understand it.

## Why This Matters

As soon as code is reused, shared, or revisited later, someone has to answer questions like:

- what is this function supposed to do?
- what kind of input does it expect?
- what does it return?
- what assumptions does it make?

Good docstrings reduce that guesswork.

## Core Theory

### What a Docstring Looks Like

A docstring is usually the first string literal inside a definition.

```python
def calculate_total(price, tax_rate):
    """Return the final price after tax."""
    return price + (price * tax_rate)
```

Python can access docstrings programmatically, and tools like `help()` can display them.

### Where Docstrings Appear

Docstrings can be written for:

- modules
- functions
- classes
- methods

That means documentation can exist close to the code it describes.

### Docstrings vs Comments

Comments and docstrings are related, but they are not the same.

- comments usually explain implementation details
- docstrings usually explain public purpose, usage, or expected behavior

Example:

```python
def greet(name):
    """Return a friendly greeting for the provided name."""
    # Keep the format simple for terminal output.
    return f"Hello, {name}"
```

The docstring explains what the function is for.
The comment explains an internal design choice.

### What Good Docstrings Usually Cover

A useful docstring often explains:

- what the function or class does
- what the inputs represent
- what the output means
- important side effects
- important assumptions or constraints
- exceptions, if they matter to the caller

Not every docstring needs to be long.
It just needs to answer the questions a reader is likely to have first.

### Style Matters, But Clarity Matters More

Teams may use different docstring styles.
You may see short one-line docstrings, or structured formats that list arguments and return values explicitly.

The main goal is still the same:

- be accurate
- be concise
- be useful

### Why Docstrings Matter

Docstrings help with:

- readability
- onboarding
- maintenance
- IDE hints
- documentation generation

In larger projects, they save time because readers do not need to reverse-engineer intent from implementation alone.

## Quick Walkthrough

Compare these two versions:

```python
def discount(price, percentage):
    return price - (price * percentage)
```

```python
def discount(price, percentage):
    """Return the discounted price using a decimal percentage."""
    return price - (price * percentage)
```

The second version immediately tells the reader something important:
`percentage` is probably expected to be a decimal like `0.2`, not an integer like `20`.

That kind of small clarification can prevent confusion and bugs.

## Rules of Thumb

- write docstrings for public-facing code that others will reuse
- explain purpose before implementation details
- keep docstrings updated when behavior changes
- do not repeat the function name in sentence form without adding meaning
- if a function has surprising behavior, document the surprise clearly

## Mental Model

A docstring is a promise about intent.

It should answer the question:

`What is this code supposed to do for someone who uses it?`

## Common Mistakes

- writing docstrings that repeat the function name without explanation
- letting docstrings become outdated
- using docstrings for low-value descriptions like "Function for data"
- documenting trivial internal helpers while ignoring important public functions
- writing very long docstrings where a clear function name and a short summary would be enough

## Practice Prompts

1. What is the difference between a comment and a docstring?
2. Why do docstrings matter more as codebases grow?
3. What question should a good docstring answer first?
4. When might a one-line docstring be enough?

## Mini Exercises

1. Add docstrings to two small functions of your own.
2. Rewrite a vague docstring so it explains input and output more clearly.
3. Use `help()` on a function that has a docstring and inspect the result.

## Mastery Checklist

- I understand what docstrings are for.
- I can distinguish docstrings from comments.
- I know what a useful docstring should explain.
- I understand that docstrings are part of maintainable interfaces.
- I know that documentation quality affects collaboration speed.
