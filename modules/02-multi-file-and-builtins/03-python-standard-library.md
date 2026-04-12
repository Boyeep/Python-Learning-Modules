# Module 8: Python Standard Library

## Learning Objectives

By the end of this lesson, you should understand:

- what the Python standard library is
- why it matters
- common categories of built-in modules
- why using built-ins is often better than rewriting basic tools yourself

## Big Idea

Python comes with a large standard library.

That means many common programming problems already have trusted tools built in.

## Core Theory

### What the Standard Library Is

The standard library is a collection of modules included with Python.

Examples of what it covers:

- dates and time
- file paths
- JSON
- math
- random values
- command-line arguments
- copying files

### Useful Modules to Know Early

#### `math`

```python
import math
math.sqrt(16)
math.pi
```

#### `random`

```python
import random
random.randint(1, 10)
```

#### `datetime`

```python
from datetime import datetime
datetime.now()
```

#### `json`

```python
import json
json.dumps({"name": "Alya"})
json.loads('{"name": "Alya"}')
```

#### `pathlib`

```python
from pathlib import Path
Path("notes.txt").exists()
```

### Why the Standard Library Matters

Using the standard library is often better than reinventing a solution because:

- it is already tested
- it is widely understood
- it reduces unnecessary dependencies
- it makes your code more idiomatic

## Mental Model

Before installing a package or writing a tool from scratch, ask:

`Does Python already provide a standard way to do this?`

That question can save a lot of time.

## Common Mistakes

- forgetting to learn the built-in tools
- adding dependencies too early
- using a third-party package for a very simple standard-library problem

## Practice Prompts

1. What is the standard library?
2. Why is `json` useful in real programs?
3. Why should `pathlib` often be preferred over manual string path building?

## Mastery Checklist

- I understand what the standard library is.
- I can name several useful built-in modules.
- I know why built-in tools often improve reliability.
- I understand that standard tools improve readability across teams.
