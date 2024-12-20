#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias screenshot='slurp | grim -g - ~/Pictures/Screenshots/202412202315.png && wl-copy < ~/Pictures/Screenshots/202412202315.png'
# PS1='[\u@\h \W]\$ '
PS1='\[\033[32m\]\u\[\033[00m\]@\[\033[32m\]\h\n\[\033[00m\]\w \[\033[32m\]> \[\033[00m\]'
