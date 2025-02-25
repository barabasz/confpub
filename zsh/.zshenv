#!/bin/zsh

# track loaded files
local thisfile="zshenv"
zsh_files+=("$thisfile")

# zsh configuration directory
export ZDOTDIR=$HOME/.config/zsh

# load environment variables
source $ZDOTDIR/.zsh_env

# load functions
for f in "$LIBDIR"/*.sh; do
    [[ -f "$f" && ! "$(basename "$f")" =~ ^_ ]] && source "$f"
done

# locale
sourceif $ZDOTDIR/.zsh_locale $thisfile

export ZSHENV_LOADED=1