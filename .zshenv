autoload -U zcalc


# Configuring XDG default directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

. "$XDG_CONFIG_HOME/zsh/path.zsh"

# Adding default applications
# inherit EDITOR and VISUAL from calling process
[ -z "$EDITOR" ] && export EDITOR='nvim'
[ -z "$VISUAL" ] && export VISUAL='nvim'
export TERMINAL='st'
export BROWSER='firefox'
export RESOLUTION=1800


# Colored man pages
export LESS_TERMCAP_mb=$'\e[1;32m' # green
export LESS_TERMCAP_md=$'\e[1;32m' # blue
export LESS_TERMCAP_me=$'\e[0m' # reset
export LESS_TERMCAP_se=$'\e[0m' # reset
export LESS_TERMCAP_so=$'\e[01;33m' # yellow
export LESS_TERMCAP_ue=$'\e[0m' # reset
export LESS_TERMCAP_us=$'\e[1;4;31m' # red

# No less history
export LESSHISTFILE=-


# fzf default options
export FZF_DEFAULT_OPTS="--layout=reverse --height 40% --border=rounded --prompt='❯ ' --pointer='❯ ' --color=prompt:yellow,pointer:green,hl+:bright-cyan,hl:blue,bg+:-1,gutter:-1,fg+:-1 --no-info"

# Stuff for the qt theme
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_SCALE_FACTOR=1

# Settings to make java UI toolkit happy
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit

export GDK_SCALE=export GDK_SCALE=$(zcalc -f -e "$RESOLUTION / 1080  + 0.23")
export GDK_DPI_SCALE=1

# xmllint
export XMLLINT_INDENT="    "



# Moving some directories
######################################################################################
# rust
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
[ -f "$CARGO_HOME/env" ] && . "$CARGO_HOME/env"

# go
export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod

# haskell
export GHCUP_USE_XDG_DIRS=true
export STACK_XDG=1

#gtk2
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# java
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"

# Android sdk
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android/sdk/
export ANDROID_AVD_HOME="$XDG_DATA_HOME"/android/avd/
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android/emulator/
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android/adb

# Gradle
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle

# grip
export GRIPHOME="$XDG_CACHE_HOME/grip"

# nodejs
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history

# npm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# vscode
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode

# jupyter
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter

# python
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/startup.py"

#conan
export CONAN_USER_HOME="$XDG_CACHE_HOME/"
export CONAN_USER_HOME_SHORT="$XDG_CACHE_HOME/conan-short"

#gdirve
export GDRIVE_CONFIG_DIR="$XDG_CONFIG_HOME/gdrive/"

# ruby
export rvm_path="$XDG_CONFIG_HOME/rvm/"
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle


# Xauthority
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

# dub
export DUB_HOME="$XDG_DATA_HOME/dub"

# Docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

# ncurses
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo

# texlive
export TEXMFHOME=$XDG_DATA_HOME/texmf
export TEXMFVAR=$XDG_CACHE_HOME/texlive/texmf-var
export TEXMFCONFIG=$XDG_CONFIG_HOME/texlive/texmf-config

# elm
export ELM_HOME="$XDG_CONFIG_HOME"/elm

export WGETRC="$XDG_CONFIG_HOME/wgetrc"

# julia
export JULIA_DEPOT_PATH="$XDG_DATA_HOME/julia:$JULIA_DEPOT_PATH"

######################################################################################

# have zsh find it's file
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
