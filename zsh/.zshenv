#!/bin/zsh

# HISTORY
export HISTFILE=$ZDOTDIR/.zsh_history
export HISTSIZE=1000
export HISTFILESIZE=1000

# XDG
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_STATE_HOME=${XDG_STATE_HOME:-$HOME/.local/state}
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-$HOME/.xdg}
export XDG_PROJECTS_DIR=${XDG_PROJECTS_DIR:-$HOME/Projects}

# DIRECTORIES
export ZDOTDIR=$HOME/.config/zsh
export BINDIR=$HOME/bin
export HOMEDIR=$HOME
export LIBDIR=$HOME/lib
export GHDIR=$HOME/GitHub
export GHBINDIR=$GHDIR/bin
export GHCONFDIR=$GHDIR/config
export CONFDIR=$XDG_CONFIG_HOME

# PATH
# user scripts and binaries
export PATH=$BINDIR:$BINDIR/install:$BINDIR/test:$HOME/binos:/usr/local/bin:$PATH

# Prompt fallback (will be override by p10k)
export PS1="[%{%F{cyan}%}%n%{%f%}@%{%F{green}%}%m:%{%F{yellow}%}%~%{%f%}%]]$ "

# Preferred editor
export EDITOR='nvim'
export VISUAL='code'

# Get the colors in the opened man page itself
export MANPAGER="sh -c 'col -bx | bat -l man -p --paging always'"

# zsh variables
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"