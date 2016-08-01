
function runserver --description "Starts a server regarding the current folder"

    if test -f './manage.py'
        # Let's first see if we are in a django env
        echo './manage.py runserver 0.0.0.0:8000'
        python manage.py runserver 0.0.0.0:8000

    else if test -f './bin/django'
        # Then, let's try to see if there is a folder bin and a django file inside it
        echo './bin/django runserver 0.0.0.0:8000'
        python ./bin/django runserver 0.0.0.0:8000

    else if test -f './app/console'
        # Checks if we are in a symphony2 env
        echo 'app/console server:run 0.0.0.0:8000'
        php app/console server:run 0.0.0.0:8000

    else
        # if reached here, well ...
        echo "Would you like to start the php server ? ([y]/n)"
        read 'yesno'
        if [ $yesno = "" ]; or [ $yesno = "y" ]
            echo "php -S 0.0.0.0:8000"
            php -S 0.0.0.0:8000
        end
    end
end