set PATH ~/.dotfiles/bin $PATH

# The fuck -> https://github.com/nvbn/thefuck
set -l aliasfuck (thefuck --alias)
eval $aliasfuck