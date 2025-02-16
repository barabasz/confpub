#!/bin/zsh

# track loaded files
# local thispath="${(%):-%x}"
zsh_files=("zshenv")

export ZDOTDIR=$HOME/.config/zsh
source $ZDOTDIR/.zsh_env
