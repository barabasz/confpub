#!/bin/zsh

# track loaded files
# local thispath="${(%):-%x}"
zsh_files+=("zlogin")

if [[ ${ZSH_FUNCTIONS_LOADED} ]]; then
    sysinfo
    loginfiles
    logininfo
    printf "\n"
fi
