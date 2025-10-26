#!/bin/bash
echo "🧪 Running pre-commit checks..."
#Syntax tests
if python3 -m py_compile *.py;then 
    echo "Python Syntax ✅"
    else echo "Python Syntax ❌ "
    exit 1
fi