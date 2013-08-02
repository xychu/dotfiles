# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

function _update_ps1() {
   export PS1="$(~/powerline-shell.py $?)"
}

export PROMPT_COMMAND="_update_ps1"
