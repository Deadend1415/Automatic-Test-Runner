#!/bin/bash
ROOT_HOOKS="../.git/hooks"
read -rp "Do you want to install the git hooks? (Y/n): " choice
choice=${choice:-Y}
if [[ "$choice" == [Yy] ]]; then
  cp pre-commit $ROOT_HOOKS
  echo "Hook placed"
  else echo "Operation Aborted"
fi
echo "If you dont intend on checking syntax for a language you can skip the dependecy"
sleep 5

read -rp "Check Bash syntax? (y/N): " choice
choice=${choice:-N}
if [[ "$choice" == [Yy] ]]; then
  sudo apt install shellcheck
fi

read -rp "Check YAML syntax? (y/N): " choice
choice=${choice:-N}
if [[ "$choice" == [Yy] ]]; then
  sudo apt install yamlint
fi

read -rp "Check PHP syntax? (y/N): " choice
choice=${choice:-N}
if [[ "$choice" == [Yy] ]]; then
  sudo apt install php
fi

read -rp "Check JavaScript syntax? (y/N): " choice
choice=${choice:-N}
if [[ "$choice" == [Yy] ]]; then
  sudo apt install nodejs
fi

read -rp "Check Python syntax? (y/N): " choice
choice=${choice:-N}
if [[ "$choice" == [Yy] ]]; then
  sudo apt install python3
fi 

echo "Make a commit and watch it work :)"