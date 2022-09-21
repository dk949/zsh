# My executables
export PATH="$HOME/.local/bin:$PATH"

#npm
export PATH="$PATH:$XDG_DATA_HOME/npm/bin"

#cabal
export PATH="$PATH:$HOME/.cabal/bin/"

# stack
[ -d ~/.stack/programs/x86_64-linux/ ] && ___TMP="$(find ~/.stack/programs/x86_64-linux -maxdepth 1 -type d | sort -r | head -n 1)"
[ -n "$___TMP" ] && [ -d "$___TMP" ] && export PATH=$PATH:$___TMP/bin
unset ___TMP


export JDK_HOME="/opt/jdk/"

# Java
export PATH="$PATH:$JDK_HOME/bin"

# biber
export PATH="$PATH:/opt/biber-2.16"

# clion
export PATH="$PATH:/opt/clion-2021.3.3/bin/"

# elm
export PATH="$PATH:/opt/elm-0.19.1/"

# visit
export PATH="$PATH:/opt/visit/bin"

# cuda
export PATH="$PATH:/opt/cuda/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$rvm_path/bin"
