# Module 6: Modules and `__main__`

## Learning Objectives

By the end of this lesson, you should understand:

- what a Python module is and why modules exist
- how imports let files share reusable code
- how `__name__` changes depending on how a file is used
- why multi-file structure improves readability, testing, and maintenance

## Big Idea

A module is a Python file that can define functions, classes, variables, and constants for reuse.

As programs grow, splitting code into focused modules helps you separate responsibilities instead of forcing everything into one giant script.

## Why This Matters

A one-file script is fine for small experiments.
But real programs quickly run into problems:

- utility code gets repeated
- unrelated logic becomes mixed together
- testing gets harder
- onboarding new developers takes longer

Modules solve these problems by giving code a place to live.

## Core Theory

### Why Multi-File Code Exists

One-file programs become difficult when:

- many responsibilities mix together
- reusable logic is repeated
- multiple people need to edit the codebase
- you want one part of the program to be used by another part

Modules create boundaries.
Those boundaries make programs easier to reason about.

### A Module Is a Namespace

When you import a module, Python gives you access to the names defined inside that file.

For example:

```python
# math_utils.py
def add(a, b):
    return a + b
```

Then in another file:

```python
import math_utils

print(math_utils.add(2, 3))
```

The module acts like a container for related names.

### Basic Import Styles

Common import styles include:

```python
import math
from math import sqrt
import math as m
```

Each style changes how names are accessed:

- `import math` keeps the module name visible
- `from math import sqrt` brings one name directly into the current file
- `import math as m` creates a shorter alias

As a beginner, prefer clarity over cleverness.

### Imports Execute Module Code

Importing a module does not only give you names.
It also runs the top-level code in that file once.

That means code like this runs during import:

```python
print("This runs on import")
```

Because of that, top-level module code should usually be simple and safe.
You generally want definitions at the top level, not a lot of automatic behavior.

### `__name__` and `__main__`

Python gives every module a special variable called `__name__`.

When a file is run directly, `__name__` becomes `"__main__"`.
When it is imported, `__name__` becomes the module's actual name.

```python
def main():
    print("Running directly")

if __name__ == "__main__":
    main()
```

This pattern is useful because it lets one file serve two roles:

- reusable module when imported
- runnable script when executed directly

### A Typical Separation Pattern

A common pattern is:

- put reusable functions in helper modules
- keep the program entry point in one obvious place
- avoid mixing setup code, business logic, and utilities in the same file

That makes the codebase easier to test and extend later.

## Quick Walkthrough

Imagine a tiny calculator project:

```python
# calculator.py
def add(a, b):
    return a + b

def subtract(a, b):
    return a - b
```

```python
# main.py
from calculator import add

def main():
    print(add(2, 3))

if __name__ == "__main__":
    main()
```

This structure keeps:

- reusable logic in `calculator.py`
- execution logic in `main.py`

That separation becomes more valuable as the program grows.

## Rules of Thumb

- keep each module focused on one area of responsibility
- prefer clear imports over overly clever shortcuts
- avoid heavy side effects at module import time
- use `if __name__ == "__main__":` for code that should run only when the file is executed directly
- reorganize into modules when a file starts doing too many unrelated jobs

## Mental Model

Imports let one part of a program use another part without copying code.

Instead of thinking of a codebase as one long script, think of it as several cooperating files with clear responsibilities.

## Common Mistakes

- putting too much unrelated logic in one file
- creating circular imports between modules
- putting code with side effects at the top level carelessly
- using `from ... import *`, which makes code harder to read
- treating modules as folders for random leftovers instead of intentional boundaries

## Practice Prompts

1. What problem do modules solve in a growing codebase?
2. What changes when a file is run directly versus imported?
3. Why is `if __name__ == "__main__":` useful in both learning projects and real applications?
4. Why can top-level code in a module be risky?

## Mini Exercises

1. Create a module with one function and import it from another file.
2. Add a `main()` function to a file and guard it with `if __name__ == "__main__":`.
3. Refactor a one-file script idea into two files: one for reusable helpers and one for execution.

## Mastery Checklist

- I understand what a Python module is.
- I can explain a basic `import`.
- I know that importing runs top-level module code.
- I understand the purpose of `__main__`.
- I know why multi-file structure improves maintainability.
