set -l dir (echo ~/Documents)
complete -A -c cdd -a (echo $dir/* | sed -e "s|$dir/||g")