#!/bin/bash

# Script to install VSCode extensions
# Before going to new computer renew list with
#   $ code --list-extensions
# Make sure VSCode is installed
#   $ brew cask install visual-studio-code

pkglist=(
asvetliakov.vscode-neovim
dracula-theme.theme-dracula
eamodio.gitlens
James-Yu.latex-workshop
ms-python.python
ms-python.vscode-pylance
ms-toolsai.jupyter
ms-toolsai.jupyter-keymap
ms-toolsai.jupyter-renderers
ms-vscode.cpptools
njpwerner.autodocstring
stkb.rewrap
valentjn.vscode-ltex
vscode-icons-team.vscode-icons
wayou.vscode-todo-highlight
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
