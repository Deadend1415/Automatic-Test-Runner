#!/bin/bash
read -p "Do you want to install the git hooks? (y/n): " choice
if [[ "$choice" == [Yy] ]]; then
  mv pre-comm/hooks
fi
echo "If you dont intend on checking syntax for a language you can skip the dependecy"
sleep 5
sudo apt install shellcheck yamllint php node python3
