#!/bin/zsh

# track loaded files
# local thispath="${(%):-%x}"
zsh_files+=("zlogin")

# LOGIN INFO

if [[ $LOGIN_INFO == 1 ]]; then
    sysinfo
    loginfiles
    logininfo
    printf "\n"
fi