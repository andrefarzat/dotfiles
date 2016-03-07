function cdd --description "Goes to our projects folder"
    if test -d ~/Documents/$argv
        cd ~/Documents/$argv
    else
        cd ~/Documents/
    end
end
