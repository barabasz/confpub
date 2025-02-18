#!/bin/zsh

# track loaded files
# local thispath="${(%):-%x}"
zsh_files+=("zlogin")

# CLEANUP

# https://bit.ly/zsh_sessions
[[ -d $ZDOTDIR/.zsh_sessions ]] && rm -rf $ZDOTDIR/.zsh_sessions/*
[[ -d $ZDOTDIR/.zsh_sessions ]] && rmdir $ZDOTDIR/.zsh_sessions

# LOGIN INFO

if [[ ${ZSH_FUNCTIONS_LOADED} ]] && [[ $LOGIN_INFO == 1 ]]; then
    sysinfo
    # loginfiles
    logininfo
    printf "\n"
fi