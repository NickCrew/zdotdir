(( ${+commands[asdf]} )) || return

asdf_dir="$(brew --prefix asdf)/libexec"
export asdf_dir
