# Description
This project provides an automated pre-commit system that validates your code before any commit is completed. It integrates directly with Git hooks to scan for:
  * Linting issues
  * Syntax errors
  * Common formatting problems

The goal is to stop broken or poorly formatted code from ever entering your repository, keeping your history clean  and code sanity intact.

# Installation

## Add the tool to your project root
Clone or add this repository directly into the root of your project (required for correct hook operation):
```
git submodule add https://github.com/Deadend1415/Automatic-Test-Runner.git ATR-hooks
```
Run the script 
```
bash ATR-hooks/setup.sh
```

# Dependencies
- ShellCheck
- Python
- PHP
- Node
- Yamlint
