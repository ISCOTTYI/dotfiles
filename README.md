## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```


2. Clone repo into new hidden directory.

```zsh
git clone https://github.com/ISCOTTYI/dotfiles.git ~/.dotfiles
```



3. Create symlinks in the Home directory to the real files in the repo.

```zsh
ln -s ~/.dotfiles/<NAME_OF_DOTFILE> ~/<NAME_OF_DOTFILE>
ln -s ~/.dotfiles/<NAME_OF_DOTFILE> <SOME_PATH>/<NAME_OF_DOTFILE>

# Specific for VSCode
mv ~/Library/Application\ Support/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings_old.json
mv ~/Library/Application\ Support/Code/User/keybindings.json ~/Library/Application\ Support/Code/User/keybindings_old.json
mv ~/Library/Application\ Support/Code/User/snippets/ ~/Library/Application\ Support/Code/User/snippets/
ln -s ~/.dotfiles/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.dotfiles/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/.dotfiles/VSCode/snippets/ ~/Library/Application\ Support/Code/User
```


4. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile
```

