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
SHOW_USER_NAME="\[\e[38;5;199m\]\u\[\e[m\]"
SHOW_DEVICE_NAME="\[\e[38;5;199m\]\h\[\e[m\]"
SHOW_DIR="\[\e[38;5;39m\]\W\[\e[m\]"
SHOW_TIME="\[\e[38;5;10m\]\t\[\e[m\]"
SHOW_DOLLAR="\\$\[$(tput sgr0)\]"
export PS1="[$SHOW_USER_NAME@$SHOW_DEVICE_NAME-$SHOW_TIME $SHOW_DIR]$SHOW_DOLLAR "

alias run="source ~/venvpy37/bin/activate"
alias wgpu="watch -n 5 --color gpustat --color"
