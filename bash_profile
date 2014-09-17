# ~/.dircolors/themefile
eval $(gdircolors ~/.dircolors/dircolors.256dark)

# Aliases
alias ls='gls --color=auto'
alias ll='ls -al'
alias clr='clear'
alias gpdel='git rm $(git ls-files --deleted)'
alias homebrew='ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"'

# Env Vars
export HOMEBREW_GITHUB_API_TOKEN=930d18c99e13c1180ef83fd5961d87eedf55a6a1

export PATH=/usr/local/bin:$PATH

# Bash-Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
