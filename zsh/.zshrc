#!/bin/zsh

# LOCALE
source $ZDOTDIR/.zsh_locale

# MODULES
source $LIBDIR/ansi.sh
source $LIBDIR/log.sh
source $LIBDIR/colors.sh
source $LIBDIR/print.sh

# FUNCTIONS
source $ZDOTDIR/.zsh_functions

# ALIASES
source $ZDOTDIR/.zsh_aliases

# INTEGRATIONS
source $ZDOTDIR/.zsh_omz     # oh-my-zsh
source $ZDOTDIR/.zsh_omp     # oh-my-posh
source $ZDOTDIR/.zsh_bat
source $ZDOTDIR/.zsh_brew
source $ZDOTDIR/.zsh_fzf
source $ZDOTDIR/.zsh_iterm
source $ZDOTDIR/.zsh_thefuck
source $ZDOTDIR/.zsh_zoxide