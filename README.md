# Dotfiles

## Setup

Install Homebrew.

Clone:

git clone git@github.com:<username>/dotfiles.git ~/dotfiles

Install packages:

cd ~/dotfiles
brew bundle

Restore configs:

cp .zshrc ~/
cp .gitconfig ~/

mkdir -p ~/.config
cp starship.toml ~/.config/
cp -R nvim ~/.config/

Open iTerm2 and configure Preferences to load from:

~/dotfiles

Restart terminal.
