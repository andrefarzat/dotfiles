# aliases

disable -a l

alias python_smtp="python -m smtpd -n -c DebuggingServer localhost:1025"

alias env_fipro="source ~/Documents/envs/fipro/bin/activate; cdd; cd FichaProcesso/trunk/src"
alias env_caravan="source ~/Documents/envs/caravan/bin/activate; cdd; cd caravan_site"
alias env_plotly="source ~/Documents/envs/plotly/bin/activate; cdd; cd streambed/shelly"

projects=('assembl' 'mtlpy' 'parasuco' 'parasucoextranet' 'linh' 'csf' 'parasucocorp' 'styleguide' 'prana' 'auf' 'campus' 'graffmap')
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
    fi

}

cdd(){
    dir=$(echo $@ | tr -d " ")

    [[ $dir != "" ]] && cd /Library/WebServer/Documents/$dir || cd /Library/WebServer/Documents
}
