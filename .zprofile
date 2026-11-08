#!/bin/zsh

# PATH is set up here rather than in .zshenv because on macOS /etc/zprofile runs
# path_helper after .zshenv, which moves the system directories in front of anything
# added earlier. Non-login shells inherit the exported PATH from their parent.

for ___TMP in /opt/homebrew/bin/brew /usr/local/bin/brew /home/linuxbrew/.linuxbrew/bin/brew "$HOME/.linuxbrew/bin/brew"; do
    [[ -x $___TMP ]] && { eval "$("$___TMP" shellenv)"; break }
done
unset ___TMP

. "$ZDOTDIR/path.zsh"

if (( $+commands[nvim] )); then
    [[ -z $EDITOR ]] && export EDITOR='nvim'
    [[ -z $VISUAL ]] && export VISUAL='nvim'
    # neovim as manpager
    export MANPAGER='nvim +Man!'
fi

if [[ $OSTYPE == linux* && $(tty) == /dev/tty1 ]]; then
    sudo updatedb &
    [ -f "$HOME/.yarnrc" ] && rm "$HOME/.yarnrc" &
    [ -d "$HOME/.yarn" ] && rm -rf "$HOME/.yarn" &
    [ -d "$HOME/.npm" ] && rm -rf "$HOME/.npm" &
    startx "$XDG_CONFIG_HOME/X11/xinitrc"
fi
