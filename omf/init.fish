# Path to your oh-my-fish.
#set fish_path $HOME/.dotfiles/oh-my-fish
# Load oh-my-fish configuration.
#. $fish_path/oh-my-fish.fish
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Path to your custom folder (default path is $FISH/custom)

# Exports
set -U -x ORACLE_HOME /Applications/oracle/product/instantclient_64/11.2.0.4.0
set -U -x DYLD_LIBRARY_PATH $ORACLE_HOME/lib
set -U -x EDITOR vim

# Fishmarks Config
. ~/.dotfiles/omf/fishmarks/marks.fish
set -gx SDIRS $HOME/.dotfiles/omf/.sdirs
_update_completions

. $HOME/.homebrew-github-api-token

# PATH
set -gx PATH /opt/chefdk/bin $PATH
set -gx PATH $ORACLE_HOME/bin $PATH 

eval (chef shell-init fish)
#Eval for docker the-new-deal system
eval (docker-machine env thenewdeal)

# Dircolors
# ~/.dircolors/themefile
if test -e ~/.dircolors
    switch (uname)
        case Darwin
            eval (gdircolors -c ~/.dircolors/dircolors.256dark)

        case Linux
            eval (dircolors -c ~/.dircolors/dircolors.256dark)
    end
end

# Shortcuts
switch (uname)
    case Darwin
        balias ls 'gls --color=auto -F'
        balias sort 'gsort'
        balias sublime 'open -a Sublime\ Text.app'

    case Linux
        balias ls 'ls --color=auto -F'
end
balias grep 'grep --color=auto'
balias less 'less -R'
balias .. 'cd ..'
balias remake "make clean; and make -j2"
balias omfi 'omf install'

# Welcome Message
#set -U -x fish_greeting ''

# Load fishmarks (http://github.com/techwizrd/fishmarks)
if test -e $HOME/.dotfiles/fish/.fishmarks/marks.fish
    . $HOME/.dotfiles/fish/.fishmarks/marks.fish
end


# CHEF
set -U -x OPSCODE_USER enev7ow
set -U -x ORGNAME mhsit

set -U theme_display_user yes
set -U default_user $USER

