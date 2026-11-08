# Sourced from .zprofile

# Drop duplicate PATH entries
typeset -U path PATH

# My executables
path+=("$HOME/.local/bin")

#npm
path+=("$XDG_DATA_HOME/npm/bin")

#cabal
path+=("$HOME/.cabal/bin")

# rust
[ -f "$CARGO_HOME/env" ] && . "$CARGO_HOME/env"

# stack: newest GHC for whichever platform directory exists (x86_64-linux, aarch64-osx, ...)
___TMP=("$XDG_DATA_HOME"/stack/programs/*/*(N/nOn))
(( $#___TMP )) && path+=("$___TMP[1]/bin")
unset ___TMP

if [[ $OSTYPE == darwin* ]]; then
    ___TMP=$(/usr/libexec/java_home 2>/dev/null)
    [[ -n $___TMP ]] && export JDK_HOME=$___TMP
    unset ___TMP
elif [[ -d /opt/jdk ]]; then
    export JDK_HOME="/opt/jdk/"
fi

# Optional tools in /opt. (N-/) drops any directory that doesn't exist.
opt_path=(
    ${JDK_HOME:+$JDK_HOME/bin}(N-/)          # Java
    /opt/biber(N-/)                          # Biber
    /opt/clion-2021.3.3/bin(N-/)             # clion
    /opt/cuda/bin(N-/)                       # cuda
    /opt/elm(N-/)                            # elm
    /opt/formark(N-/)                        # formark
    /opt/hlint(N-/)                          # hlint
    /opt/inkscape(N-/)                       # inkscape
    /opt/krita(N-/)                          # krita
    /opt/pandoc/bin(N-/)                     # pandoc
    /opt/scala3(N-/)                         # scala
    /opt/serve-d(N-/)                        # serve-d
    /opt/shellcheck(N-/)                     # shellcheck
    /opt/visit/bin(N-/)                      # visit
    /opt/blender(N-/)                        # blender
)

export OPT_PATH=${(j.:.)opt_path}
path+=($opt_path)
unset opt_path

# use this jconsole instead of the java one
path=(/opt/j9.4/bin(N-/) $path)

# bun
path+=("$BUN_INSTALL/bin")
