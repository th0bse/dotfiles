#! /bin/zsh
# Config file for configuring commonly used, user defined, aliases.
# This file gets sourced in the .zshrc

# always use nvim
alias vim=nvim

# cls should also clear the terminal. It's shorter why not use it
alias cls=clear

# various aliases for zeusctl
alias zctl='start_gwdg_wg; ~/scripts/zeusctl/zeusctl.pl'
alias zctlp='start_gwdg_wg; zctl punch'
alias zctll='start_gwdg_wg; zctl lunch'
alias zctls='start_gwdg_wg; zctl status'
alias zctlr='start_gwdg_wg; zctl report'
alias zctle='start_gwdg_wg; colleague_status'
