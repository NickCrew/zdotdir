(( ${+commands[op]} )) || return

eval "$(op completion zsh)" 
compdef _op op
