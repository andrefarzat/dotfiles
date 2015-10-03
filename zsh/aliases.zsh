# aliases

disable -a l

runserver(){

    if [ -f './manage.py' ]; then
        # Let's first see if there is a manage.py file in the current directory
        echo './manage.py runserver 0.0.0.0:8000'
        python manage.py runserver 0.0.0.0:8000
    elif [ -f './bin/django' ]; then
        # Then, let's try to see if there is a folder bin and a django file inside it
        echo './bin/django runserver 0.0.0.0:8000'
        python ./bin/django runserver 0.0.0.0:8000
    else
        # if reached here, well ...
        echo "Would you like to start the php server ? ([y]/n)"
        read 'yesno'
        if [[ "$yesno" == "" || "$yesno" == "y" ]]; then
            echo "php -S 0.0.0.0:8000"
            php -S 0.0.0.0:8000
        fi
    fi

}

cdd(){
    dir=$(echo $@ | tr -d " ")

    [[ $dir != "" ]] && cd /Users/andrefarzat/Documents/$dir || cd /Users/andrefarzat/Documents
}

# Go path
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# The fuck -> https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"
