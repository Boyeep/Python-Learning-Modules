# Track 2 Practice: Multi-File and Built-ins

This workbook covers practice for:

- Module 6: Modules and `__main__`
- Module 7: Docstrings
- Module 8: Python Standard Library
- Module 9: File I/O

## Module 6 Practice: Modules and `__main__`

### Quick Questions

1. What problem do modules solve?
2. What happens differently when a file is imported instead of run directly?
3. Why is `if __name__ == "__main__":` useful?

### Short Coding Tasks

1. Create a file `math_utils.py` with two small functions.
2. Create another file that imports and uses those functions.
3. Add a `main()` function and a `__main__` block to one file.

## Module 7 Practice: Docstrings

### Quick Questions

1. What is the difference between a docstring and a comment?
2. What should a good docstring explain first?
3. Why do docstrings matter in larger codebases?

### Short Coding Tasks

1. Write a function with no docstring, then improve it with one.
2. Add docstrings to a module and two functions.
3. Rewrite one weak docstring into a clearer one.

## Module 8 Practice: Python Standard Library

### Quick Questions

1. What is the standard library?
2. Why should you check the standard library before installing another package?
3. What is one practical use of `json`?

### Short Coding Tasks

1. Use `math` to calculate a square root.
2. Use `random` to simulate a dice roll.
3. Use `datetime` to print the current date and time.
4. Use `json` to encode and decode a small dictionary.
5. Use `pathlib` to check whether a file exists.

## Module 9 Practice: File I/O

### Quick Questions

1. What does File I/O mean?
2. Why is `with open(...)` usually the safest pattern?
3. What is the difference between write mode and append mode?

### Short Coding Tasks

1. Create a file and write three lines into it.
2. Read the file back and print its contents.
3. Append another line.
4. Use `pathlib` to build the file path instead of manual string concatenation.

## Mini Challenge

Build a tiny note-taking project with two files:

- one file stores reusable functions
- one file runs the program

The project should:

- let the user add a note
- save the note to a text file
- read all saved notes
- include docstrings on the main helper functions

## Self-Check

- Can I split code into multiple files without getting confused?
- Can I explain when to use built-in modules instead of third-party packages?
