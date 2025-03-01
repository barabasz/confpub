#!/bin/zsh

# zsh configuration directory
export ZDOTDIR=$HOME/.config/zsh

# load environment variables
source $ZDOTDIR/.zvars

# load functions
for f in "$LIBDIR"/*.sh; do
    [[ -f "$f" && ! "$(basename "$f")" =~ ^_ ]] && source "$f"
done

# extra functions for linux
[[ "$(osname)" =~ ^(debian|ubuntu)$ ]] && source "$LIBDIR/_linux.sh"

# locale
sourceif $ZDOTDIR/.zlocale $thisfile


# login files tracking - keep at the end
export ZFILES_COUNT=$((ZFILES_COUNT + 1))
export ZFILE_ENV=1