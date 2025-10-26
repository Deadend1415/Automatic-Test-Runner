#!/bin/bash
echo "🧪 Running pre-commit checks..."
#Syntax tests
#   Python
for python_file in *.py;do
    if python3 -m py_compile "$python_file";then 
        echo "$python_file Syntax ✅"
        else echo "$python_file Syntax ❌ "
    fi
done
#   Bash
for bash_file in *.sh;do
    if bash -n "$bash_file";then 
        echo "$bash_file Syntax ✅"
        else echo "$bash_file Syntax ❌ "
    fi
done