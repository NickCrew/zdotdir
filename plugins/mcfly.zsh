(( ${+commands[mcfly]} )) || return


export MCFLY_KEY_SCHEME=vim
export MCFLY_RESULTS=25
export MCFLY_FUZZY=true
export MCFLY_RESULTS_SORT=RANK  # RANK or LAST_RUN


mcfly_auto_light_mode() {
	[[ `isdark` == 'true' ]] && export MCFLY_LIGHT=FALSE
}
zsh-defer mcfly_auto_light_mode
eval "$(mcfly init zsh)"
