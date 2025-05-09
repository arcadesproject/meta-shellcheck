# PDF Plot generator

## Overview
This repository automates LaTeX document compilation and plot generation using Makefile. It includes:
- **Makefile** to streamline building a PDF (`paper.pdf`) from a LaTeX file (`paper.tex`).
- Automatic plot generation using a Python script (`plot.py`).
- A **ShellCheck pre-commit hook** to ensure shell scripts follow best practices.

## Installation
Ensure you have the following dependencies installed:
- `pdflatex`
- `Python 3.x`
- `ShellCheck` (for linting shell scripts)

Clone the repository:
```sh
git clone <repo_url>
cd <repo_name>
```

## Usage

### Generate PDF and Plots

Run the following command to compile `paper.tex` and generate the necessary plots:

```sh
make
```

### Cleaning Up

Remove generated files:

```sh
make clean
```

### ShellCheck Pre-Commit Hook

This repository includes a **ShellCheck pre-commit hook** to check shell scripts. To set it up:

```sh
cp  pre-commit.sh .git/hooks/pre-commit chmod  +x .git/hooks/pre-commit
```

Each commit will run ShellCheck on relevant scripts, preventing common shell scripting errors.
