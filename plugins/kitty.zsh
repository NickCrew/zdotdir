
if [[ "${IS_KITTY}" == "1" ]]; then 
	KITTY_DARK_THEME=${KITTY_DARK_THEME:-$HOME/.config/kitty/conf.d/dark.conf}
	if [[ `isdark` == "true" ]]; then
		kitty @ set-colors --all --configured $KITTY_DARK_THEME
	else
		kitty @ set-colors --reset
	fi
fi

