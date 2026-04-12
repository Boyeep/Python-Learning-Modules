# Module 7: Docstrings

## Learning Objectives

By the end of this lesson, you should understand:

- what a docstring is
- why docstrings matter
- what good docstrings usually explain
- how docstrings differ from regular comments

## Big Idea

A docstring explains what a module, class, or function is for.

It is not just for decoration.
It is part of how humans understand code.

## Core Theory

### What a Docstring Looks Like

```python
def calculate_total(price, tax_rate):
    """Return the final price after tax."""
    return price + (price * tax_rate)
```

### Where Docstrings Appear

- modules
- functions
- classes
- methods

### Docstrings vs Comments

Comments usually explain implementation details.
Docstrings usually explain public purpose and usage.

Example:

```python
def greet(name):
    """Return a friendly greeting for the provided name."""
    # Keep the format simple for terminal output.
    return f"Hello, {name}"
```

### What Good Docstrings Usually Cover

- what the function does
- what the inputs represent
- what the output means
- important behavior or assumptions

### Why They Matter

Docstrings help with:

- readability
- onboarding
- maintenance
- documentation tooling

In larger projects, good docstrings reduce the time needed to understand code.

## Mental Model

A docstring is a promise about purpose.

It should answer:

`What is this code supposed to do?`

## Common Mistakes

- repeating the function name without adding meaning
- writing outdated docstrings
- using docstrings for low-value descriptions

## Practice Prompts

1. What is the difference between a comment and a docstring?
2. Why do docstrings matter more as codebases grow?
3. What question should a good docstring answer first?

## Mastery Checklist

- I understand what docstrings are for.
- I can distinguish docstrings from comments.
- I know what a useful docstring should explain.
- I understand that documentation quality affects maintainability.
