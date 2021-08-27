# README
Config files for zsh.

## How to use
* place this repo in `$XDG_CONFIG_HOME`
* symlink `.zshenv` to `$HOME/.zshenv`

## Additional requirements
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
    * [arch comunity repo](https://archlinux.org/packages/community/any/zsh-syntax-highlighting/)
* [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
    * [arch comunity repo](https://archlinux.org/packages/community/any/zsh-history-substring-search/)
    * apply [this](https://github.com/zsh-users/zsh-history-substring-search/commit/220e3a03e04055d683b242054fa195d146f10d84.diff) patch to only match beginning of the line
* [spaceshipt-prompt](https://github.com/spaceship-prompt/spaceship-prompt)
    * [AUR](https://aur.archlinux.org/packages/spaceship-prompt/)
