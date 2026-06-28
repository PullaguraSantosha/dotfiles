# Setup

## 1. Install Homebrew

https://brew.sh

## 2. Clone the repository

git clone git@github.com:PullaguraSantosha/dotfiles.git ~/dotfiles

cd ~/dotfiles

## 3. Install all packages

brew bundle

## 4. Restore configuration files

cp .zshrc ~/
cp .gitconfig ~/

mkdir -p ~/.config

cp starship.toml ~/.config/
cp -R nvim ~/.config/

## 5. Reload shell

source ~/.zshrc

## 6. Start Neovim

nvim

## 7. Restore iTerm2 preferences

Open iTerm2

Settings → General → Preferences

Enable:
"Load preferences from a custom folder or URL"

Choose:

~/dotfiles

Restart iTerm2

