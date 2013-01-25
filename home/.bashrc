# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# git branch info using powerline instead of follow two line
# source ~/.git-completion.sh
# export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
function _update_ps1() {
   export PS1="$(~/powerline-shell.py $?)"
}

export PROMPT_COMMAND="_update_ps1"
