
function resulto --description "Start the env in the given folder" --argument-names folder

    set -l resultoRoot /Users/andrefarzat/Documents/resulto
    set -l projectPath $resultoRoot/$folder

    if  test -d $projectPath
        cd $projectPath
        source venv/bin/activate.fish
    else
        echo "$projectPath isn't a project folder"
        exit 1
    end

end