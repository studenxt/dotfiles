export PS1="%{$fg[1]%}%n %1~ %* $"
export STARSHIP_CONFIG=~/.starship.toml

# vimlike
bindkey -e
# auto complit
autoload -U compinit

alias v="vim"
alias ls='ls -G'
alias la="ls -la"
alias vz="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias ..="cd ../"
alias ...="cd ../.."
alias py='python3'
alias g="git"
alias gd="g diff"
alias ga="g add"


# local zshrc file
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

eval "$(starship init zsh)"
