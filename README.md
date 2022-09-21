# Zsh
Config files for zsh.

## How to use
* create regular file `$XDG_CACHE_HOME/zsh/history` if id doesn't already exist
    * this will store all zsh history
    * this file will never reset and will grow indefinitely, if this is an issue, change the values of `HISTSIZE` and `SAVEHIST` in `.zshrc`
* create directory `$XDG_CONFIG_HOME/aliases/`
    * all files in this directory will be sourced
    * put aliases in the files for them to be used
* place this repo in `$XDG_CONFIG_HOME`
* symlink `.zshenv` to `$HOME/.zshenv`


## Additional requirements
### `.zshrc`
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
    * [arch comunity repo](https://archlinux.org/packages/community/any/zsh-syntax-highlighting/)
    * fish style syntax highlighting
* [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
    * [arch comunity repo](https://archlinux.org/packages/community/any/zsh-history-substring-search/)
    * apply [this](https://github.com/zsh-users/zsh-history-substring-search/commit/220e3a03e04055d683b242054fa195d146f10d84.diff) patch to only match beginning of the line
    * fish (and vim) style history search
        * type the start of a command, press up to only match commands that start the same
* [searocket prompt](https://github.com/dk949/searocket)
    * needs to be built from source, requires dlang toolchain

### `.zprofile`
Nothing that `.zprofile` contains is essential for zsh, it just sets up a few things
* [mlocate](https://pagure.io/mlocate)
    * [arch core repo](https://archlinux.org/packages/core/x86_64/mlocate/)
    * mlocate database is updated
* [amixer (alsa-utils)](https://github.com/alsa-project/alsa-utils)
    * [arch extra repo](https://archlinux.org/packages/extra/x86_64/alsa-utils/)
    * sets master volume to 30% and turns speakers off
* [update-variables (dwm-scripts)](https://github.com/dk949/dwm-scripts)
    * updates variables required for slstatus
