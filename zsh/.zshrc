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

if [[ $(isinstalled oh-my-posh) == 1 ]]; then
    sourceif $ZDOTDIR/.zsh_omp $thisfile
fi

if [[ $(isinstalled bat) == 1 ]]; then
    sourceif $ZDOTDIR/.zsh_bat $thisfile
fi

if [[ $(isinstalled brew) == 1 ]]; then
    sourceif $ZDOTDIR/.zsh_brew $thisfile
fi

if [[ $(isinstalled fzf) == 1 ]]; then
    sourceif $ZDOTDIR/.zsh_fzf $thisfile
fi

if [[ $(isinstalled thefuck) == 1 ]]; then
    sourceif $ZDOTDIR/.zsh_thefuck $thisfile
fi

if [[ $(isinstalled zoxide) ]]; then
    sourceif $ZDOTDIR/.zsh_zoxide $thisfile
fi

# ALIASES
sourceif $ZDOTDIR/.zsh_aliases $thisfile

# Clean up
# https://bit.ly/zsh_sessions
[[ -d $ZDOTDIR/.zsh_sessions ]] && rm -rf $ZDOTDIR/.zsh_sessions/*
[[ -d $ZDOTDIR/.zsh_sessions ]] && rmdir $ZDOTDIR/.zsh_sessions