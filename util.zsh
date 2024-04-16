ensurefile() {
    local dirname=$ZDOTDIR/files
    local cmd=(curl -sL)
    local url=$1
    local filename=$2

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

    eval "cd $dirname && ${cmd[*]} $url" 1>&2

    echo "$final"
}
