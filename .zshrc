#
# ~/.config/zsh/.zshrc
#
# uncomment this and the last line of the file to run the profiler
# zmodload zsh/zprof
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable colors and change prompt:
autoload -U colors && colors

___DIRNAME="$ZDOTDIR"

. "$___DIRNAME/util.sh"

# Enable changing directory automatically
setopt auto_cd

# History in cache directory:
HISTSIZE=999999999999999999
SAVEHIST=999999999999999999
HISTFILE=~/.cache/zsh/history
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
# Auto complete with case insensitivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

file=$(ensurefile "https://raw.githubusercontent.com/eza-community/eza/main/completions/zsh/_eza" comp/_eza)
export FPATH="$(dirname $file):$FPATH"
unset file

zmodload zsh/complist
compinit
setopt globdots

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Enable searching through history
bindkey '^R' history-incremental-pattern-search-backward

# Edit line in Vim buffer ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
# Enter Vim buffer from normal mode
autoload -U edit-command-line && zle -N edit-command-line && bindkey -M vicmd "^e" edit-command-line

# Use Vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
#bindkey -M menuselect 'left' vi-backward-char
#bindkey -M menuselect 'down' vi-down-line-or-history
#bindkey -M menuselect 'up' vi-up-line-or-history
#bindkey -M menuselect 'right' vi-forward-char

# Fix backspace and delete
bindkey "^[[3~" delete-char
bindkey "^?" backward-delete-char


# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# ci", ci', ci`, di", etc.
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

# ci{, ci(, ci<, di{, etc.
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done

zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init

echo -ne '\e[5 q' # Use beam shape cursor on startup.
precmd() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Control bindings for programs
bindkey -s "^z" "fg\n"

# exiting the terminal
exit_zsh() { exit }
zle -N exit_zsh
bindkey -a "ZZ" exit_zsh

# Load RVM (can't be lazy loaded like NVM)
#[ -s "$rvm_path/scripts/rvm" ] && . "$rvm_path/scripts/rvm"

alias source_nvm='[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"'

# bun completions
[ -s "/opt/bun/_bun" ] && source "/opt/bun/_bun"


# place this after nvm initialization!
autoload -U add-zsh-hook
nvm_prev_dir=
load-nvmrc() {
  [ -f ./.nvmrc ] || return
  [ "$nvm_prev_dir" = "$PWD" ] && return
  nvm_prev_dir="$PWD"

  command -v nvm > /dev/null || source_nvm

  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# tty theme
if [ "$TERM" = "linux" ]; then
    printf %b '\e[40m' '\e[8]' # set default background to color 0 'dracula-bg'
    printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'dracula-fg'
    printf %b '\e]P0282a36'    # redefine 'black'          as 'dracula-bg'
    printf %b '\e]P86272a4'    # redefine 'bright-black'   as 'dracula-comment'
    printf %b '\e]P1ff5555'    # redefine 'red'            as 'dracula-red'
    printf %b '\e]P9ff7777'    # redefine 'bright-red'     as '#ff7777'
    printf %b '\e]P250fa7b'    # redefine 'green'          as 'dracula-green'
    printf %b '\e]PA70fa9b'    # redefine 'bright-green'   as '#70fa9b'
    printf %b '\e]P3f1fa8c'    # redefine 'brown'          as 'dracula-yellow'
    printf %b '\e]PBffb86c'    # redefine 'bright-brown'   as 'dracula-orange'
    printf %b '\e]P4bd93f9'    # redefine 'blue'           as 'dracula-purple'
    printf %b '\e]PCcfa9ff'    # redefine 'bright-blue'    as '#cfa9ff'
    printf %b '\e]P5ff79c6'    # redefine 'magenta'        as 'dracula-pink'
    printf %b '\e]PDff88e8'    # redefine 'bright-magenta' as '#ff88e8'
    printf %b '\e]P68be9fd'    # redefine 'cyan'           as 'dracula-cyan'
    printf %b '\e]PE97e2ff'    # redefine 'bright-cyan'    as '#97e2ff'
    printf %b '\e]P7f8f8f2'    # redefine 'white'          as 'dracula-fg'
    printf %b '\e]PFffffff'    # redefine 'bright-white'   as '#ffffff'
    clear
fi

# Source aliases
for f in $XDG_CONFIG_HOME/aliases/*.sh; do
    source "$f"
done

# Plugins
# Load zsh-syntax-highlighting. Important to load this before the reverse hist search
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
# Search repos for programs that can't be found (requires pkgfile)
source /usr/share/doc/pkgfile/command-not-found.zsh
# Reverse history search like in Vim (also apparently like in fish)
source $(ensurefile "https://raw.githubusercontent.com/zsh-users/zsh-history-substring-search/master/zsh-history-substring-search.zsh")

# Key bindings for the history search thing
# Insert mode
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
# Normal mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# Settings for history-substring-search
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND=bg=10,fg=8,bold
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND=bg=1,fg=15,bold
export HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS=I
export HISTORY_SUBSTRING_SEARCH_FUZZY=
export HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
export HISTORY_SUBSTRING_SEARCH_PREFIX=1

unset ___DIRNAME

# Run prompt
. /usr/share/searocket/searocket.zsh


# zprof
