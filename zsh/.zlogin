#!/bin/zsh

# login files tracking - keep at the end
export ZFILES_COUNT=$((ZFILES_COUNT + 1))
export ZFILE_LOGIN=1

# show login info
if [[ $LOGIN_INFO == 1 ]]; then
    sysinfo
    loginfiles
    logininfo
    printf "\n"
fi
