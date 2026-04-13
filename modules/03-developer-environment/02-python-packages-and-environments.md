# Module 11: Python Packages and Environments

## Learning Objectives

By the end of this lesson, you should understand:

- what a Python package is
- what package managers do
- why virtual environments matter
- when tools like `pip`, `venv`, and Conda are used

## Big Idea

Real Python development is not only about writing code.
It is also about managing dependencies safely, predictably, and reproducibly.

The more serious a project becomes, the more important environment discipline becomes.

## Why This Matters

Modern Python projects rarely consist only of your own code.
They depend on libraries written by other people.

That creates practical questions:

- which packages does this project need?
- which versions are compatible?
- how do I keep one project from interfering with another?
- how can someone else recreate the same setup?

Packages and environments are the tools that answer those questions.

## Core Theory

### What a Package Is

A package is a unit of reusable Python code distributed for installation and use.

Examples include:

- web frameworks
- data science tools
- testing utilities
- formatting and linting tools

Using packages lets you build on existing work instead of starting from zero.

### What `pip` Does

`pip` is the standard Python package installer.

It lets you install packages from package indexes.

Example:

```bash
pip install requests
```

In practice, `pip` helps you add, upgrade, and manage Python dependencies.

### Why Virtual Environments Matter

Without isolation, package installations can conflict across projects.

One project may need one version of a package.
Another project may need a different version.

If both rely on the same global environment, they can easily break each other.

Virtual environments solve this by isolating dependencies per project.

### `venv`

`venv` is Python's built-in way to create a virtual environment.

Typical flow:

```bash
python -m venv .venv
```

After activation, installed packages stay local to that environment instead of affecting every Python project on your machine.

That is why many projects keep a `.venv` folder in the project root.

### Conda

Conda is another environment and package management system, common in data science and scientific computing.

Compared with basic `pip` plus `venv`, Conda is often used when:

- managing non-Python dependencies
- working in data science stacks
- using prebuilt binaries across platforms

For many general Python applications, `pip` and `venv` are enough.
But it is useful to know why Conda exists.

### Requirements and Reproducibility

Projects often record dependencies in files such as:

- `requirements.txt`
- `pyproject.toml`

This matters because reproducibility is a core engineering concern.

If another developer cannot recreate your environment, collaboration becomes difficult.

Dependency recording helps teams answer:

- what should be installed?
- which versions are expected?
- how do we get consistent behavior across machines?

### Dependency Management Is Part of the Project

It is tempting to think dependencies are "someone else's code," and therefore not really part of your work.

But in practice, they are part of your system.
That means you must still manage:

- versions
- isolation
- compatibility
- reproducibility

## Quick Walkthrough

A simple professional setup might look like this:

1. Create a project folder.
2. Create a virtual environment with `python -m venv .venv`.
3. Activate the environment.
4. Install the packages you need with `pip`.
5. Record them in `requirements.txt` or `pyproject.toml`.

That process makes the project easier to share and maintain.

## Rules of Thumb

- avoid installing project dependencies globally
- use one environment per project
- record dependencies so others can recreate the setup
- know which environment is active before installing packages
- keep dependency management simple unless your project truly needs more complexity

## Mental Model

Dependencies are part of your project, even if you did not write them.

That means you must manage:

- versions
- isolation
- reproducibility

Think of the environment as part of the codebase's operating conditions, not as an optional side detail.

## Common Mistakes

- installing everything globally
- forgetting which environment is active
- not recording dependencies
- treating dependency setup as an afterthought
- assuming environment problems are "just machine issues" instead of project issues

## Practice Prompts

1. Why is installing packages globally risky?
2. What problem does a virtual environment solve?
3. When might Conda be more useful than basic `pip` plus `venv`?
4. Why is dependency recording important for teamwork?

## Mini Exercises

1. Write down the steps to create a new virtual environment for a project.
2. Explain the difference between installing a package globally and inside a project environment.
3. List three kinds of tools that are commonly installed as Python packages.

## Mastery Checklist

- I understand what Python packages are.
- I know what `pip` is for.
- I understand why isolated environments matter.
- I know why dependency recording supports reproducibility.
- I understand that dependency management is part of professional development.
