#!/bin/bash
PGRDIR=$(cd $(dirname $0); pwd)
# script->zsh->tmux
if [ "$(ps -p $(ps -p $(ps -p $$ -o ppid=) -o ppid=) -o comm=)" = "tmux" ]; then
	tmux rename-window $*
	echo ok
	${PGRDIR}/autologin.exp $*
	tmux set-window-option automatic-rename "on" 1>/dev/null
else
	echo not ok
	${PGRDIR}/autologin.exp $*
fi
