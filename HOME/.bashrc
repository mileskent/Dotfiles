[[ $- != *i* ]] && return # If not running interactively, don't do anything

# Zh support
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export GLFW_IM_MODULE=ibus

# ALIASES
alias ls='eza'
alias la='eza -a'
alias c='clear'
alias grep='grep --color=auto'
alias cp='cp -rv'
alias mv='mv -v'
alias gadd='git add -A && git status'
alias lzc='git commit -m "$(date)"' # lazy commit
alias gp='git pull'
alias gP='git push'
alias lg='lazygit'
alias cat='bat'
alias open='xdg-open'

# MISC
eval "$(fzf --bash)"
PS1='[\u@\h \W]\$ '
