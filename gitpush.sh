#!/bin/bash

cd $HOME/dotfiles/
git add .
git commit -m 'Updates'
git branch -m main
git push
cd $HOME
