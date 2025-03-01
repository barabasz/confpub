#!/bin/zsh

# brew fallback
if [[ -f /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -f /home/linuxbrew/.linuxbrew/bin/brew ]]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi


# shell files tracking - keep at the end
ZFILES_COUNT=$((ZFILES_COUNT + 1))
export ZFILE_PROFILE=1
