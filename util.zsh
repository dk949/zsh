ensurefile() {
    local dirname=$ZDOTDIR/files
    local cmd=(curl -fsSL)
    local url=$1
    local filename=$2
    local final

    mkdir -p "$dirname"

    local final_filename="$dirname/$filename"
    #shellcheck disable=SC2155 # basename can't fail
    local final_url="$dirname/$(basename "$url")"

    [ -f "$final_filename" ] && echo "$final_filename" && return
    [ -f "$final_url" ] && echo "$final_url" && return

    if [ -z "$filename" ]; then
        cmd+=("-O")
        final="$final_url"
    else
        mkdir -p "$dirname/$(dirname "$filename")"
        cmd+=("-o" "$filename")
        final="$final_filename"
    fi

    # subshell so the cd doesn't change the interactive shell's directory
    ( cd "$dirname" && "${cmd[@]}" "$url" ) 1>&2

    echo "$final"
}

# Source the first readable file among the arguments. Returns 1 if none exist.
# Note: the file is sourced inside a function, so any variable it declares with a
# plain `typeset`/`local` (rather than `typeset -g`) is local to this function.
source_first() {
    local f
    for f in "$@"; do
        [[ -r $f ]] && { source "$f"; return }
    done
    return 1
}

# Suggest packages for unknown commands, using whichever handler is installed:
# pkgfile (Arch), command-not-found (Debian/Ubuntu) or Homebrew.
setup_command_not_found() {
    local brew_repo=$HOMEBREW_REPOSITORY
    [[ -z $brew_repo ]] && (( $+commands[brew] )) && brew_repo=$(brew --repository)
    source_first \
        /usr/share/doc/pkgfile/command-not-found.zsh \
        /etc/zsh_command_not_found \
        ${brew_repo:+$brew_repo/Library/Homebrew/command-not-found/handler.sh}
}
