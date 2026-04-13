# Track 1: Belajar Basic

This track is the foundation for understanding how programming works before moving into larger projects.

Its goal is not only to help you write Python syntax, but to help you think like a programmer:

- understand problems
- break them into steps
- turn steps into code
- manage data
- control program flow
- handle failure safely

## Lessons in This Track

1. [Variables and Data Types](./01-variables-and-data-types.md)
2. [Operators and String Manipulation](./02-operators-and-string-manipulation.md)
3. [Conditionals and Control Flow](./03-conditionals-and-control-flow.md)
4. [Data Structures and Functions](./04-data-structures-and-functions.md)
5. [Error Handling](./05-error-handling.md)

## How to Use This Track

This README works as the big-picture overview for the whole first module.

Use it to:

- see the overall concept map
- understand how the topics connect to each other
- get orientation before reading each detailed lesson

Then continue into the lesson files for deeper explanation of each topic.

## Section 1 — Basic Programming

### 1. What Is Programming

Programming is the process of giving instructions to a computer so it can solve a problem.

Computers do not understand vague intent.
They only understand instructions that are clear, logical, and structured.

Because of that, the main goal of learning programming is not just memorizing syntax.
It is learning how to turn problems into logic-based solutions.

### 2. How a Program Works

The basic flow of almost every program can be summarized as:

`Input -> Process -> Output`

A simple example:

- a user enters a number
- the program performs a calculation
- the result is displayed

This pattern appears again and again, from small calculators to large applications.

### 3. Programming Logic

The main focus of a programmer is not the language first.
It is logic.

A programmer should be able to:

- understand the problem
- break it into smaller steps
- arrange those steps clearly
- implement them in code

If the logic is strong, learning new languages becomes much easier.

## Section 2 — Variables & Data Types

### 4. Variables

A variable is a place to store data.

Its value can change while the program is running.
In Python, it usually looks like this:

```python
age = 18
```

In some other languages you may see something like `int age = 18;`, but Python does not require the type to be written before the variable name.

### 5. Rules for Variables

Variable names should be clear and should not be chosen carelessly.

Basic rules:

- do not start with a number
- do not use spaces
- do not use confusing names

Use descriptive names such as:

- `age`
- `total_price`
- `is_logged_in`

Good names make code easier to understand with less explanation.

### 6. Data Types Overview

Every piece of data has a type.

The data type determines:

- the shape of the data
- what operations make sense for it
- how Python processes it

Understanding data types is one of the most important foundations in programming.

### 7. Primitive Data Types

Common basic types introduced across many programming languages:

- Integer -> whole numbers
- Float or Double -> decimal numbers
- Boolean -> `true` or `false`
- Char -> a single character

In Python, the types you will most often see early are:

- `int`
- `float`
- `bool`
- `str`

Python does not use a separate `char` type the way some other languages do.
A single character in Python is typically still represented as a string of length one.

### 8. String Data Type

A string is a collection of characters used to represent text.

Example:

```python
message = "Hello World"
```

Strings are used for:

- user names
- addresses
- error messages
- titles
- and other text-based data

## Section 3 — Operators & String

### 9. Arithmetic Operators

Arithmetic operators are used for mathematical calculation.

Common examples:

- `+`
- `-`
- `*`
- `/`
- `%`

These operators are used when a program needs totals, averages, remainders, and many other numeric results.

### 10. Comparison Operators

Comparison operators are used to compare values.

Their result is always boolean.

Examples:

- `==`
- `!=`
- `>`
- `<`
- `>=`
- `<=`

These operators are essential for decision-making.

### 11. Logical Operators

Logical operators are used to combine conditions.

In many languages you may see:

- `&&` for AND
- `||` for OR
- `!` for NOT

In Python, the forms are:

- `and`
- `or`
- `not`

The concept is the same: combine or reverse boolean conditions.

### 12. String Manipulation

Strings can be processed in several ways, such as:

- joining text
- extracting characters
- counting string length

A simple example:

```python
"Hello" + " World"
```

String manipulation matters because many real programs interact with text, user input, files, and display content.

## Section 4 — Conditional & Control Flow

### 13. Conditional Statement

Conditionals are used for decision-making.

The program chooses an action based on a condition.
If the condition changes, the path of the program can also change.

