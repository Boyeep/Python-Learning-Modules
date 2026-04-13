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

If the lesson files are topic-by-topic explanations, this file is the bigger map showing how the whole module fits together.

## Section 1 — Basic Programming

### 1. What Is Programming

Programming is the process of giving instructions to a computer so it can solve a problem.

Computers do not understand vague intent.
They only understand instructions that are clear, logical, and structured.

Because of that, the main goal of learning programming is not just memorizing syntax.
It is learning how to turn problems into logic-based solutions.

Programming also means learning to think systematically.
When humans see a problem as "something we want to solve," programmers learn to see it as:

- what input is available
- what rules apply
- what steps must run
- what output is expected

### 2. How a Program Works

The basic flow of almost every program can be summarized as:

`Input -> Process -> Output`

A simple example:

- a user enters a number
- the program performs a calculation
- the result is displayed

This pattern appears again and again, from small calculators to large applications.

Example code:

```python
number = int(input("Enter a number: "))  # input
result = number * 2                      # process
print("Result:", result)                 # output
```

When reading code, it helps to ask:

- which part receives input?
- which part processes data?
- which part produces output?

### 3. Programming Logic

The main focus of a programmer is not the language first.
It is logic.

A programmer should be able to:

- understand the problem
- break it into smaller steps
- arrange those steps clearly
- implement them in code

If the logic is strong, learning new languages becomes much easier.

Example problem:

`Calculate the total payment after a discount.`

Logical thinking:

1. get the original price
2. get the discount percentage
3. calculate the discount amount
4. subtract the discount from the original price
5. display the result

Example code:

```python
original_price = 100000
discount_percent = 10
discount_amount = original_price * discount_percent / 100
final_price = original_price - discount_amount

print("Final price:", final_price)
```

## Section 2 — Variables & Data Types

### 4. Variables

A variable is a place to store data.

Its value can change while the program is running.
In Python, it usually looks like this:

```python
age = 18
```

In some other languages you may see something like `int age = 18;`, but Python does not require the type to be written before the variable name.

Example with several variables:

```python
name = "Alya"
age = 18
height = 165.5
is_student = True
```

Variables help a program "remember" data so it can be used later.

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

Poor names:

```python
x = 18
y = 200000
```

Clearer names:

```python
age = 18
total_price = 200000
```

Examples of invalid names:

```python
# 2age = 18
# total price = 100
# class = "Python"
```

In Python, the most common naming style for variables is `snake_case`.

### 6. Data Types Overview

Every piece of data has a type.

The data type determines:

- the shape of the data
- what operations make sense for it
- how Python processes it

Understanding data types is one of the most important foundations in programming.

Example:

```python
age = 18
name = "Alya"
active = True

print(type(age))
print(type(name))
print(type(active))
```

If the data type is misunderstood, program results become confusing or may even cause errors.

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

Example:

```python
whole_number = 10
decimal_number = 3.14
is_active = True
letter = "A"

print(type(whole_number))
print(type(decimal_number))
print(type(is_active))
print(type(letter))
```

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

Basic string operations:

```python
message = "Hello World"

print(message[0])       # first character
print(len(message))     # string length
print(message.lower())  # lowercase version
```

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

Example:

```python
a = 10
b = 3

print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a % b)
```

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

Example:

```python
age = 18

print(age == 18)
print(age != 20)
print(age >= 17)
```

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

Example:

```python
age = 20
has_card = True

print(age >= 18 and has_card)
print(age < 18 or has_card)
print(not has_card)
```

### 12. String Manipulation

Strings can be processed in several ways, such as:

- joining text
- extracting characters
- counting string length
- replacing content
- cleaning spaces

Simple example:

```python
first = "Hello"
second = "World"

combined = first + " " + second
print(combined)
print(combined[0])
print(len(combined))
print(combined.replace("World", "Python"))
```

String manipulation matters because many real programs interact with text, user input, files, and display content.

## Section 4 — Conditional & Control Flow

### 13. Conditional Statement

Conditionals are used for decision-making.

The program chooses an action based on a condition.
If the condition changes, the path of the program can also change.

Simple example:

```python
score = 80

if score >= 75:
    print("Passed")
```

### 14. If-Else

The basic conditional structure is:

- if the condition is true -> do one action
- if it is false -> do an alternative

In Python:

```python
age = 16

if age >= 18:
    print("Adult")
else:
    print("Not an adult yet")
```

If there are more than two choices, you can use `elif`:

```python
score = 85

if score >= 90:
    print("A")
elif score >= 80:
    print("B")
else:
    print("Needs more study")
```

### 15. Nested Condition

An `if` can exist inside another `if`.

This is called a nested condition, and it is useful when a decision depends on multiple layers of checks.

The idea is useful, but it should be handled carefully so the code does not become too hard to read.

Example:

```python
age = 20
has_ticket = True

if age >= 18:
    if has_ticket:
        print("Can enter")
    else:
        print("Must buy a ticket first")
else:
    print("Too young")
```

### 16. Switch Case and Python Alternatives

In many languages, `switch case` is used as an alternative to `if` when there are many fixed choices.

Traditional Python more often uses:

- `if` / `elif` / `else`

Modern Python also has:

- `match` / `case`

For basic learning, `if` / `elif` / `else` is still the most important starting point.

Example with `match`:

```python
day = "monday"

match day:
    case "monday":
        print("Start working")
    case "sunday":
        print("Holiday")
    case _:
        print("Regular day")
```

### 17. Looping Concept

Looping is used for repetition.

Its purpose is to avoid writing the same code again and again.

If an action must happen many times, a loop is usually a cleaner solution.

