#! /bin/zsh
# Config file for configuring commonly used, user defined, aliases.
# This file gets sourced in the .zshrc

# always use nvim
alias vim=nvim

# cls should also clear the terminal. It's shorter why not use it
alias cls=clear

# various aliases for zeusctl
alias zctl='~/scripts/zeusctl/zeusctl.pl'
alias zctlp='zctl punch'
alias zctll='zctl lunch'
alias zctls='zctl status'
alias zctlr='zctl report'
alias zctle='colleague_status'
