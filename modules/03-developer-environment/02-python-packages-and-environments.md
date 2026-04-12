# Module 11: Python Packages and Environments

## Learning Objectives

By the end of this lesson, you should understand:

- what a Python package is
- what package managers do
- why virtual environments matter
- when tools like `pip`, `venv`, and Conda are used

## Big Idea

Real Python development is not only about writing code.
It is also about managing dependencies safely.

## Core Theory

### What a Package Is

A package is a unit of reusable Python code distributed for installation and use.

Examples:

- web frameworks
- data science tools
- testing utilities
- formatting and linting tools

### What `pip` Does

`pip` is the standard Python package installer.

It lets you install packages from package indexes.

Example:

```bash
pip install requests
```

### Why Virtual Environments Matter

Without isolation, package installations can conflict across projects.

One project may need one version of a package.
Another project may need a different version.

Virtual environments solve this by isolating dependencies per project.

### `venv`

`venv` is Python's built-in way to create a virtual environment.

Typical flow:

```bash
python -m venv .venv
```

After activation, installed packages stay local to that environment.

### Conda

Conda is another environment and package management system, common in data science and scientific computing.

Compared with basic `pip` plus `venv`, Conda is often used when:

- managing non-Python dependencies
- working in data science stacks
- using prebuilt binaries across platforms

### Requirements and Reproducibility

Projects often record dependencies in files such as:

- `requirements.txt`
- `pyproject.toml`

This matters because reproducibility is a core engineering concern.

If another developer cannot recreate your environment, collaboration becomes difficult.

## Mental Model

Dependencies are part of your project, even if you did not write them.

That means you must manage:

- versions
- isolation
- reproducibility

## Common Mistakes

- installing everything globally
- forgetting which environment is active
- not recording dependencies
- treating dependency setup as an afterthought

## Practice Prompts

1. Why is installing packages globally risky?
2. What problem does a virtual environment solve?
3. When might Conda be more useful than basic `pip` plus `venv`?

## Mastery Checklist

- I understand what Python packages are.
- I know what `pip` is for.
- I understand why isolated environments matter.
- I know that dependency management is part of professional development.
