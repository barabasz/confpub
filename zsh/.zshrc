#!/bin/zsh

thisfile=".zshrc"
# track loaded files
zsh_files+=("zshrc")

# LOCALE
source $ZDOTDIR/.zsh_locale

# MODULES
source $LIBDIR/ansi.sh
source $LIBDIR/log.sh
source $LIBDIR/colors.sh
source $LIBDIR/print.sh

# FUNCTIONS
source $ZDOTDIR/.zsh_functions

# INTEGRATIONS
sourceif $ZDOTDIR/.zsh_omz $thisfile
sourceif $ZDOTDIR/.zsh_omp $thisfile
sourceif $ZDOTDIR/.zsh_bat $thisfile
sourceif $ZDOTDIR/.zsh_brew $thisfile
sourceif $ZDOTDIR/.zsh_fzf $thisfile
sourceif $ZDOTDIR/.zsh_iterm $thisfile
sourceif $ZDOTDIR/.zsh_thefuck $thisfile
sourceif $ZDOTDIR/.zsh_zoxide $thisfile

# ALIASES
sourceif $ZDOTDIR/.zsh_aliases $thisfile

# Clean up
# https://bit.ly/zsh_sessions
[[ -d $ZDOTDIR/.zsh_sessions ]] && rm -rf $ZDOTDIR/.zsh_sessions/*
[[ -d $ZDOTDIR/.zsh_sessions ]] && rmdir $ZDOTDIR/.zsh_sessions