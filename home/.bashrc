# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
alias ..='cd ..'
alias l='ls'
alias ll='ls -l'
alias la='ls -la'
alias ent="pushd ~/coreos-sdk >/dev/null; cork enter; popd >/dev/null"
alias cdsdk="cd ~/coreos-sdk/chroot/home/andrew"
alias cdsrc="cd ~/coreos-sdk/src/third_party"
alias vim=nvim
