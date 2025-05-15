#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#### CORE (DO NOT TOUCH) ####
PS1='\[\e[94;1m\]\W\[\e[0m\] \[\e[92;1m\]\$\[\e[0m\] '

## Alt Bash Prompt (PS1)
# PS1='\[\033[1;32m\]┌ ( \[\033[1;36m\]\u@\h \[\033[1;32m\]) [ \[\033[1;034m\]\w \[\033[1;32m\]] \n\[\033[1;32m\]└─ \$ \[\033[m\]'

PS2='>> '

source ~/.bashrc_alias.bash
source ~/.bashrc_functions.bash

#### LOCALE ####
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

### >> YAZI > SETUP ###
export EDITOR='nvim'

#### SPICETIFY ####
export PATH=$PATH:/home/diego/.spicetify
