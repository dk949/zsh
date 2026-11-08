# Zsh
Config files for zsh.

Works on Linux and macOS.

## How to use
* place this repo in `$XDG_CONFIG_HOME` (as `$XDG_CONFIG_HOME/zsh`)
* symlink `.zshenv` to `$HOME/.zshenv`
* zsh history is stored in `$XDG_CACHE_HOME/zsh/history` (created automatically)
    * this file will never reset and will grow indefinitely, if this is an issue, change the values of `HISTSIZE` and `SAVEHIST` in `.zshrc`
* optionally create directory `$XDG_CONFIG_HOME/aliases/`
    * all `*.sh` files in this directory will be sourced
    * put aliases in the files for them to be used


## Additional requirements
All of these are optional: anything missing is skipped.

### `.zshrc`
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
    * Arch (`/usr/share/zsh/plugins`), Debian/Ubuntu (`/usr/share`) and Homebrew install locations are checked
    * fish style syntax highlighting
* [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
    * downloaded automatically into `$ZDOTDIR/files` on first start
    * fish (and vim) style history search
        * type the start of a command, press up to only match commands that start the same
* [fzf](https://github.com/junegunn/fzf)
    * if installed, `^R` uses [zsh-fzf-history-search](https://github.com/joshskidmore/zsh-fzf-history-search) (downloaded automatically)
* command-not-found handler, whichever is installed:
    * [pkgfile](https://github.com/falconindy/pkgfile) on Arch, `command-not-found` on Debian/Ubuntu, or Homebrew's built-in one
* [searocket prompt](https://github.com/dk949/searocket)
    * needs to be built from source, requires dlang toolchain
    * `/usr/local/share/searocket/searocket.zsh` and `/usr/share/searocket/searocket.zsh` are checked

### `.zprofile`
Nothing else in `.zprofile` is essential for zsh. On Linux, logging in on tty1 also sets up a few things and starts X
* [mlocate](https://pagure.io/mlocate)
    * [arch core repo](https://archlinux.org/packages/core/x86_64/mlocate/)
    * mlocate database is updated
* [amixer (alsa-utils)](https://github.com/alsa-project/alsa-utils)
    * [arch extra repo](https://archlinux.org/packages/extra/x86_64/alsa-utils/)
    * sets master volume to 30% and turns speakers off
* [update-variables (dwm-scripts)](https://github.com/dk949/dwm-scripts)
    * updates variables required for slstatus
