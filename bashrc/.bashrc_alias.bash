#
# ~/.bashrc_alias.bash
#
#
export DOTS='$HOME/dotfiles/'
export PICS='/mnt/odyssey/pics'
export MOVS='/mnt/odyssey/movs'
export PYTH='$HOME/python_course/'

alias super='sudo' # Replace sudo with super.
alias nanos='sudo nano' # Short for 'super user do nano'.
alias please='sudo $(history -p !!)' # If asked for permission, say please!
alias grep='grep --color=auto' # grep
alias egrep='egrep --color=auto' # egrep
alias ls='ls -lahc --color=auto' # Better ls command format.
alias mkdir='mkdir -p' # Create directory plus its (if missing) parent directory.
alias z='cd' # Go back to /home/<user> directory.
alias d='cd ..' # Go up X parent directories.
alias d2='cd ../..'
alias d3='cd ../../..'
alias d4='cd ../../../..'
alias d5='cd ../../../../..'
alias d6='cd ../../../../../..'  
alias clrh='history -c' # CAUTION: Clear history.
alias clip='xclip -sel c <' # Copy the entire content of a file.
alias dots='y $DOTS' # Open the $DOTS directory.
alias pics='y $PICS' # Open the $PICS directory.
alias ebash='nvim ~/dotfiles/bashrc/.bashrc' # Edit .bashrc file.
alias rbash='source ~/dotfiles/bashrc/.bashrc && echo "rbash: .bashrc was sourced."' # Reload .bashrc file.
alias cbash='cat ~/.bashrc' # Cat .bashrc file.
alias bfind='cat ~/.bashrc | grep' # Find in the .bashrc file.
alias edbr='nvim ~/dotfiles/bashrc/.bashrc && rbash' # Edit & refresh .bashrc file.
alias sp='sudo pacman' # Fast pacman.
alias spi='sudo pacman -S' # Install pacman package.
alias spr='sudo pacman -Rns' # Delete pacman package and dependencies.
alias spq='sudo pacman -Qq | grep' # Find pacman packages.
alias sps='sudo pacman -Ss | grep' # Find available pacman packages.
alias spu='sudo pacman -Syu' # Update pacman packages and Arch distro.
alias ys='yay -S' # Install yay package.
alias yr='yay -Rns' # Remove yay package with all its dependencies.
alias aur='yay -Qq | grep' # Find AUR repository packages.
alias trash='rm -i' # Safely remove files.
alias mv='mv -i' # Safely move files.
alias cp='cp -i' # Safely copy files.
alias glxinfo-driver='glxinfo | grep "OpenGL renderer"' # Check drivers OpenGL info.
alias dfi='df --si -T' # Formatted dfi command.
alias sysctl='systemctl-tui' # Open systemctl-tui
alias btop='bashtop' # Opens bashtop.
alias brave='(nohup brave &>/dev/null &)' # Opens brave-browser (null).
# alias firefox='(nohup firefox &>/dev/null &)' # Opens firefox (null).
alias chrome='(nohup google-chrome-stable &>/dev/null &)' # Opens chrome (null)
alias spotify='spotify_player' # Opens spotify-player
alias discord='(nohup discord &>/dev/null &)' # Opens Discord (null).
# alias lxappearance='(lxappearance & disown)' # Opens lxappearance (null) 
alias jrnl='tjournal' # Open tui-journal.
alias ff='fastfetch -l arch_small' # Open fastfetch on a preset.
alias clr='clear' # Faster clear.
alias poly='(polybar & disown)' # Enable polybar.
alias polyoff='(pkill polybar)' # Disable polybar.
alias rpoly='(pkill polybar && polybar)' # Reset polybar.
alias i3conf='nvim $DOTS/i3/.config/i3/config' # Open i3 config.
alias picom-start='picom --config $DOTS/picom/.config/picom/picom.conf -b' # Start picom.
alias pyth='y $PYTH'
alias unstow='stow --delete'
alias waybar='(waybar & disown)' # Launch waybar
alias hyprconf='sudo nvim dotfiles/hypr/.config/hypr/hyprland.conf' # Edit hyprland.conf
alias waybar-reset='pkill waybar && (waybar & disown)'
alias kittyconf='dot kitty/.config/kitty/kitty.conf'
alias waybar-off='pkill waybar'
alias gitpush='sh ~/dotfiles/gitpush.sh'
alias dotfiles-repo='fox github.com/isGoodSoup/dotfiles'
alias nwg='(nohup nwg-look & disown)'
