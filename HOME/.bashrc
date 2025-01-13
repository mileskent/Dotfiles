[[ $- != *i* ]] && return # If not running interactively, don't do anything

# ALIASES
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias c='clear'
alias cp='cp -rv'
alias la='ls -a'
alias lt='ls -t'
alias gadd='git add -A && git status'
alias lzc='git commit -m "$(date)"' # lazy commit
alias gp='git push -u origin'
alias cat='ccat'

# MISC
eval "$(fzf --bash)"
PS1='[\u@\h \W]\$ '
