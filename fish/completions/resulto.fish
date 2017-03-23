set -l dir (echo ~/Documents/resulto)
complete -f -c resulto -a (echo $dir/* | sed -e "s|$dir/||g")