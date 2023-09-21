# My executables
export PATH="$HOME/.local/bin:$PATH"

#npm
export PATH="$PATH:$XDG_DATA_HOME/npm/bin"

#cabal
export PATH="$PATH:$HOME/.cabal/bin/"

[ -d ~/.stack/programs/x86_64-linux/ ] && ___TMP="$(find $XDG_DATA_HOME/stack/programs/x86_64-linux -maxdepth 1 -type d | sort -r | head -n 1)"
[ -n "$___TMP" ] && [ -d "$___TMP" ] && export PATH=$PATH:$___TMP/bin
unset ___TMP

export JDK_HOME="/opt/jdk/"

opt_path=(
    "$JDK_HOME/bin"            # Java
    "/opt/biber"               # Biber
    "/opt/bun/bin"             # bun
    "/opt/clion-2021.3.3/bin/" # clion
    "/opt/cuda/bin"            # cuda
    "/opt/elm/"                # elm
    "/opt/formark"             # formark
    "/opt/hlint/"              # hlint
    "/opt/inkscape"            # inkscape
    "/opt/krita/"              # krita
    "/opt/pandoc/bin/"         # pandoc
    "/opt/scala3"              # scala
    "/opt/serve-d/"            # serve-d
    "/opt/shellcheck"          # shellcheck
    "/opt/visit/bin"           # visit
    "/opt/j9.4/bin"            # jconsole
)

export OPT_PATH=$(IFS=:; echo "${opt_path[*]}")
export PATH="$PATH:$OPT_PATH"
unset opt_path

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$rvm_path/bin"
