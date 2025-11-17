
# Core
export ZSH="$HOME/.oh-my-zsh"

# Theme and Plugins
# ZSH_THEME="steeef"
plugins=(git fast-syntax-highlighting zsh-autocomplete)

# Core source
source $ZSH/oh-my-zsh.sh

# Optional prompt override
PROMPT='%F{135}%n%f at %F{135}%m%f  %F{27}%1~%f %F{178}$(git rev-parse --abbrev-ref HEAD 2>/dev/null)%f
%F{135}%#%f '

# Your aliases and functions
source ./.zsh_alias.zsh
source ./.zsh_functions.zsh

# Other exports
export JAVA_HOME=/opt/jdk-21
export PATH=$PATH:$JAVA_HOME/bin
export EDITOR="nvim"

# Preferred editor for remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
fi

clear
pokemon-colorscripts --random --no-title

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Oh-My-Zsh Aliases
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
