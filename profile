#!/bin/bash

# Custom directories
export LOCAL_BIN_DIR="$HOME/.local/bin"
export LOCAL_SOFTWARE_DIR="$HOME/Softwares"
export LOCAL_REPOSITORY_DIR="$HOME/Repositories"

#SSH_ASKPASS=/bin/false
export DESKTOP_SESSION=gnome
export TERM="rxvt-unicode-256color"

# Qt 5.7 compatibility fix
# Related package: qt5-styleplugin qt5ct (aur)
#export QT_STYLE_OVERRIDE=gtk2
#export QT_QPA_PLATFORMTHEME=qt5ct

# CCache path
export CCACHE_PATH="/usr/bin"
export CCACHE_DIR="$HOME/.local/ccache"
export PATH="/usr/lib/colorgcc/bin:$PATH"

# Android sdk location
export ANDROID_HOME="$HOME/.local/android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"

# Virtual environments
export PYENV_ROOT="$HOME/.local/env/pyenv"
export RBENV_ROOT="$HOME/.local/env/rbenv"
export NODENV_ROOT="$HOME/.local/env/nodenv"
export PATH="$PYENV_ROOT/bin:$RBENV_ROOT/bin:$NODENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

# Set local bin on top of path
export PATH="$LOCAL_BIN_DIR:$PATH"

# Java options
export FT2_SUBPIXEL_HINTING=1
#export _JAVA_OPTIONS="-Djdk.gtk.version=3"

export LANG=en_US.UTF-8
export LC_TIME=en_GB.UTF-8
export LC_PAPER=en_GB.UTF-8

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

#SAL_USE_VCLPLUGIN=gen
#SAL_USE_VCLPLUGIN=kde4
export SAL_USE_VCLPLUGIN=gtk
#SAL_USE_VCLPLUGIN=gtk3

[ -n "$XDG_SESSION_DESKTOP" ] && xset m 2 0 2>/dev/null

