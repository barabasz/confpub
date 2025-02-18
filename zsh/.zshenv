#!/bin/zsh

# track loaded files
local thisfile="zshenv"
zsh_files+=("$thisfile")

# zsh configuration directory
export ZDOTDIR=$HOME/.config/zsh

# functions
source $ZDOTDIR/.zsh_functions

# environment variables
sourceif $ZDOTDIR/.zsh_env $thisfile
