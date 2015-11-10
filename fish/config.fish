set PATH ~/.dotfiles/bin $PATH

# Postgres app
set PATH /Applications/Postgres.app/Contents/Versions/9.4/bin $PATH
set DATABASE_URL postgres:///(whoami)

# powerline-status
set fish_function_path $fish_function_path "/Users/andrefarzat/Library/Python/2.7/lib/python/site-packages/powerline/bindings/fish"
powerline-setup
