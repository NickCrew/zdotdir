bindkey -M vicmd '^h' run-help								# [N] <Ctrl-H> : show man page for current command 								
bindkey -M viins '^h' run-help								# [I] <Ctrl-H> : show man page for current command 								
bindkey -M viins '^e' autosuggest-accept					# [I] <Ctrl-E> : Accept and complete auto-suggestion
bindkey -M menuselect 'h' vi-backward-char					# select left in completion menu					
bindkey -M menuselect 'k' vi-up-line-or-history				# select above in completion menu
bindkey -M menuselect 'j' vi-down-line-or-history   		# select below in completion menu
bindkey -M menuselect 'l' vi-forward-char					# select right in completion menu
bindkey -M menuselect '^xg' clear-screen					# Clears the screen?
bindkey -M menuselect '^xi' vi-insert						# Insert
bindkey -M menuselect '^xh' accept-and-hold                	# Hold
bindkey -M menuselect '^xn' accept-and-infer-next-history  	# Next
bindkey -M menuselect '^xu' undo                           	# Undo




