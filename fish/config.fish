source ~/.dotfiles/fish/aliases.fish
set PATH ~/.dotfiles/bin $PATH

# Postgres app
set PATH /Applications/Postgres.app/Contents/Versions/latest/bin/ $PATH
set DATABASE_URL postgres:///(whoami)
