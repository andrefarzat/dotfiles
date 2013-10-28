#!/bin/sh

echo "Installing everything we need in your brand new mac"

echo "Installing homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

echo ""
echo "Installing zsh"
brew install zsh

echo ""
echo "Installing oh-my-zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh