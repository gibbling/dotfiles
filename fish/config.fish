# Path to your oh-my-fish.
set fish_path $HOME/.dotfiles/oh-my-fish

# Exports
set -U -x ORACLE_HOME /Applications/oracle/product/instantclient_64/11.2.0.4.0
set -U -x DYLD_LIBRARY_PATH $ORACLE_HOME/lib
set -U -x EDITOR vim

# PATH
set -gx PATH /opt/chefdk/bin $PATH
set -gx PATH $PATH $ORACLE_HOME/bin

# Theme
set fish_theme agnoster

# Welcome Message
set -U -x fish_greeting ''

# CHEF
set -U -x OPSCODE_USER enev7ow
set -U -x ORGNAME mhsit

set -U theme_display_user yes
set -U default_user nergal

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
