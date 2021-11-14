
export PATH=$PATH:~/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/share/npm/bin
export PATH=$PATH:~/.cabal/bin/

# Adding default applications
export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='alacritty'
export TERM='alacritty'
export BROWSER='firefox'

# Configuring XDG default directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share


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
export FZF_DEFAULT_OPTS="--layout=reverse --height 20%"

# Stuff for the qt theme
export QT_QPA_PLATFORMTHEME=qt5ct

# Settings to make java UI toolkit happy
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit

export GDK_SCALE=2
export GDK_DPI_SCALE=0.5


# Moving some directories
######################################################################################
# rust
export CARGO_HOME="$XDG_DATA_HOME"/cargo

#gtk2
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

# java
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

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


#conan
export CONAN_USER_HOME="$XDG_CACHE_HOME/"
export CONAN_USER_HOME_SHORT="$XDG_CACHE_HOME/conan-short"

# xmllint
export XMLLINT_INDENT="    "


# java
export JDK_HOME="$HOME/.jdks/corretto-11.0.10/"


######################################################################################

# have zsch find it's file
export ZDOTDIR=$HOME/.config/zsh
