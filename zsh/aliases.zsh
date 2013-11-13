# aliases

alias cdd="cd /Library/WebServer/Documents"
alias python_smtp="python -m smtpd -n -c DebuggingServer localhost:1025"

alias env_fipro="source ~/Documents/envs/fipro/bin/activate; cdd; cd FichaProcesso/trunk/src"

projects=('assembl' 'caravan' 'mtlpy' 'parasuco' 'parasucoextranet' 'linh' 'csf' 'parasucocorp' 'styleguide' 'prana')
for project in "${projects[@]}"
do
    alias "env_$project"="source ~/Documents/envs/$project/bin/activate; cdd; cd $project"
done

runserver(){
    
    if [ -f './manage.py' ]; then
        # Let's first see if there is a manage.py file in the current directory
        echo './manage.py'
        python manage.py runserver 0.0.0.0:8000
    elif [ -f './bin/django' ]; then
        # Then, let's try to see if there is a folder bin and a django file inside it
        echo './bin/django'
        python ./bin/django runserver 0.0.0.0:8000
    else
        # if reached here, well ...
        echo "You're not in a django project"
    fi

}
