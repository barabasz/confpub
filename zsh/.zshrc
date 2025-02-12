#!/bin/zsh

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 1

plugins=(copyfile copypath history sudo web-search zsh-autosuggestions zsh-syntax-highlighting macos)
source $ZSH/oh-my-zsh.sh

# LOCALE
source $ZDOTDIR/.zsh_locale

# MODULES
source $LIBDIR/ansi.sh
source $LIBDIR/log.sh
source $LIBDIR/colors.sh
source $LIBDIR/print.sh

# FUNCTIONS
source $ZDOTDIR/.zsh_functions

# ALIASES
source $ZDOTDIR/.zsh_aliases

# INTEGRATIONS
# source $ZDOTDIR/.zsh_angular
source $ZDOTDIR/.zsh_bat
source $ZDOTDIR/.zsh_brew
source $ZDOTDIR/.zsh_fzf
source $ZDOTDIR/.zsh_iterm
source $ZDOTDIR/.zsh_thefuck
source $ZDOTDIR/.zsh_zoxide

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh