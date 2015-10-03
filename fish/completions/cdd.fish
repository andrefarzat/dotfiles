set -l dir (echo ~/Documents)
complete -f -c cdd -a (echo $dir/* | sed -e "s|$dir/||g")