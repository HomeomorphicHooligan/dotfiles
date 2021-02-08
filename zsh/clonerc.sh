#!bin/bash

# This small script clones the .zshrc file from the repository and then
# puts it in your local computer.
#
# For more information: github.com/pblcc/dotfiles
#
# Follow me on Twitter: @pablocorbcon
FILE=~/.zshrc
if [ -f "$FILE" ]; then
  echo "You already have a .zshrc file"
  mv "$FILE" ~/.old-zshrc
  echo "The old .zshrc file has been moved to ~/.old-zshrc"
fi
echo "$(curl -L https://raw.githubusercontent.com/pblcc/dotfiles/main/zsh/.zshrc)" >> ~/.zshrc
source ~/.zshrc
