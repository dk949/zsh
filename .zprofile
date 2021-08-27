#!/bin/zsh
#

# shellcheck source=/dev/null
# Updatingthe mlocate database
sudo updatedb &
sudo pkgfile -u &

# Initial volume
amixer -q sset 'Master' 30% off

update-variables 18000



[ "$(tty | sed -E 's|/dev/tty([0-9]*)|\1|')" = "1" ] && startx "$XDG_CONFIG_HOME/X11/xinitrc"
