#!/bin/zsh

# track loaded files
local thispath="${(%):-%x}"
zsh_files=(${thispath})

export ZDOTDIR=$HOME/.config/zsh
source $ZDOTDIR/.zsh_env
