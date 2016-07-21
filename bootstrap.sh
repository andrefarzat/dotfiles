#!/bin/sh

echo "Installing everything we need in your brand new mac"

echo "Installing homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

echo ""
echo "Installing zsh"
brew install zsh

echo ""
echo "Installing oh-my-zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

echo ""
echo "Installing fish"
brew install fish

echo ""
echo "Installing python3"
brew install python3

echo ""
echo "Installing thefuck"
brew install thefuck

echo ""
echo "Installing wget"
brew install wget

echo ""
echo "Installing bash"
brew install bash

echo ""
echo "Installing rename"
brew install rename

echo ""
echo "Installing wifi-password"
brew install wifi-password

echo ""
echo "Initing all modules"
/usr/local/bin/zsh ~/.dotfiles/bin/dot init

# Remove outdated versions from the cellar
brew cleanup

echo ""
echo "Done! You can have a coke now ;)"
