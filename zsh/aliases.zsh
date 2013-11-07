# aliases

alias cdd="cd /Library/WebServer/Documents"
alias python_smtp="python -m smtpd -n -c DebuggingServer localhost:1025"


alias env_assembl="source ~/Documents/envs/assembl/bin/activate; cdd; cd assembl"
alias env_caravan="source ~/Documents/envs/caravan/bin/activate; cdd; cd caravan"
alias env_fipro="source ~/Documents/envs/fipro/bin/activate; cdd; cd FichaProcesso/trunk/src"
alias env_mtlpy="source ~/Documents/envs/mtlpy/bin/activate; cdd; cd mtlpy"
alias env_parasuco="source ~/Documents/envs/parasuco/bin/activate; cdd; cd parasuco"
alias env_parasucoextranet="source ~/Documents/envs/parasucoextranet/bin/activate; cdd; cd ParasucoExtranet"
alias env_linh="source ~/Documents/envs/linh/bin/activate; cdd; cd linh;"


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
