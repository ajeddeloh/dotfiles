# /etc/skel/.bash_profile

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export PATH="$PATH:/home/andrew/bin"

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi
