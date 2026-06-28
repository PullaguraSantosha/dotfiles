# Dotfiles Setup

This guide sets up the complete development environment on a fresh macOS installation.

---

## 1. Install Homebrew

Install Homebrew from:

https://brew.sh

Or run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Follow the Homebrew instructions to add it to your PATH if prompted.

Verify the installation:

```bash
brew --version
```

---

## 2. Configure GitHub SSH (Required for SSH Clone)

If you already have GitHub SSH configured, skip this step.

Generate an SSH key:

```bash
ssh-keygen -t ed25519 -C "your-email@example.com"
```

Start the SSH agent:

```bash
eval "$(ssh-agent -s)"
```

Add the key:

```bash
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

Copy the public key:

```bash
cat ~/.ssh/id_ed25519.pub
```

Add it to your GitHub account.

Verify:

```bash
ssh -T git@github.com
```

---

## 3. Clone the Repository

```bash
git clone git@github.com:PullaguraSantosha/dotfiles.git ~/dotfiles

cd ~/dotfiles
```

---

## 4. Install All Packages

Install everything listed in the Brewfile:

```bash
brew bundle
```

This installs all required packages, applications, and fonts included in the Brewfile.

---

## 5. Restore Configuration Files

```bash
cp .zshrc ~/
cp .gitconfig ~/

mkdir -p ~/.config

cp starship.toml ~/.config/
cp -R nvim ~/.config/
```

---

## 6. Reload the Shell

```bash
source ~/.zshrc
```

Alternatively, simply close and reopen the terminal.

---

## 7. Launch Neovim

```bash
nvim
```

On the first launch:

- Lazy.nvim will automatically install all plugins.
- Wait for installation to complete.
- Restart Neovim if prompted.

---

## 8. Restore iTerm2 Preferences

Open **iTerm2**

Go to:

```
Settings
→ General
→ Preferences
```

Enable:

```
Load preferences from a custom folder or URL
```

Choose:

```
~/dotfiles
```

Restart iTerm2 if necessary.

---

## 9. Verify Nerd Font

If the Brewfile installs the required Nerd Font, nothing else is needed.

Otherwise, install your preferred Nerd Font (example):

```bash
brew install --cask font-jetbrains-mono-nerd-font
```

In iTerm2:

```
Settings
→ Profiles
→ Text
→ Font
```

Select the installed Nerd Font.

---

## 10. Verify Everything

Check Homebrew:

```bash
brew --version
```

Check Git:

```bash
git --version
```

Check Neovim:

```bash
nvim --version
```

Check Starship:

```bash
starship --version
```

Check Node.js:

```bash
node --version
```

Check Python:

```bash
python3 --version
```

Everything should now be restored exactly as configured in this repository.
