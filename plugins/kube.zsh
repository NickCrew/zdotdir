(( ${+commands[kubectl]} )) || return

source <(kubectl completion zsh)
alias k=kubectl
compdef kubectl k
