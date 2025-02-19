#!/bin/zsh

# track loaded files
local thisfile="zshrc"
zsh_files+=("$thisfile")

# LOCALE

sourceif $ZDOTDIR/.zsh_locale $thisfile

# MODULES

sourceif $LIBDIR/ansi.sh $thisfile
sourceif $LIBDIR/log.sh $thisfile
sourceif $LIBDIR/colors.sh $thisfile
sourceif $LIBDIR/print.sh $thisfile

# INTEGRATIONS

## oh-my-zsh
if [[ -f $ZSH/oh-my-zsh.sh ]]; then
    sourceif $ZDOTDIR/.zsh_omz $thisfile
fi

## oh-my-posh
if [[ $(isinstalled oh-my-posh) == 1 ]]; then
    sourceif $ZDOTDIR/.zsh_omp $thisfile
fi

## bat (cat clone)
if [[ $(isinstalled bat) == 1 ]]; then
    sourceif $ZDOTDIR/.zsh_bat $thisfile
fi

## brew (package manager)
if [[ $(isinstalled brew) == 1 ]]; then
    sourceif $ZDOTDIR/.zsh_brew $thisfile
fi

## fzf (fuzzy finder)
if [[ $(isinstalled fzf) == 1 ]]; then
    sourceif $ZDOTDIR/.zsh_fzf $thisfile
fi

## thefuck (corrects previous command)
if [[ $(isinstalled thefuck) == 1 ]]; then
    sourceif $ZDOTDIR/.zsh_thefuck $thisfile
fi

## yazi file manager
if [[ $(isinstalled yazi) == 1 ]]; then
    sourceif $ZDOTDIR/.zsh_yazi $thisfile
fi

## zoxide (cd replacement)
if [[ $(isinstalled zoxide) == 1 ]]; then
    sourceif $ZDOTDIR/.zsh_zoxide $thisfile
fi

# ALIASES

sourceif $ZDOTDIR/.zsh_aliases $thisfile

# CLEANUP

# https://bit.ly/zsh_sessions
if [[ -d $ZDOTDIR/.zsh_sessions ]]; then
    rm -rf $ZDOTDIR/.zsh_sessions > /dev/null 2>&1
fi