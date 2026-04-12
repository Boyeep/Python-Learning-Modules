# Module 10: Structuring a Python Project

## Learning Objectives

By the end of this lesson, you should understand:

- why project structure matters
- what a maintainable Python project usually contains
- how structure supports readability and teamwork

## Big Idea

Good structure does not make code smart.
It makes code easier to understand, change, and extend.

## Core Theory

### Why Structure Matters

As code grows, random file placement creates confusion:

- where does business logic go?
- where do tests live?
- where is configuration stored?
- which files are reusable and which are entry points?

Structure reduces mental overhead.

### Common Project Pieces

A simple Python project may contain:

```text
my_project/
  app/
    __init__.py
    main.py
    utils.py
  tests/
    test_main.py
  requirements.txt
  README.md
```

### Common Separation Principles

- entry points should be easy to find
- reusable logic should not be mixed with one-off scripts
- tests should be separate from application code
- configuration should be explicit

### Why `main.py` Often Exists

`main.py` often acts as an entry point.

It helps answer:

`Where does the program start?`

That becomes more useful as projects grow.

### Naming and Clarity

A good structure supports fast orientation.

Someone new to the project should be able to tell:

- where to run the app
- where to change core logic
- where to add tests

## Mental Model

Project structure is a communication tool.

It communicates:

- intent
- boundaries
- ownership

## Common Mistakes

- dumping all logic into one file
- mixing tests with production code randomly
- naming files vaguely
- creating deep folders without clear purpose

## Practice Prompts

1. Why is structure more important as a project grows?
2. Why should tests usually have a clear home?
3. What does a good entry point help a developer understand?

## Mastery Checklist

- I understand why structure affects maintainability.
- I can describe the purpose of a simple project layout.
- I know why entry points and reusable modules should be separated.
- I understand that folder design is part of software design.
