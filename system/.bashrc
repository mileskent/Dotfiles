#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias la='ls -a'
alias lc='clear && echo && ls'
alias c='clear'
alias gadd='git add -A && git status'

# PS1 --> Bash terminal Prompt
PS1='[\u in \W @ \t]\n    $ '
