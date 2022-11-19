#!/bin/zsh
#

# shellcheck source=/dev/null
# Updatingthe mlocate database
sudo updatedb &

[ -f $HOME/.yarnrc ] && rm $HOME/.yarnrc &
[ -d $HOME/.yarn ] && rm -rf $HOME/.yarn &
[ -d $HOME/.npm ] && rm -rf $HOME/.npm &

[ "$(tty | sed -E 's|/dev/tty([0-9]*)|\1|')" = "1" ] && startx "$XDG_CONFIG_HOME/X11/xinitrc"
