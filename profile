#!/bin/bash

# Freetype2 subpixel hinting
# 0 = disabled, 1 = infinality, 2 = minimal
export FT2_SUBPIXEL_HINTING=1
# Possible values are 
# truetype:interpreter-version=35 (classic mode/2.6 default)
# truetype:interpreter-version=38 ("Infinality" mode)
# truetype:interpreter-version=40 (minimal - default)
export FREETYPE_PROPERTIES="truetype:interpreter-version=38"

# Qt uniform theme
# dependencies: qt5-styleplugins
export QT_QPA_PLATFORMTHEME='gtk2'

# Custom directories
export LOCAL_BIN_DIR="${HOME}/.local/bin"
export LOCAL_SOFTWARE_DIR="${HOME}/Softwares"
export LOCAL_REPOSITORY_DIR="${HOME}/Repositories"

export LUTRIS_STEAM_RUNTIME="${HOME}/.local/steam_runtime"

#SSH_ASKPASS=/bin/false
export DESKTOP_SESSION=gnome
#export TERM="rxvt-unicode-256color"

# CCache path
export CCACHE_PATH="/usr/bin"
export CCACHE_DIR="${HOME}/.local/ccache"
export PATH="/usr/lib/colorgcc/bin:${PATH}"

# Android sdk location
export ANDROID_HOME="${HOME}/.local/android/sdk"
export PATH="${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/tools:${PATH}"

# Virtual environments
export PYENV_ROOT="${HOME}/.local/env/pyenv"
export RBENV_ROOT="${HOME}/.local/env/rbenv"
export NODENV_ROOT="${HOME}/.local/env/nodenv"
export PATH="${PYENV_ROOT}/bin:${RBENV_ROOT}/bin:${NODENV_ROOT}/bin:${PATH}"

eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

# Set local bin on top of path
export PATH="${LOCAL_BIN_DIR}:${PATH}"

# pacaur options
export AURDEST="${XDG_LOCAL_DiR:=$HOME/.local}/aur/pkgbuild"
export PKGDEST="${XDG_LOCAL_DiR:=$HOME/.local}/aur/pkg"
export SRCDEST="${XDG_LOCAL_DiR:=$HOME/.local}/aur/src"
export LOGDEST="${XDG_LOCAL_DiR:=$HOME/.local}/aur/log"
export BUILDDIR="${XDG_LOCAL_DiR:=$HOME/.local}/aur/build"

# Wine options
export WINEARCH=win32
export WINEPREFIX="${HOME}/.local/wine/win32"
export WINEDLLOVERRIDES="winemenubuilder.exe=d"

# Java environments
export JAVA_HOME="/usr/lib/jvm/default"
export FT2_SUBPIXEL_HINTING=1
#export _JAVA_OPTIONS="-Djdk.gtk.version=3"
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

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

[ -n "${XDG_SESSION_DESKTOP}" ] && xset m 2 0 2>/dev/null

