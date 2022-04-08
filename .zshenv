# Adding default applications
export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'
export RESOLUTION=$(awk '/RESOLUTION/ {print $3}' $XDG_CONFIG_HOME/X11/Xrandr)

# Configuring XDG default directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# java
export JDK_HOME="/opt/corretto-11.0.14.10.1/"

# path
export PATH="$HOME/.local/bin:$PATH:"
export PATH="$PATH:$XDG_DATA_HOME/npm/bin"
export PATH="$PATH:$HOME/.cabal/bin/"
export PATH="$PATH:$JDK_HOME/bin"
export PATH="$PATH:/opt/clion-2021.3.3/bin/"
#export PATH="$PATH:/opt/elm-0.19.1/"
[ -d ~/.stack/programs/x86_64-linux/ ] && ___TMP="$(find ~/.stack/programs/x86_64-linux -maxdepth 1 -type d | sort -r | head -n 1)"
[ -n "$___TMP" ] && [ -d "$___TMP" ] && export PATH=$PATH:$___TMP/bin
unset ___TMP

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

export GDK_SCALE=$(dc -e "$RESOLUTION 1080 / p")
export GDK_DPI_SCALE=$(dc -e "2 k 1080 $RESOLUTION / p")

# xmllint
export XMLLINT_INDENT="    "



# Moving some directories
######################################################################################
# rust
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
[ -f "$CARGO_HOME/env" ] && . "$CARGO_HOME/env"

#gtk2
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# java
#export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

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




# Xauthority
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

# spaceship prompt
. "$XDG_CONFIG_HOME/zsh/prompt.zsh"

######################################################################################

# have zsh find it's file
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
