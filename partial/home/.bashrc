# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


# User specific aliases and functions


# Prompt
PS1="[\[\e[1;32m\]\u@\h \[\e[1;36m\]\W\[\e[m\]]\[\e[1;33m\]\$\[\e[m\] "

# Aliases

alias ll="exa -alh"

