#!/bin/zsh

# track loaded files
local thisfile="zshenv"
zsh_files+=("$thisfile")

# zsh configuration directory
export ZDOTDIR=$HOME/.config/zsh

# environment variables
source $ZDOTDIR/.zsh_env

# modules
source $LIBDIR/ansi.sh
source $LIBDIR/log.sh
source $LIBDIR/colors.sh
source $LIBDIR/print.sh

# functions
source $ZDOTDIR/.zsh_functions

# locale
sourceif $ZDOTDIR/.zsh_locale $thisfile



