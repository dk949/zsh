autoload -U zcalc


# Configuring XDG default directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# PATH, Homebrew, EDITOR and MANPAGER are set up in .zprofile

# OS-specific settings
######################################################################################
if [[ $OSTYPE == linux* ]]; then
    # Default applications
    export TERMINAL='kitty'
    export CLI_LAUNCHER_TERMINAL='kitty'
    export BROWSER='firefox'

    # Stuff for the qt theme
    export QT_QPA_PLATFORMTHEME=qt5ct # TODO(dk949): revisit this at some point
    export QT_AUTO_SCREEN_SCALE_FACTOR=1
    export QT_SCALE_FACTOR=1

    # gtk
    export RESOLUTION=1800
    export GDK_SCALE=$(zcalc -f -e "$RESOLUTION / 1080  + 0.23")
    export GDK_DPI_SCALE=1
    export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

    # Settings to make java UI toolkit happy
    export _JAVA_AWT_WM_NONREPARENTING=1
    export AWT_TOOLKIT=MToolkit

    # Xauthority
    [[ -n $XDG_RUNTIME_DIR ]] && export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
elif [[ $OSTYPE == darwin* ]]; then
    # Stop Apple Terminal from saving per-session history into $ZDOTDIR/.zsh_sessions
    export SHELL_SESSIONS_DISABLE=1
fi
######################################################################################


# Colored man pages
# export LESS_TERMCAP_mb=$'\e[1;32m' # green
# export LESS_TERMCAP_md=$'\e[1;32m' # blue
# export LESS_TERMCAP_me=$'\e[0m' # reset
# export LESS_TERMCAP_se=$'\e[0m' # reset
# export LESS_TERMCAP_so=$'\e[01;33m' # yellow
# export LESS_TERMCAP_ue=$'\e[0m' # reset
# export LESS_TERMCAP_us=$'\e[1;4;31m' # red

# No less history
export LESSHISTFILE=-

export LESS="-F -R"

# fzf default options
export FZF_DEFAULT_OPTS="--layout=reverse --height 40% --border=rounded --prompt='❯ ' --pointer='❯ ' --color=prompt:yellow,pointer:green,hl+:bright-cyan,hl:blue,bg+:-1,gutter:-1,fg+:-1 --no-info"

# java
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
#maven
export MAVEN_OPTS="-Dmaven.repo.local=$XDG_DATA_HOME/maven/repository"
export MAVEN_ARGS="--settings $XDG_CONFIG_HOME/maven/settings.xml"

# xmllint
export XMLLINT_INDENT="    "



# Moving some directories
######################################################################################
# rust
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

# go
export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod

# haskell
export GHCUP_USE_XDG_DIRS=true
export STACK_XDG=1


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
export PYTHON_HISTORY=$XDG_STATE_HOME/python/python_history
mkdir -p "$(dirname "$PYTHON_HISTORY")"

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


# dub
export DUB_HOME="$XDG_DATA_HOME/dub"

# Docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

# ncurses
# Matters a lot for macos
[[ -z $TERMINFO ]] && export TERMINFO="$XDG_DATA_HOME"/terminfo
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

# bun
export BUN_INSTALL="$HOME/.local/bin"

# gpg
export GPG_TTY=$(tty)

# elixir
export MIX_XDG="true"

export CLAUDE_CONFIG_DIR=$XDG_CONFIG_HOME/claude

# R
R_HOME_USER="$XDG_CONFIG_HOME/R"
R_PROFILE_USER="$XDG_CONFIG_HOME/R/profile"
R_HISTFILE="$XDG_CONFIG_HOME/R/history"

######################################################################################

# have zsh find it's file
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
