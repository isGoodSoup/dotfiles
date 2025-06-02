#
# ~/.bashrc_functions.bash
#
#

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

function hfind() {
	history | grep -v "hfind" | grep "$1" | awk '!seen[substr($0, index($0,$2))]++'
}

function lsb() {
	lsblk -Ax name -o NAME,MAJ:MIN,ROTA,SIZE,TYPE,FSTYPE,MOUNTPOINTS
}

function p() {
	cd $HOME/dotfiles/python/python_course/ || return 1
	if [[ ! -f $1 ]]; then
		echo "#!/usr/bin/python" > $1
		if [[ $2 == 0 ]]; then
			:
		else
			nvim $1
		fi
		echo "  Python script was created."
	else
		if [[ $2 == '-e' || '--edit' ]]; then
			nvim $1
		else
			python "$1"
		fi
	fi
	cd $HOME
}

function bashf() {
	cd $HOME/dotfiles/
	nvim bashrc/.bashrc_functions.bash
	cd $HOME
}

function bstamp() {
	echo "[$(date +"%Y-%m-%d")] $(date +"%H:%M")" >> $HOME/.bedtime.txt
	echo "  Bedtime recorded: $(date +"%H:%M")"
}

function dot() {
	nvim $HOME/dotfiles/$1
}

function f() {
	if [[ ! -f $1 ]]; then
		xdg-open $1
	else
		firefox
	fi
}

function tm() {
	echo "Current Time => $(date +"%H:%M")"
}

function nal() {
	cd $HOME/dotfiles/bashrc/
	echo "alias $1='$2'" >> .bashrc_alias.bash
	cd $HOME
}

function q() {
	exit
}

