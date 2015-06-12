#!/bin/sh

echo "Installing everything we need in your brand new mac"

echo "Installing homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo ""
echo "Installing zsh"
brew install zsh

echo ""
echo "Installing oh-my-zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

echo ""
echo "Installing ipython"
pip install ipython

echo ""
echo "Installing virtualenv"
pip install virtualenv

echo ""
echo "Done! You can have a coke now ;)"
