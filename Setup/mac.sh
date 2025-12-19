#!/usr/bin/env bash

sudo -v

echo "------------------------------"
echo "Initializing Development Workspace"

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
# Make sure we’re using the latest Homebrew.
brew update

# Install Global Packages
echo "Installing Python..."
brew install python3

echo "Installing AWS-CLI..."
brew install awscli

echo "Installing theFuck..."
brew install thefuck

echo "Installing Terraform..."
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

echo "Installing Ansible..."
brew install ansible

echo "Installing Tmux..."
brew install tmux

echo "Installing Vim..."
brew install vim

echo "Installing NeoVim..."
brew install neovim

echo "Installing fzf..."
brew install fzf

echo "Installing ripgrep..."
brew install ripgrep

echo "Installing tree..."
brew install tree

echo "Installing zsh..."
brew install zsh fzf

git clone https://github.com/zsh-users/zsh-autosuggestions \
${ZDOTDIR:-$HOME}/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting \
  ${ZDOTDIR:-$HOME}/.zsh/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  ${ZDOTDIR:-$HOME}/.zsh/powerlevel10k


# Set OS Defaults
echo "Setting OS Defaults..."
# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true


# Install Desktop Applications
echo "Installing Docker..."
brew install --cask docker

echo "Installing VSCode..."
brew install --cask visual-studio-code

echo "Installing iTerm..."
brew install --cask iterm2

echo "Installing Fire Fox..."
brew install --cask firefox

echo "Installing Slack..."
brew install --cask slack

echo "Installing mac-mouse-fix"
brew install --cask mac-mouse-fix

echo "Installing rectangle"
brew install --cask rectangle

echo "Development Workspace Ready [✔]"
echo ""
echo "Be sure to checkout the README for more details on this script"
echo ""
echo "Restart your computer to ensure all updates take effect"
echo "------------------------------"


