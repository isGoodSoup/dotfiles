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
	history | grep -v "hfind" | awk "{cmd=\$0; sub(/^[ ]*[0-9]+[ ]+/, \"\", cmd)} !seen[cmd]++" | grep
}

function lsblk() {
	lsblk -Ax name -o NAME,MAJ:MIN,ROTA,SIZE,TYPE,FSTYPE,MOUNTPOINTS
}

function p() {
	cd $HOME/python_course/ || return 1
	if [[ ! -f $1 ]]; then
		echo "#!/usr/bin/python" > $1
		if [[ $2 == 0 ]]; then
			:
		else
			nvim $1
		fi
		echo "  Python script was created."
	else
		python "$1"
	fi
	cd $HOME
}

function bstamp() {
	echo "[$(date +"%Y-%m-%d")] $(date +"%H:%M")" >> $HOME/.bedtime.txt
	echo "  Bedtime recorded: $(date +"%H:%M")"
}

function sort_aliases() {
    local alias_file=~/.bashrc_alias.bash
    (
        grep -v '^alias ' "$alias_file"  # Non-alias lines
        grep '^alias ' "$alias_file" | sort  # Sorted aliases
    ) > "$alias_file.tmp" && mv "$alias_file.tmp" "$alias_file"
    echo "Aliases sorted!"
}

function q() {
	exit
}
