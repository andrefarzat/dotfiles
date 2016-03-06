source ~/.dotfiles/fish/aliases.fish
set PATH ~/.dotfiles/bin $PATH

# Postgres app
set PATH /Applications/Postgres.app/Contents/Versions/9.4/bin $PATH
set DATABASE_URL postgres:///(whoami)
