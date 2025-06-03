function aur --wraps='yay -Qq | grep' --description 'alias aur=yay -Qq | grep'
  yay -Qq | grep $argv
        
end
