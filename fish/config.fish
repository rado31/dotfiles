set fish_greeting ""

eval "$(/opt/homebrew/bin/brew shellenv)"

alias ll "eza --long --header --icons"
alias lla "eza --long --header --icons -a"
alias cat "bat"

set -Ux HOMEBREW_NO_AUTO_UPDATE true
