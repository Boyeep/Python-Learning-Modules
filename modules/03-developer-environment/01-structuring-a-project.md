# Module 10: Structuring a Python Project

## Learning Objectives

By the end of this lesson, you should understand:

- why project structure matters beyond personal preference
- what a maintainable Python project usually contains
- how structure supports readability, testing, and teamwork
- how to think about entry points, reusable code, and supporting files

## Big Idea

Good structure does not make code smart.
It makes code easier to understand, change, and extend.

Project structure is part of software design because it affects how easily humans can navigate the codebase.

## Why This Matters

As code grows, poor structure creates recurring confusion:

- where does the program start?
- where should reusable logic live?
- where do tests go?
- where is configuration stored?
- where should a new feature be added?

A good structure lowers mental overhead and helps a project stay healthy as it grows.

## Core Theory

### Why Structure Matters

Random file placement makes even decent code harder to work with.

Well-structured projects make it easier to:

- find the entry point
- understand responsibilities
- test parts of the system independently
- onboard new contributors

Good structure is not about making a project look impressive.
It is about making it navigable.

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
  README.md
  requirements.txt
```

As a project grows, you may also see:

- `docs/`
- `.venv/`
- `pyproject.toml`
- configuration files
- data or assets folders

### Common Separation Principles

A healthy project often follows a few principles:

- entry points should be easy to find
- reusable logic should not be mixed with one-off scripts
- tests should be separate from application code
- configuration should be explicit
- names should help readers orient themselves quickly

This does not force one exact layout.
It simply encourages intentional boundaries.

### Why `main.py` Often Exists

`main.py` often acts as an entry point.

It helps answer:

`Where does the program start?`

That question becomes more important as the project gains more files and responsibilities.

### Reusable Logic vs Execution Logic

One common mistake is mixing everything together:

- input/output
- business rules
- helper functions
- startup code

It is usually better to separate:

- reusable logic into modules
- execution logic into an entry point
- tests into their own location

That separation makes future changes less risky.

### Naming and Clarity

A good structure supports fast orientation.

Someone new to the project should be able to tell:

- where to run the app
- where to change core logic
- where to add tests
- where to look for configuration

File and folder names should make those answers easier, not harder.

## Quick Walkthrough

Imagine a small command-line app:

```text
weather_app/
  app/
    __init__.py
    main.py
    api.py
    formatting.py
  tests/
    test_formatting.py
  README.md
  pyproject.toml
```

Possible responsibilities:

- `main.py` starts the app
- `api.py` fetches or processes weather data
- `formatting.py` prepares readable output
- `tests/` checks expected behavior

Even this simple separation makes future growth much easier.

## Rules of Thumb

- keep the entry point easy to find
- group related logic together
- avoid dumping unrelated helpers into one vague file
- give tests a consistent home
- prefer a simple, clear structure over a deep, clever one

## Mental Model

Project structure is a communication tool.

It communicates:

- intent
- boundaries
- ownership

A well-structured project helps readers understand not only what the code does, but where different concerns belong.

## Common Mistakes

- dumping all logic into one file
- mixing tests with production code randomly
- naming files vaguely, such as `helpers.py` or `stuff.py`
- creating deep folders without clear purpose
- changing structure repeatedly without a strong reason

## Practice Prompts

1. Why is structure more important as a project grows?
2. Why should tests usually have a clear home?
3. What does a good entry point help a developer understand?
4. Why can an overly deep folder structure be a problem?

## Mini Exercises

1. Sketch a folder structure for a small CLI app.
2. Take a one-file script idea and split it into an entry file plus one helper module.
3. Decide where tests and documentation would live in that project.

## Mastery Checklist

- I understand why structure affects maintainability.
- I can describe the purpose of a simple project layout.
- I know why entry points and reusable modules should be separated.
- I understand why tests need a clear place in the project.
- I know that folder design is part of software design.
