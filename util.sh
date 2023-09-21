#!/usr/bin/env sh
DIRNAME=$ZDOTDIR/files
ensurefile() {
    CMD="curl -L"
    URL="$1"
    FILENAME="$2"

    mkdir -p "$DIRNAME"

    FINAL_FILENAME="$DIRNAME/$FILENAME"
    FINAL_URL="$DIRNAME/$(basename "$URL")"

    [ -f "$FINAL_FILENAME" ] &&  echo "$FINAL_FILENAME" && return
    [ -f "$FINAL_URL" ] &&  echo "$FINAL_URL" && return

    if [ -z "$FILENAME" ]; then
        CMD="$CMD -O"
        FINAL="$FINAL_URL"
    else
        mkdir -p "$DIRNAME/$(dirname "$FILENAME")"
        CMD="$CMD -o $FILENAME"
        FINAL="$FINAL_FILENAME"
    fi

    eval "cd $DIRNAME && $CMD $URL" 1>&2

    echo "$FINAL"
}
