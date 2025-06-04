set fish_greeting

export EDITOR='nvim'
source ~/dotfiles/fish/.config/fish/fish_alias.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

function lsb
	lsblk -Ax name -o NAME,MAJ:MIN,ROTA,SIZE,TYPE,FSTYPE,MOUNTPOINTS
end

function p
    cd ~/dotfiles/python/python_course/ || return 1

    if test -z "$argv[1]"
        echo "Error: No filename provided."
        return 1
    end

    if not test -e "$argv[1]"
        echo "#!/usr/bin/python" > "$argv[1]"
        chmod +x "$argv[1]"

        # Case 2: Don't open if second arg is 0
        if not test "$argv[2]" = "0"
            nvim "$argv[1]"
        end
        echo "  Created new Python script: $argv[1]"
    else
        if test -z "$argv[2]"
            python "$argv[1]"
        else if test "$argv[2]" = "-e"
            nvim "$argv[1]"
	else if test "$argv[2]" = "-d"
	    rm -rf "$argv[1]"
	    echo "  Script was successfully deleted"
	else
            echo "Unknown second argument: $argv[2]"
            return 1
        end
    end
    cd ~
end

function bstamp
	echo "[$(date +"%Y-%m-%d")] $(date +"%H:%M")" >> ~/.bedtime.txt
	echo "  Bedtime recorded: $(date +"%H:%M")"
end

function mkcd
	mkdir $argv[1] -p
	if test -d "$argv[1]"
		cd $argv[1]
	end
end

function q 
	exit
end