Without a loop:

```python
print("Hello")
print("Hello")
print("Hello")
```

With a loop:

```python
for _ in range(3):
    print("Hello")
```

### 18. For Loop

A `for` loop is used when the number of repetitions is already known or when you are iterating through a collection of data.

Example:

```python
for number in range(5):
    print(number)
```

Example iterating over a list:

```python
fruits = ["apple", "mango", "orange"]

for item in fruits:
    print(item)
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

A `while` loop is often useful when you do not know in advance how many times repetition should happen, as long as a certain condition remains true.

## Section 5 — Data Structure & Function

### 20. Data Structure

A data structure is a way to store and organize data.

The larger the amount of data, the more important good structure becomes.
Without data structures, data processing quickly becomes messy.

In early Python learning, the most common data structures are:

- `list`
- `tuple`
- `set`
- `dict`

Each one behaves differently.

### 21. Array

In many languages, an array stores many values of the same type and is accessed by index.

In Python, the closest and most common beginner-friendly concept is the `list`.

Example:

```python
numbers = [10, 20, 30]
print(numbers[0])
numbers.append(40)
print(numbers)
```

If you understand indexing, you are beginning to understand how ordered data is stored and accessed.

### 22. Linked List

A linked list is a data structure made of connected nodes.

It is more flexible than an array in some situations, although it is not usually the first structure beginners use in day-to-day Python work.

Still, the concept is important because it helps you understand how data can be organized beyond ordinary indexed lists.

Simple illustration:

```python
class Node:
    def __init__(self, data, next_node=None):
        self.data = data
        self.next = next_node

node3 = Node(30)
node2 = Node(20, node3)
node1 = Node(10, node2)

print(node1.data)
print(node1.next.data)
```

You do not need to memorize this immediately.
The key idea is that each node stores data and a reference to the next node.

### 23. Stack & Queue

Two important basic data structure concepts:

- Stack -> LIFO (Last In First Out)
- Queue -> FIFO (First In First Out)

These ideas often appear in:

- task processing
- undo history
- system queues
- data traversal

Stack example:

```python
stack = []
stack.append("A")
stack.append("B")
stack.append("C")

print(stack.pop())  # C
print(stack.pop())  # B
```

Queue example:

```python
from collections import deque

queue = deque(["A", "B"])
queue.append("C")

print(queue.popleft())  # A
print(queue.popleft())  # B
```

### 24. Function

A function is a block of code that can be reused.

Functions help divide a program into smaller parts with clear purposes.

Example:

```python
def greet(name):
    print(f"Hello, {name}")

greet("Alya")
```

Functions often receive input through parameters and sometimes return results with `return`.

```python
def add(a, b):
    return a + b

result = add(2, 3)
print(result)
```

### 25. Function Benefit

Functions are important because they:

- reduce code duplication
- make programs cleaner
- make code easier to understand
- make testing and maintenance easier

The larger the program becomes, the more valuable functions become.

Without a function:

```python
print(5 * 2)
print(10 * 2)
print(20 * 2)
```

With a function:

```python
def double(number):
    return number * 2

print(double(5))
print(double(10))
print(double(20))
```

## Section 6 — Error Handling

### 26. Types of Errors

In general, programming errors can be grouped into:

- Syntax Error -> the code is written incorrectly
- Runtime Error -> the program fails while running
- Logical Error -> the program runs, but the result is wrong

Understanding the difference matters because each type is handled differently.

Examples:

```python
# Syntax Error
# if True
#     print("Hello")

# Runtime Error
# print(10 / 0)

age = 18

# Logical Error
if age > 18:  # should be >= 18
    print("Adult")
```

### 27. Debugging

Debugging is the process of finding and fixing errors.

It is one of the most important programming skills.
Learning to code does not mean writing perfect code immediately.
It means learning how to find and fix mistakes calmly and systematically.

One simple form of debugging is checking variable values while the program runs:

```python
number = 5
result = number * 2

print("number =", number)
print("result =", result)
```

Good debugging often includes:

- reading the error message
- checking input
- inspecting variable values
- testing assumptions one by one

### 28. Input Validation

Input validation means checking user input so the program remains safe and reasonable.

Examples:

- ensuring age input is actually numeric
- ensuring a field is not empty
- ensuring a value falls within an expected range

Validation makes programs stronger and safer.

Example:

```python
age_text = input("Enter age: ")

if age_text.isdigit():
    age = int(age_text)
    print("Valid age:", age)
else:
    print("Input must be numeric")
```

### 29. Exception Handling

Exception handling is used to respond to errors so the program does not crash immediately.

This is especially important in languages such as Python and Java.

Python example:

```python
try:
    number = int(input("Enter a number: "))
    result = 10 / number
except ValueError:
    print("Input must be numeric")
except ZeroDivisionError:
    print("Number must not be zero")
else:
    print("Result:", result)
finally:
    print("Program finished")
```

This pattern helps a program give a clear response when something goes wrong.

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

## Quick Module 1 Code Summary

If you want to see how all the material connects in one small code sample, this example helps:

```python
from collections import deque

name = "Alya"
age = 18
scores = [80, 90, 85]
queue = deque(["task-1", "task-2"])

def average(data):
    return sum(data) / len(data)

try:
    if age >= 18 and len(name) > 0:
        print(f"{name} is an active user.")

    for item in scores:
        print("Score:", item)

    print("Average:", average(scores))
    print("First task:", queue.popleft())
except Exception as error:
    print("An error occurred:", error)
```

This code shows:

- variables and data types
- operators
- conditionals
- loops
- data structures
- functions
- error handling

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
