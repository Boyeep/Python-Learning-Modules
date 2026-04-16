# Module 9: File I/O

## Learning Objectives

By the end of this lesson, you should understand:

- what File I/O means in practical programming
- how Python reads, writes, and appends file content
- why file handling requires care around paths, encoding, and errors
- how context managers make file work safer

## Big Idea

File I/O means input and output involving files.

Programs often need to:

- read configuration
- save results
- load datasets
- write logs

Understanding file handling is essential because real programs frequently move data between memory and persistent storage.

## Why This Matters

Unlike variables in memory, files live outside your running program.
That means file work introduces new concerns:

- files may not exist
- permissions may block access
- content may be malformed
- paths may differ across environments

File I/O is where simple scripts start interacting with the real world.

## Core Theory

### Reading Files

A common pattern is:

```python
with open("notes.txt", "r", encoding="utf-8") as file:
    content = file.read()
```

`read()` loads the entire file as one string.

For line-by-line processing, you might do this instead:

```python
with open("notes.txt", "r", encoding="utf-8") as file:
    for line in file:
        print(line.strip())
```

### Writing Files

Writing creates or replaces content:

```python
with open("notes.txt", "w", encoding="utf-8") as file:
    file.write("Hello, world!")
```

Be careful: `"w"` replaces the previous contents of the file.

### Append Mode

Append mode adds content to the end instead of replacing what was already there.

```python
with open("notes.txt", "a", encoding="utf-8") as file:
    file.write("\nNew line")
```

This is useful for logs, histories, or accumulating results over time.

### Why `with` Matters

The `with` statement creates a context manager.

It helps ensure resources are cleaned up properly.
In file work, that means the file is closed automatically even if an error happens.

Without `with`, you must remember to close the file yourself.
That is easy to forget and can cause subtle problems.

### Common Modes

Some common file modes are:

- `"r"` read
- `"w"` write and replace contents
- `"a"` append
- `"rb"` read binary
- `"wb"` write binary

Text mode is common for strings.
Binary mode is used for things like images, PDFs, or other non-text files.

### Encoding Matters

Text files need an encoding so Python knows how to interpret bytes as characters.

```python
with open("notes.txt", "r", encoding="utf-8") as file:
    content = file.read()
```

Using `utf-8` is a strong default for modern text files.

### Path Handling

Using `pathlib` is often clearer and safer than manual path strings.

```python
from pathlib import Path

path = Path("data") / "notes.txt"
```

This makes path construction easier to read and more portable.

### File Errors Are Normal

Common file-related exceptions include:

- `FileNotFoundError`
- `PermissionError`
- `IsADirectoryError`

That means file I/O should be approached with the same care you learned in error handling.

## Quick Walkthrough

Imagine a small report writer:

```python
from pathlib import Path

report_path = Path("reports") / "summary.txt"
report_path.parent.mkdir(exist_ok=True)

with report_path.open("w", encoding="utf-8") as file:
    file.write("Daily summary\n")
    file.write("Tasks completed: 5\n")
```

This example shows:

- `pathlib` for path building
- directory creation before writing
- text output with explicit encoding
- safe file handling through a context manager

## Rules of Thumb

- prefer `with` when working with files
- remember that `"w"` overwrites existing data
- use `utf-8` unless you have a reason not to
- avoid fragile hardcoded paths when `pathlib` would be clearer
- assume file operations can fail and plan for that

## Mental Model

File I/O connects your program to persistent data outside memory.

That means:

- failures are more likely
- paths matter
- permissions matter
- cleanup matters

Think of file handling as crossing a boundary between your program and the outside environment.

## Common Mistakes

- forgetting that `"w"` overwrites existing content
- forgetting to close files when not using `with`
- assuming the file always exists
- hardcoding fragile file paths
- reading an entire huge file when line-by-line processing would be safer

## Practice Prompts

1. What does File I/O mean?
2. Why is `with open(...)` better than manual open/close in most cases?
3. What is the difference between `"w"` and `"a"`?
4. Why is `pathlib` often a better choice than manual string paths?

## Mini Exercises

1. Write text to a file and then read it back.
2. Append a new line to an existing file.
3. Use `pathlib` to build a path inside a `data` folder.

## Mastery Checklist

- I can explain basic file reading and writing.
- I understand why `with` is important.
- I know common file modes and when to use them.
- I understand why encoding matters for text files.
- I know that file handling requires path awareness and error awareness.
