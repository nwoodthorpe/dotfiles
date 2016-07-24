#!/bin/bash
#SSH_ASKPASS=/bin/false
export DESKTOP_SESSION=gnome
export TERM="rxvt-unicode-256color"

# Qt 5.7 compatibility fix
# Related package: qt5-styleplugin qt5ct
#export QT_STYLE_OVERRIDE=gtk2
#export QT_QPA_PLATFORMTHEME=qt5ct

# Virtual environments
export PYENV_ROOT="$HOME/.local/env/pyenv"
export RBENV_ROOT="$HOME/.local/env/rbenv"
export NODENV_ROOT="$HOME/.local/env/nodenv"

export PATH="$HOME/.local/bin:$PYENV_ROOT/bin:$RBENV_ROOT/bin:$NODENV_ROOT/bin:$HOME/.local/lib:/usr/lib/colorgcc/bin:$PATH"

eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

# Java options
export FT2_SUBPIXEL_HINTING=1
#export _JAVA_OPTIONS="-Djdk.gtk.version=3"

# CCache path
export CCACHE_PATH="/usr/bin"
export CCACHE_DIR="$HOME/.local/ccache"

export LANG=en_US.UTF-8
export LC_TIME=en_GB.UTF-8

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

#SAL_USE_VCLPLUGIN=gen
#SAL_USE_VCLPLUGIN=kde4
export SAL_USE_VCLPLUGIN=gtk
#SAL_USE_VCLPLUGIN=gtk3

[ -n "$XDG_SESSION_DESKTOP" ] && xset m 2 0 2>/dev/null

