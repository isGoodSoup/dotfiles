set fish_greeting

#pokemon-colorscripts --random --no-title

function fish_prompt
	string join '' -- (set_color cba6f7)(pwd)(set_color green)\n'❯ '(set_color normal)
end

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
	lsblk --tree -x name -o NAME,MAJ:MIN,ROTA,SIZE,TYPE,FSTYPE,MOUNTPOINTS
end

function p
    cd ~/dotfiles/scripts/lang/python/ || return 1

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
	    echo "  Request to edit: $argv[1]"
	else if test "$argv[2]" = "-d"
	    rm -rf "$argv[1]"
	    echo "  Script was successfully deleted"
	else
            echo "  Unknown second argument: $argv[2]"
            return 1
        end
    end
    cd ~
end

function j
    cd ~/odyssey/core/java/java-course/ || return 1

    if test -z "$argv[1]"
        echo "Error: No filename provided."
        return 1
    end

    set filename (string replace -r '\.java$' '' "$argv[1]")

    if not test -e "$filename.java"
        echo "public class $filename {" > "$filename.java"
        echo "    public static void main(String[] args) {" >> "$filename.java"
        echo "        " >> "$filename.java"
        echo "    }" >> "$filename.java"
        echo "}" >> "$filename.java"

        if not test "$argv[2]" = "0"
            nvim "$filename.java"
        end
        echo "  Created new Java class: $filename.java"
    else
        if test -z "$argv[2]"
            javac "$filename.java" && java "$filename"
        else if test "$argv[2]" = "-e"
            nvim "$filename.java"
            echo "  Request to edit: $filename.java"
        else if test "$argv[2]" = "-d"
            rm -rf "$filename.java" "$filename.class"
            echo "  Files were successfully deleted"
        else
            echo "  Unknown second argument: $argv[2]"
            return 1
        end
    end
    cd ~
end

function pcode
	cd $HOME/dotfiles/scripts/lang/$argv[1]/
	code $argv[2]
	cd
end

function bstamp
	echo "[$(date +"%Y-%m-%d")] $(date +"%H:%M")" >> ~/.bedtime.txt
	echo "  Bedtime recorded: $(date +"%H:%M")"
	cd ~/dotfiles/bashrc/
	git add .bedtime.txt
	git commit -m 'bstamp'
	git push -u origin main
	cd
end

function mkcd
	mkdir $argv[1] -p
	if test -d "$argv[1]"
		cd $argv[1]
	end
end

function lscd
	ls -lahc --color=auto $argv[1]
	cd $argv
end

function dot
	cd ~/dotfiles/
	git add "$argv[1]"
	git commit -m "$argv[2]"
	git push -u origin main
	cd
end

function dotstat
	cd ~/dotfiles/
	git status
	cd
end
function dotvim
	cd ~/dotfiles/$argv[1]/.config/$argv[1]/
	nvim "$argv[2]"
	cd
end

function hypr-toggle
	sh ~/dotfiles/hypr_toggle.sh
end

function fox
	set -f url "$argv[1]"
	if test -n "$url"
		#echo "URL detected"
		begin 
			nohup firefox "$url" & disown
		end &> /dev/null
	else
		#echo "URL not detected, opening browser"
		begin 
			nohup firefox & disown
		end &> /dev/null
	end
end

function new-note
	set -l $NOTE_DIR ~/alxandria/notas/curso/
	set -l $NOTE_FILE echo "nota" >> $NOTE_DIR/$(date +"Y%-M%-D%").txt
	nvim $NOTE_FILE
end

function upt-alx
	cd $HOME/alxandria/
	git add $argv[1]
	git commit -m "$argv[2]"
	git push -u origin main
	cd
end

function bye
	cowsay 'Goodbye'
	sleep 1
	sudo shutdown now
end

function q 
	exit
end