### 14. If-Else

The basic conditional structure is:

- if the condition is true -> do one action
- if it is false -> do an alternative

In Python:

```python
if age >= 18:
    print("Adult")
else:
    print("Not an adult yet")
```

### 15. Nested Condition

An `if` can exist inside another `if`.

This is called a nested condition, and it is useful when a decision depends on multiple layers of checks.

The idea is useful, but it should be handled carefully so the code does not become too hard to read.

### 16. Switch Case and Python Alternatives

In many languages, `switch case` is used as an alternative to `if` when there are many fixed choices.

Traditional Python more often uses:

- `if` / `elif` / `else`

Modern Python also has:

- `match` / `case`

For basic learning, `if` / `elif` / `else` is still the most important starting point.

### 17. Looping Concept

Looping is used for repetition.

Its purpose is to avoid writing the same code again and again.

If an action must happen many times, a loop is usually a cleaner solution.

### 18. For Loop

A `for` loop is used when the number of repetitions is already known or when you are iterating through a collection of data.

Example:

```python
for number in range(5):
    print(number)
```

### 19. While Loop

A `while` loop is used when a condition determines whether repetition should continue.

Example:

```python
count = 0

while count < 5:
    print(count)
    count += 1
```

## Section 5 — Data Structure & Function

### 20. Data Structure

A data structure is a way to store and organize data.

The larger the amount of data, the more important good structure becomes.
Without data structures, data processing quickly becomes messy.

### 21. Array

In many languages, an array stores many values of the same type and is accessed by index.

In Python, the closest and most common beginner-friendly concept is the `list`.

Example:

```python
numbers = [10, 20, 30]
print(numbers[0])
```

### 22. Linked List

A linked list is a data structure made of connected nodes.

It is more flexible than an array in some situations, although it is not usually the first structure beginners use in day-to-day Python work.

Still, the concept is important because it helps you understand how data can be organized beyond ordinary indexed lists.

### 23. Stack & Queue

Two important basic data structure concepts:

- Stack -> LIFO (Last In First Out)
- Queue -> FIFO (First In First Out)

These ideas often appear in:

- task processing
- undo history
- system queues
- data traversal

In Python, queue-like behavior is often implemented with `collections.deque`.

### 24. Function

A function is a block of code that can be reused.

Functions help divide a program into smaller parts with clear purposes.

Example:

```python
def greet(name):
    print(f"Hello, {name}")
```

### 25. Function Benefit

Functions are important because they:

- reduce code duplication
- make programs cleaner
- make code easier to understand
- make testing and maintenance easier

The larger the program becomes, the more valuable functions become.

## Section 6 — Error Handling

### 26. Types of Errors

In general, programming errors can be grouped into:

- Syntax Error -> the code is written incorrectly
- Runtime Error -> the program fails while running
- Logical Error -> the program runs, but the result is wrong

Understanding the difference matters because each type is handled differently.

### 27. Debugging

Debugging is the process of finding and fixing errors.

It is one of the most important programming skills.
Learning to code does not mean writing perfect code immediately.
It means learning how to find and fix mistakes calmly and systematically.

### 28. Input Validation

Input validation means checking user input so the program remains safe and reasonable.

Examples:

- ensuring age input is actually numeric
- ensuring a field is not empty
- ensuring a value falls within an expected range

Validation makes programs stronger and safer.

### 29. Exception Handling

Exception handling is used to respond to errors so the program does not crash immediately.

This is especially important in languages such as Python and Java.

A Python example:

```python
try:
    number = int(input("Enter a number: "))
except ValueError:
    print("Input must be numeric")
```

### 30. Conclusion

Programming begins with basic foundations:

- variables
- data types
- operators
- control flow
- data structures
- functions
- error handling

All of these concepts are connected.

If the foundation is strong, learning more advanced topics becomes much easier.

## What You Should Understand After This Track

- what programming means in logical terms
- how programs move from input to output
- how data is stored and processed
- how programs make decisions
- how loops and functions improve code structure
- how errors are recognized, checked, and handled

## Core Mental Model

A Python program is a system of instructions that:

1. receives input
2. processes data
3. produces output
4. makes decisions
5. organizes data and logic
6. handles possible errors

If you understand that big-picture flow, your programming foundation is becoming solid.
