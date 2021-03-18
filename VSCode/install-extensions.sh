# Script to install VSCode extensions
# Before going to new computer renew list with
#   $ code --list-extensions
# Make sure VSCode is installed
#   $ brew cask install visual-studio-code

pkglist=(
dracula-theme.theme-dracula
eamodio.gitlens
James-Yu.latex-workshop
MS-CEINTL.vscode-language-pack-de
ms-python.python
ms-toolsai.jupyter
njpwerner.autodocstring
stkb.rewrap
streetsidesoftware.code-spell-checker
valentjn.vscode-ltex
vscode-icons-team.vscode-icons
vscodevim.vim
wayou.vscode-todo-highlight
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
