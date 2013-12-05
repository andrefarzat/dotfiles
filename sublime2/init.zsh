subl="/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"

if [[ -f $subl ]] then; 
   
    echo "Backing up the current User folder"
    rm -rf ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User.backup
    mv -f ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User.backup

    echo "Adding our User folder"
    cp -r ~/.dotfiles/sublime2/User ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/

fi;
