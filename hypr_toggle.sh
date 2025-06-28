#!/bin/bash

HOME_DIR=$HOME/dotfiles/hypr/.config/hypr

mv $HOME_DIR/hyprlock.conf $HOME_DIR/temp_folder/
mv $HOME_DIR/hyprpaper.conf $HOME_DIR/temp_folder/

mv $HOME_DIR/copies/hyprlock.conf $HOME_DIR
mv $HOME_DIR/copies/hyprpaper.conf $HOME_DIR

mv $HOME_DIR/temp_folder/hyprlock.conf $HOME_DIR/copies/
mv $HOME_DIR/temp_folder/hyprpaper.conf $HOME_DIR/copies/
