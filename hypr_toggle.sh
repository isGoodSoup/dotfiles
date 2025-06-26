#!/bin/bash

HOME_DIR=$HOME/dotfiles/hypr/.config/hypr

mv $HOME_DIR/hyprlock.conf $HOME_DIR/.tmp/
mv $HOME_DIR/hyprpaper.conf $HOME_DIR/.tmp/

mv $HOME_DIR/copies/hyprlock.conf $HOME_DIR
mv $HOME_DIR/copies/hyprpaper.conf $HOME_DIR

mv $HOME_DIR/.tmp/hyprlock.conf $HOME_DIR/copies/
mv $HOME_DIR/.tmp/hyprpaper.conf $HOME_DIR/copies/
