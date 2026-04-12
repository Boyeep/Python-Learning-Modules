# Module 9: File I/O

## Learning Objectives

By the end of this lesson, you should understand:

- what File I/O means
- how Python reads and writes files
- why file handling requires care
- how context managers make file work safer

## Big Idea

File I/O means input and output with files.

Programs often need to:

- read configuration
- save results
- load datasets
- write logs

Understanding file handling is essential for real-world programming.

## Core Theory

### Reading Files

```python
with open("notes.txt", "r", encoding="utf-8") as file:
    content = file.read()
```

### Writing Files

```python
with open("notes.txt", "w", encoding="utf-8") as file:
    file.write("Hello, world!")
```

### Append Mode

```python
with open("notes.txt", "a", encoding="utf-8") as file:
    file.write("\nNew line")
```

### Why `with` Matters

The `with` statement creates a context manager.

It helps ensure resources are cleaned up properly.
In file work, that means the file is closed automatically even if an error happens.

### Common Modes

- `"r"` read
- `"w"` write and replace contents
- `"a"` append
- `"rb"` read binary
- `"wb"` write binary

### Path Handling

Using `pathlib` is often clearer than manual path strings.

```python
from pathlib import Path

path = Path("data") / "notes.txt"
```

## Mental Model

File I/O connects your program to persistent data outside memory.

That means:

- failures are more likely
- paths matter
- permissions matter
- cleanup matters

## Common Mistakes

- forgetting that `"w"` overwrites existing content
- forgetting to close files when not using `with`
- assuming the file always exists
- hardcoding fragile file paths

## Practice Prompts

1. What does File I/O mean?
2. Why is `with open(...)` better than manual open/close in most cases?
3. What is the difference between `"w"` and `"a"`?

## Mastery Checklist

- I can explain basic file reading and writing.
- I understand why `with` is important.
- I know common file modes.
- I understand that file handling requires error awareness.
