#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# if tty1, run sway
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    export XDG_CURRENT_DESKTOP=sway
    export XDG_SESSION_TYPE=wayland
    export GTK_THEME=Adwaita-dark
    exec sway
fi
