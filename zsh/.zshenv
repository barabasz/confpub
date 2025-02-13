#!/bin/zsh

# HISTORY
export HISTFILE=$ZDOTDIR/.zsh_history
export HISTSIZE=1000
export HISTFILESIZE=1000

# DIRECTORIES
## zsh
export ZDOTDIR=$HOME/.config/zsh
## Temp
export TMP=$HOME/.tmp
export TEMP=$TMP
export TEMPDIR=$TMP
export TMPDIR=$TMP
## GitHub
export GHDIR=$HOME/GitHub
hash -d git=$GHDIR
export GHBINDIR=$GHDIR/bin
export GHCONFDIR=$GHDIR/config
export GHCONFPRIVDIR=$GHDIR/confpriv
## Other
export BINDIR=$HOME/bin
hash -d bin=$BINDIR
export HOMEDIR=$HOME
export LIBDIR=$HOME/lib
export CONFDIR=$HOME/.config
hash -d config=$CONFDIR
export DLDIR=$HOME/Downloads

# XDG
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$CONFDIR}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_STATE_HOME=${XDG_STATE_HOME:-$HOME/.local/state}
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-$HOME/.xdg}
export XDG_PROJECTS_DIR=${XDG_PROJECTS_DIR:-$HOME/Projects}

# FILES
export ZFNFILE=$ZDOTDIR/.zsh_functions

# PATH
# user scripts and binaries
export PATH=$BINDIR:$BINDIR/common:$BINDIR/install:$BINDIR/test:$BINDIR/thisos:/usr/local/bin:$HOME/.local/bin:$PATH

# PROMPT fallback (will be override by oh-my-posh)
if [[ $(echo $0 | grep -o zsh) == 'zsh' ]]; then
    export PS1="[%{%F{cyan}%}%n%{%f%}@%{%F{green}%}%m:%{%F{yellow}%}%~%{%f%}%]]$ "
else
    export PS1="[\[\033[36m\]\u\[\033[37m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]]$ "
fi

# Preferred editor
export EDITOR='nvim'
export VISUAL='code'

# VARIA
export MYGH='https://raw.githubusercontent.com/barabasz'

# Get the colors in the opened man page itself
export MANPAGER="sh -c 'col -bx | bat -l man -p --paging always'"

# zsh variables
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
