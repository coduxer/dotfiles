#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL=vim
export EDITOR="$VISUAL"

alias ls='ls --color=auto'
alias sopy='source venv/bin/activate'
alias pineapple="curl https://raw.githubusercontent.com/pineappleEA/Pineapple-Linux/master/pineapple.sh | sh"
alias full-update="sudo pacman -Sy && sudo trickle -s -d 2300 powerpill -Su && paru -Su"
alias ssh-auto="source ~/bin/ssh-auto"
alias ssh-auto2="source ~/bin/ssh-auto2"

PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\\n$ "

#PS1='[\u@\h \W]\$ '
set -o vi
remaps
