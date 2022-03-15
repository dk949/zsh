export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/share/npm/bin
export PATH=$PATH:~/.cabal/bin/
[ -d ~/.stack/programs/x86_64-linux/ ] && ___TMP="$(find ~/.stack/programs/x86_64-linux -maxdepth 1 -type d | sort -r | head -n 1)"
[ -n "$___TMP" ] && [ -d "$___TMP" ] && export PATH=$PATH:$___TMP/bin
unset ___TMP


export PATH="$PATH:/opt/biber-2.16"

