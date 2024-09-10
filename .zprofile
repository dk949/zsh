#!/bin/zsh

[ "$(tty | sed -E 's|/dev/tty([0-9]*)|\1|')" = "1" ] && {
    sudo updatedb &
    [ -f "$HOME/.yarnrc" ] && rm "$HOME/.yarnrc" &
    [ -d "$HOME/.yarn" ] && rm -rf "$HOME/.yarn" &
    [ -d "$HOME/.npm" ] && rm -rf "$HOME/.npm" &
    startx "$XDG_CONFIG_HOME/X11/xinitrc"
}
