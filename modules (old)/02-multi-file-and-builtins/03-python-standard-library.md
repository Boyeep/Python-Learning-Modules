# Module 8: Python Standard Library

## Learning Objectives

By the end of this lesson, you should understand:

- what the Python standard library is
- why it matters in day-to-day development
- several standard modules that solve common problems
- why built-in tools are often better than unnecessary custom code or early dependencies

## Big Idea

Python comes with a large standard library.

That means many common programming problems already have trusted tools built in, so you often do not need to install anything extra or reinvent the solution yourself.

## Why This Matters

Beginners sometimes assume every task needs a third-party package.
In reality, Python already includes tools for many things:

- math
- dates and time
- file paths
- JSON
- randomness
- command-line arguments
- file copying and archiving

Knowing the standard library makes you faster and helps you write simpler, more portable programs.

## Core Theory

### What the Standard Library Is

The standard library is a collection of modules included with Python itself.

If a module is in the standard library, you can usually import it without installing anything separately.

Examples of what it covers:

- dates and time
- file paths
- JSON
- math
- random values
- command-line arguments
- file operations

### Useful Modules to Know Early

#### `math`

Useful for mathematical functions and constants.

```python
import math

math.sqrt(16)
math.pi
```

#### `random`

Useful for choosing random values or generating simple random numbers.

```python
import random

random.randint(1, 10)
random.choice(["red", "blue", "green"])
```

#### `datetime`

Useful for working with dates and times.

```python
from datetime import datetime

datetime.now()
```

#### `json`

Useful for converting between Python data and JSON text.

```python
import json

json.dumps({"name": "Alya"})
json.loads('{"name": "Alya"}')
```

This matters because JSON is everywhere in APIs, configuration, and stored data.

#### `pathlib`

Useful for path handling in a cleaner, more object-oriented way.

```python
from pathlib import Path

Path("notes.txt").exists()
Path("data") / "report.txt"
```

`pathlib` is often easier to read than manual string-based path building.

#### `collections`

Useful for specialized containers such as counters and default dictionaries.

```python
from collections import Counter

Counter(["a", "b", "a"])
```

### Why the Standard Library Matters

Using the standard library is often better than reinventing a solution because:

- it is already tested
- it is widely understood
- it reduces unnecessary dependencies
- it makes your code more idiomatic
- it improves portability for other developers

This does not mean third-party packages are bad.
It just means you should first check whether Python already offers a solid built-in solution.

## Quick Walkthrough

Imagine a script that records the current time and saves a JSON file:

```python
from datetime import datetime
from pathlib import Path
import json

data = {
    "created_at": datetime.now().isoformat(),
    "status": "ok",
}

path = Path("output.json")
path.write_text(json.dumps(data, indent=2), encoding="utf-8")
```

This small script uses only the standard library, yet it already handles:

- timestamps
- structured data
- path handling
- file writing

That is a strong example of how much Python gives you for free.

## Rules of Thumb

- before installing a package, check whether the standard library already solves the problem
- learn a few core modules deeply instead of memorizing many shallowly
- prefer readable standard tools over custom utility code when possible
- use official documentation when exploring unfamiliar modules
- keep your dependency list smaller when a built-in option is sufficient

## Mental Model

Before installing a package or writing a tool from scratch, ask:

`Does Python already provide a standard way to do this?`

That question can save time, reduce maintenance work, and make your code easier for others to understand.

## Common Mistakes

- forgetting to learn the built-in tools first
- adding dependencies too early
- rewriting simple utilities that the standard library already provides
- using third-party packages for very small tasks with built-in solutions
- assuming the standard library is only for beginner projects

## Practice Prompts

1. What is the standard library?
2. Why is `json` useful in real programs?
3. Why should `pathlib` often be preferred over manual string path building?
4. When is it reasonable to use a third-party package instead of the standard library?

## Mini Exercises

1. Use `random.choice()` to select a random item from a list.
2. Convert a Python dictionary to JSON text and back again.
3. Build a file path with `pathlib` instead of manual string concatenation.

## Mastery Checklist

- I understand what the standard library is.
- I can name several useful built-in modules.
- I know why built-in tools often improve reliability and clarity.
- I understand that built-in tools can reduce dependency bloat.
- I know to check the standard library before reinventing simple solutions.
