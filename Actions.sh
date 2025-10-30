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
if ! command -v shellcheck >/dev/null; then #checks if shellcheck is present
    echo "You are missing the shellcheck dependency"
    else
        for bash_script in *.sh;do
            if shellcheck "$bash_script";then 
                 echo "$bash_script Syntax ✅"
                else echo "$bash_script Syntax ❌ "
            fi
        done
fi

# YAML
if ! command -v yamllint >/dev/null; then #checks if shellcheck is present
    echo "You are missing the yamllint dependency"
     else
        for yaml_file in *.yaml;do
            if yamllint "$yaml_file";then 
                 echo "$yaml_file Syntax ✅"
                else echo "$yaml_file Syntax ❌ "
            fi
        done
fi
#   PHP
for php in *.php;do
    if php -l "$php" >/dev/null;then 
        echo "$php Syntax ✅"
        else echo "$php Syntax ❌ "
    fi
done