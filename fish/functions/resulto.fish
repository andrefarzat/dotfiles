
function resulto --description "Start the resulto env"

    set -l projectPath /Users/andrefarzat/Documents/resulto/dusablon

    if  test -d $projectPath
        cd $projectPath
        source venv/bin/activate.fish
    else
        echo "$projectPath isn't a project folder"
        exit 1
    end

end
