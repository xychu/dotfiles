# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# git branch info
source ~/.git-completion.sh
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
