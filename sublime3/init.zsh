echo "Backing up the current User folder"
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User.backup
mv -f ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User.backup

echo "Adding our User folder"
cp -r ~/.dotfiles/sublime3/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/