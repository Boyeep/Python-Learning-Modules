# Module 6: Modules and `__main__`

## Learning Objectives

By the end of this lesson, you should understand:

- what a module is
- why code is split into multiple files
- how imports work
- what `if __name__ == "__main__":` means

## Big Idea

A module is a Python file that can define functions, classes, and variables for reuse.

As code grows, splitting logic into modules makes programs easier to read, test, and maintain.

## Core Theory

### Why Multi-File Code Exists

One-file programs become hard to manage when:

- many responsibilities mix together
- reusable logic is repeated
- multiple people work on the same codebase

Modules help solve that by separating related logic.

### Basic Import

Suppose you have:

```python
# math_utils.py
def add(a, b):
    return a + b
```

Then in another file:

```python
from math_utils import add

print(add(2, 3))
```

### Import Styles

Common forms:

```python
import math
from math import sqrt
import math as m
```

Each style changes how names are accessed.

### `__name__` and `__main__`

Python gives each module a special variable called `__name__`.

When a file is run directly, `__name__` becomes `"__main__"`.
When it is imported, `__name__` becomes the module's name.

```python
def main():
    print("Running directly")

if __name__ == "__main__":
    main()
```

Why this matters:

- you can keep reusable code in the file
- you can still run the file directly for testing or execution

## Mental Model

Imports let one part of a program use another part without copying code.

That is how software becomes modular instead of chaotic.

## Common Mistakes

- putting too much unrelated logic in one file
- creating circular imports
- forgetting that imported code may run at import time if written carelessly

## Practice Prompts

1. What problem do modules solve?
2. What changes when a file is run directly versus imported?
3. Why is `if __name__ == "__main__":` useful?

## Mastery Checklist

- I understand what a Python module is.
- I can explain a basic `import`.
- I understand the purpose of `__main__`.
- I know why multi-file structure improves maintainability.
