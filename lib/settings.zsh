
# OPTIONS

unsetopt beep					# shut up shut up shut up
setopt no_list_beep				# Don't beep when listing choices on ambiguous completion
unsetopt hist_beep				# Shut up shut up shut up

unsetopt clobber				# Disallow overwriting existing files

setopt local_traps				# Allow functions to have local traps
setopt local_options			# Allow fucntions to have local options

setopt no_bg_nice				# Don't run bg jobs at a lower priority
setopt no_hup					# Don't kill jobs when the shell exits
setopt notify					# notify when background job finishes				
setopt ignore_eof				# Don't exit on EOF

setopt complete_aliases         # Don't expand aliases before completionfinishes
setopt glob_complete			# Show autocompletion menu with globs
setopt menu_complete			# Automatically highlight first element of completion menu
setopt auto_list				# Automatically list choices on ambiguous completion.
setopt complete_in_word			# Complete from both ends of a word.

setopt auto_pushd				# Make cd push the old directory onto the stack
setopt pushd_silent				# Do not print the directory name after pushd or popd
setopt pushd_ignore_dups		# Do not push multiple copies of the same directory onto the stack

setopt bang_hist				# Perform textual history expansion, csh-style, treating the character ‘!’ specially.
setopt hist_no_functions		# Don't store function definitions
setopt hist_no_store			# Don't store history (fc -l) command
setopt extended_history			# Record timestamp of command in HISTFILE
setopt share_history          	# Share command history data
setopt hist_expire_dups_first 	# Delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       	# Ignore duplicated commands history list
setopt hist_ignore_space      	# Ignore commands that start with space
setopt hist_verify            	# Show command with history expansion to user before running it
setopt hist_reduce_blanks		# Remove superfluous blanks from each command line being added to the history list
setopt inc_append_History		# Add new lines to the history file immediately (do not wait until exit)

# EXPORTS
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000000
SAVEHIST=1000000
HISTORY_IGNORE="pwd:ls:ll:la:.."
PER_DIRECTORY_HISTORY_TOGGLE=^G
HISTORY_BASE=$HOME/.directory_history



