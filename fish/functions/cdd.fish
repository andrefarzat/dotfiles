function cdd --description "Goes to our projects folder"
    if test -d "~/Documents/$argv"
        cd "~/Documents/$argv"
        echo "Naram"
    else
        cd ~/Documents/
        echo "Taram"
    end
end
