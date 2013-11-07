# aliases

alias cdd="cd /Library/WebServer/Documents"
alias python_smtp="python -m smtpd -n -c DebuggingServer localhost:1025"

alias env_fipro="source ~/Documents/envs/fipro/bin/activate; cdd; cd FichaProcesso/trunk/src"

projects=('assembl' 'caravan' 'mtlpy' 'parasuco' 'parasucoextranet' 'linh' 'csf')
for project in "${projects[@]}"
do
    alias "env_$project"="source ~/Documents/envs/$project/bin/activate; cdd; cd $project"
done

runserver(){
	
	# Let's first see if there is a manage.py file in the current directory
	if [ -f './manage.py' ]; then
        python manage.py runserver 0.0.0.0:8000
        exit;
	fi

    # Then, let's try to see if there is a folder bin and a django file inside it
    if [ -f './bin/django' ]; then
        python ./bin/django runserver 0.0.0.0:8000
        exit;
    fi

    # if reached here, well ...
    echo "You're not in a django project"

}
