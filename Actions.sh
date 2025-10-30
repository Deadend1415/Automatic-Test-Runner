#!/bin/bash
echo "🧪 Running pre-commit checks..."

shopt -s nullglob #loop just skips instead of processing a literal *.sh

DIR=dummy_files #directory where the files to be tested are located

#Verificatin Function
verify() {
  local filetype=$1
  local command=$2
  for file in $DIR/*$filetype; do 
    if eval "$command \"$file\"";then 
        echo "$file Syntax ✅"
     else echo "$file Syntax ❌ "
    fi
done
}

#Syntax tests
#   Python
verify .py "python3 -m py_compile"

#   Bash
if ! command -v shellcheck >/dev/null; then #checks if shellcheck is present
    echo "You are missing the shellcheck dependency"
    else
        verify .sh "shellcheck --enable=SC2154"
fi

# YAML
if ! command -v yamllint >/dev/null; then #checks if yamlint is present
    echo "You are missing the yamllint dependency"
     else
        verify .yaml "yamllint"    
fi

#   PHP
if ! command -v php >/dev/null; then #checks if php is present
    echo "You are missing the php dependency"
     else
        verify .php 'php -l >/dev/null'    
fi

#   JavaScript
if ! command -v node >/dev/null; then #checks if node is present
    echo "You are missing the node dependency"
     else
        verify .js "node --check"    
fi