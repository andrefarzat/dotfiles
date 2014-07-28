# aliases

disable -a l

alias python_smtp="python -m smtpd -n -c DebuggingServer localhost:1025"

alias env_caravan="source ~/Documents/envs/caravan/bin/activate; cdd; cd caravan-coop"
alias env_plotly="source ~/Documents/envs/plotly/bin/activate; cdd; cd streambed/shelly"
alias env_master="source ~/Documents/envs/master/bin/activate; cdd; django-master"

projects=('mtlpy' 'linh' 'styleguide' 'webp' 'madeout')
for project in "${projects[@]}"
do
    alias "env_$project"="source ~/Documents/envs/$project/bin/activate; cdd; cd $project"
done

runserver(){

    if [ `pwd` = '/Library/WebServer/Documents/graffmap' ]; then
        # Let's first see if we are at graffmap folder
        echo 'python manage.py runserver 0.0.0.0:8000 --settings split_settings'
        python manage.py runserver 0.0.0.0:8000 --settings split_settings
    elif [ -f './manage.py' ]; then
        # Let's first see if there is a manage.py file in the current directory
        echo './manage.py runserver 0.0.0.0:8000'
        python manage.py runserver 0.0.0.0:8000
    elif [ -f './bin/django' ]; then
        # Then, let's try to see if there is a folder bin and a django file inside it
        echo './bin/django runserver 0.0.0.0:8000'
        python ./bin/django runserver 0.0.0.0:8000
    else
        # if reached here, well ...
        echo "You're not in a django project"
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

    [[ $dir != "" ]] && cd /Library/WebServer/Documents/$dir || cd /Library/WebServer/Documents
}



alias t="python /Library/WebServer/Documents/t/t.py --task-dir ~/tasks --list tasks"

