source ~/.dotfiles/fish/aliases.fish
set PATH ~/.dotfiles/bin $PATH

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# Postgres app (uncomment those lines when you install Postgres.app)
# set PATH /Applications/Postgres.app/Contents/Versions/latest/bin/ $PATH
# set DATABASE_URL postgres:///(whoami)

# For android studio
#set -g ANDROID_HOME /Users/andrefarzat/Android
#set PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools $PATH
