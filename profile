#!/bin/zsh
#SSH_ASKPASS=/bin/false
export DESKTOP_SESSION=gnome
export TERM="rxvt-unicode-256color"

export PATH="$HOME/.local/bin:$HOME/.rvm/bin:$PATH:$HOME/.local/lib"

LANG=en_US.UTF-8
LC_TIME=en_GB.UTF-8

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

#SAL_USE_VCLPLUGIN=gen
#SAL_USE_VCLPLUGIN=kde4
export SAL_USE_VCLPLUGIN=gtk
#SAL_USE_VCLPLUGIN=gtk3

[ ! -n "$XDG_SESSION_DESKTOP" ] && xset m 3/2 0 2>/dev/null

[ -z $VIRTUAL_ENV ] && [[ -s "$HOME/.local/env/python-3.5/bin/activate" ]] && source "$HOME/.local/env/python-3.5/bin/activate"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
