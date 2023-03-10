# vim: foldmethod=marker
# ------------------------------------------------------------------------------
# File: .zshrc 
# Description: Configuration for interactive Z shell sessions
# ------------------------------------------------------------------------------

#  INIT {{{
#
# Startup profiling
zmodload zsh/zprof  

echo "$(fortune)"

# Bootstrap zcomet plugin manager
_zcomet_home="${ZDOTDIR:-$HOME}"
if [[ ! -f ${_zcomet_home}/.zcomet/bin/zcomet.zsh ]]; then
  command git clone https://github.com/agkozak/zcomet.git ${_zcomet_home}/.zcomet/bin
fi
source ${_zcomet_home}/.zcomet/bin/zcomet.zsh

# Custom Local initialization
test -e ${ZDOTDIR}/.local.zsh && source ${ZDOTDIR}/.local.zsh

# Function Path
fpath+="${HOME}/.local/share/zsh/functions"
autoload -Uz $fpath[1]/*(.:t)
fpath+="$(brew --prefix)/share/zsh/site-functions" 
# }}}
 
# BEFORE {{{
#
zcomet load romkatv/powerlevel10k		# super fast prompt
zcomet load bigH/git-fuzzy				# make git commands fuzzy
zcomet load romkatv/zsh-defer			# zsh-defer

zcomet snippet OMZ::lib/functions.zsh
zcomet snippet OMZ::lib/misc.zsh
zcomet snippet OMZ::lib/clipboard.zsh
# zcomet snippet OMZ::lib/git.zsh
zcomet snippet OMZ::lib/termsupport.zsh
zcomet snippet OMZ::lib/grep.zsh

zcomet load ohmyzsh plugins/colored-man-pages
zcomet load ohmyzsh plugins/colorize
zcomet load ohmyzsh plugins/compleat
zcomet load ohmyzsh plugins/copybuffer
zcomet load ohmyzsh plugins/copyfile
zcomet load ohmyzsh plugins/direnv
zcomet load ohmyzsh plugins/docker
zcomet load ohmyzsh plugins/doctl
zcomet load ohmyzsh plugins/encode64
zcomet load ohmyzsh plugins/extract
zcomet load ohmyzsh plugins/fabric
zcomet load ohmyzsh plugins/fancy-ctrl-z
zcomet load ohmyzsh plugins/fastfile
zcomet load ohmyzsh plugins/fd
zcomet load ohmyzsh plugins/gh
zcomet load ohmyzsh plugins/git-auto-fetch
zcomet load ohmyzsh plugins/gitfast
zcomet load ohmyzsh plugins/gitignore
zcomet load ohmyzsh plugins/gnu-utils
zcomet load ohmyzsh plugins/golang
zcomet load ohmyzsh plugins/gpg-agent
zcomet load ohmyzsh plugins/httpie
zcomet load ohmyzsh plugins/invoke
zcomet load ohmyzsh plugins/iterm2
zcomet load ohmyzsh plugins/jira
zcomet load ohmyzsh plugins/jsontools
zcomet load ohmyzsh plugins/lpass
zcomet load ohmyzsh plugins/macos
zcomet load ohmyzsh plugins/magic-enter
zcomet load ohmyzsh plugins/man
zcomet load ohmyzsh plugins/mongocli
zcomet load ohmyzsh plugins/nomad
zcomet load ohmyzsh plugins/nmap
zcomet load ohmyzsh plugins/otp
zcomet load ohmyzsh plugins/poetry
zcomet load ohmyzsh plugins/ripgrep
zcomet load ohmyzsh plugins/rust
zcomet load ohmyzsh plugins/scd
zcomet load ohmyzsh plugins/ssh-agent
zcomet load ohmyzsh plugins/tmux
zcomet load ohmyzsh plugins/transfer
zcomet load ohmyzsh plugins/vault
zcomet load ohmyzsh plugins/web-search
# }}}

# SNIPPETS {{{

zcomet snippet "${ZDOTDIR}/lib/settings.zsh"
zcomet snippet "${ZDOTDIR}/lib/completion.zsh"
zcomet snippet "${ZDOTDIR}/lib/keybindings.zsh"
zcomet snippet "${ZDOTDIR}/lib/aliases.zsh"

bindkey '^R' mcfly-history-widget
zcomet snippet "${HOME}/.fzf.zsh"	
zcomet snippet "${ZDOTDIR}/plugins/p10k.zsh"
zcomet snippet "${ZDOTDIR}/plugins/exa.zsh"
zcomet snippet "${ZDOTDIR}/plugins/broot.zsh"
zcomet snippet "${ZDOTDIR}/plugins/nvim.zsh"
zcomet snippet "${ZDOTDIR}/plugins/poetry.zsh"
zcomet snippet "${ZDOTDIR}/plugins/mcfly.zsh"
zcomet snippet "${ZDOTDIR}/plugins/kitty.zsh"
zcomet snippet "${ZDOTDIR}/plugins/kube.zsh"
zcomet snippet "${ZDOTDIR}/plugins/1password.zsh"
zcomet snippet "${ZDOTDIR}/plugins/iterm.zsh"
zcomet snippet "${ZDOTDIR}/plugins/zoxide.zsh"


# }}}
 
# AFTER {{{  
# 
zcomet load zsh-users/zsh-completions					# After
zcomet load zsh-users/zsh-autosuggestions				# After
zcomet load zdharma-continuum/fast-syntax-highlighting	# After
zcomet compinit 
zcomet load ohmyzsh plugins/aws

# }}}

