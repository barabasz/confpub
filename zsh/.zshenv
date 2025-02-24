#!/bin/zsh

# track loaded files
local thisfile="zshenv"
zsh_files+=("$thisfile")

# zsh configuration directory
export ZDOTDIR=$HOME/.config/zsh

# load environment variables
source $ZDOTDIR/.zsh_env

# load functions
for file in "$LIBDIR"/*.sh; do
    if [[ -f "$file" && ! "$(basename "$file")" =~ ^_ ]]; then
        source "$file"
    fi
done

# locale
sourceif $ZDOTDIR/.zsh_locale $thisfile



