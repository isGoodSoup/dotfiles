function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

function lsb() {
    lsblk --tree -x name -o NAME,MAJ:MIN,ROTA,SIZE,TYPE,FSTYPE,MOUNTPOINTS
}

function p() {
    cd ~/dotfiles/scripts/lang/python/ || return 1

    if [ -z "$1" ]; then
        echo "Error: No filename provided."
        return 1
    fi

    if [ ! -e "$1" ]; then
        echo "#!/usr/bin/python" > "$1"
        chmod +x "$1"

        # Case 2: Don't open if second arg is 0
        if [ "$2" != "0" ]; then
            nvim "$1"
        fi
        echo "  Created new Python script: $1"
    else
        if [ -z "$2" ]; then
            python "$1"
        elif [ "$2" = "-e" ]; then
            nvim "$1"
            echo "  Request to edit: $1"
        elif [ "$2" = "-d" ]; then
            rm -rf "$1"
            echo "  Script was successfully deleted"
        else
            echo "  Unknown second argument: $2"
            return 1
        fi
    fi
    cd ~
}

function pcode() {
    cd "$HOME/dotfiles/scripts/lang/$1/" || return 1
    code "$2"
    cd ~ || return 1
}

function bstamp() {
    echo "[$(date +"%Y-%m-%d")] $(date +"%H:%M")" >> ~/.bedtime.txt
    echo "  Bedtime recorded: $(date +"%H:%M")"
    cd ~/dotfiles/bashrc/ || return 1
    git add .bedtime.txt
    git commit -m 'feat: bedtime stamp'
    git push -u origin main
    cd ~ || return 1
}

function mkcd() {
    mkdir -p "$1" && cd "$1" || return 1
}

function lscd() {
    ls -lahc --color=auto "$1"
    cd "$1" || return 1
}

function dot() {
    cd ~/dotfiles/ || return 1
    git add "$1"
    git commit -m "$2"
    git push -u origin main
    cd ~ || return 1
}

function dotstat() {
    cd ~/dotfiles/ || return 1
    git status
    cd ~ || return 1
}

function dotvim() {
    cd ~/dotfiles/"$1"/.config/"$1"/ || return 1
    nvim "$2"
    cd ~ || return 1
}

function fox() {
    local url="$1"
    if [ -n "$url" ]; then
        nohup firefox "$url" &>/dev/null & disown
    else
        nohup firefox &>/dev/null & disown
    fi
}

function bye() {
    cowsay 'Goodbye'
    sleep 1
    sudo shutdown now
}

function q() {
    exit
}
