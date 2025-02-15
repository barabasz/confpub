#!/bin/zsh

# track loaded files
local thispath="${(%):-%x}"
zsh_files+=($thispath)

[[ $(isinstalled loginfiles) ]] && loginfiles
[[ $(isinstalled logininfo) ]] && logininfo
printf "\n"