#!/bin/zsh

# track loaded files
local thisfile="zshenv"
zsh_files+=("$thisfile")

# zsh configuration directory
export ZDOTDIR=$HOME/.config/zsh

# functions
source $ZDOTDIR/.zsh_functions

# locale
sourceif $ZDOTDIR/.zsh_locale $thisfile

# environment variables
sourceif $ZDOTDIR/.zsh_env $thisfile

# modules
sourceif $LIBDIR/ansi.sh $thisfile
sourceif $LIBDIR/log.sh $thisfile
sourceif $LIBDIR/colors.sh $thisfile
sourceif $LIBDIR/print.sh $thisfile


