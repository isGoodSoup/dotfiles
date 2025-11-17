## Setup  
1. Install `stow`:  
   - Arch: `yay -S stow`  
   - Debian/Ubuntu: `sudo apt install stow`  
   - Mac: `brew install stow`  
2. (Optional) Run the bootstrap.sh script. 
3. Clone and stow:  
   ```sh
   git clone https://github.com/isGoodSoup/dotfiles.git ~/dotfiles  
   cd ~/dotfiles  
   stow -vt ~ .
