#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

cd

# aliases
alias grep='grep --color=auto'

alias c='clear'

alias cp='cp -rv'

alias ls='eza -lh --icons --no-user --no-time'
alias la='ls -a'
alias lt='ls -t'

alias gadd='git add -A && git status'
alias lzc='git add -A && git status && git commit -m "$(date)"' # lazy commit
alias gp='git push origin'

# PS1 --> Bash terminal Prompt
PS1='[\u in \W @ \t]\n    $ '
