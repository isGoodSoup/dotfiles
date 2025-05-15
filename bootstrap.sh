## Installation script for main needed packages 
## for my setup.

##  yay (Yet Another Yogurt)
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S stow # GNU Stow is to manage the dotfiles that follow the script.

yay -S 7zip # 7zip (File compression manager).
yay -S bashtop-git # Displaying of computer modules' information.
yay -S bitwarden # Password manager vault.
yay -S cava # A music wave display.
yay -S fastfetch # Display of vital information for your PC.
sudo pacman -S firefox # Firefox web browser.
yay -S google-chrome # Chrome web browser.
yay -S grub-customizer # Interface and customization of GRUB.
sudo pacman -S kitty # Terminal emulator, my personal favorite.
yay -S libreoffice-fresh # File editor suite, open source, complete suite.
yay -S lxappearance-gtk3 # LXAppearance for the gtk3.0 interface.
yay -S neovim # File editor in-terminal. Fully functional and customizable.
sudo pacman -S nemo # File explorer & manager.
yay -S ntfs-3g # NTFS support system for Linux.
yay -S polybar # Configurable status bar, fully customizable too.
yay -S proton-mail # Mail service, aiming at full privacy.
yay -S rofi # App launcher. Configurable.
yay -S rofi-calc # Calculator module for rofi.
yay -S rofi-power-menu # Power-Menu module for rofi.
yay -S spotify-launcher # Music player client, high quality streaming.
yay -S systemctl-tui # The usual systemctl in a CLI function, fully TUI.
yay -S ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-liberation # Fonts
yay -S tui-journal # Fully TUI integrated journal app for those who write daily entries and live in the terminal.
yay -S vlc # Video and music player.
yay -S yazi # TUI File manager, fully configurable. Customizable.
