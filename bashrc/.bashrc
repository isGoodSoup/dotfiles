export PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; 
export PS1='\[\e[38;5;135m\]\u\[\e[0m\] at \[\e[38;5;135m\]\h\[\e[0m\]  \[\e[94;1m\]\W\[\e[0m\] \[\e[96;1m\]${PS1_CMD1}\n\[\e[0;38;5;135m\]\$\[\e[0m\] '
export JAVA_HOME=/opt/jdk-21
export PATH=$PATH:$JAVA_HOME/bin
export EDITOR="nvim"
export WEBKIT_DISABLE_COMPOSITING_MODE=1
export STEAM_DIR="$HOME/.var/app/com.valvesoftware.Steam/.local/share/Steam"
export STEAM_COMPAT_DATA_PATH="/media/diego/odyssey/SteamLibrary/steamapps/compatdata/489830"
source .bashrc_functions
source .bashrc_aliases
clear
pokemon-colorscripts --random --no-title
