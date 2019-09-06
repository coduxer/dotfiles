#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias sopy='source venv/bin/activate'
alias soconda='source /opt/miniconda3/bin/activate root'
alias sodeconda='source /opt/miniconda3/bin/deactivate root'
PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\\n$ "

#PS1='[\u@\h \W]\$ '

export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="$HOME/bin:$PATH"

set -o vi
remaps
