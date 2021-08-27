#
# ~/.config/zsh/.zshrc
#
# uncomment this and the last line of the file to run the profiler
#zmodload zsh/zprof
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable colors and change prompt:
autoload -U colors && colors

# Enable changing directory automatically
setopt auto_cd

# History in cache directory:
HISTSIZE=999999999999999999
SAVEHIST=999999999999999999
HISTFILE=~/.cache/zsh/history
setopt HIST_IGNORE_DUPS

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
# Auto complete with case insensitivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

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
bindkey -s "^h" "history 1\n"
bindkey -s "^l" "clear\n"
bindkey -s "^d" "dlfile\n"

# exiting the terminal
exit_zsh() { exit }
zle -N exit_zsh
bindkey -a "ZZ" exit_zsh

# nvm stuff
export NVM_DIR="$XDG_CONFIG_HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {

  [ -f ./.nvmrc ] || return

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


# Source aliases
for f in $XDG_CONFIG_HOME/aliases/*.sh; do
    source "$f"
done

# Plugins
# Load zsh-syntax-highlighting. Important to load this before the reverse hist search
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
# Search repos for programs that can't be found
source /usr/share/doc/pkgfile/command-not-found.zsh
# Reverse history search like in Vim (also apparently like in fish)
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

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
#Note this does nothing without this patch https://github.com/zsh-users/zsh-history-substring-search/commit/220e3a03e04055d683b242054fa195d146f10d84.diff
# Unless it got merged into main
export HISTORY_SUBSTRING_SEARCH_PREFIX=1

SPACESHIP_DIR_TRUNC=0
SPACESHIP_DIR_PREFIX=
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_SYMBOL=❯
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_HG_SHOW=true
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=true
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=true
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_VENV_SHOW=true
SPACESHIP_PYENV_SHOW=true
SPACESHIP_DOTNET_SHOW=true
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_JOBS_SHOW=true

# Spaceship Prompt
autoload -U promptinit; promptinit
prompt spaceship

#zprof
