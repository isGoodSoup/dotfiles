#!/usr/bin/env bash
sudo apt install -y nim
git clone https://github.com/unxsh/nitch.git ~/nitch
cd ~/nitch/
echo "Changing directory..."
sleep 1
nimble build 2>/dev/null
echo "Nitch built successfully"
sleep 1
[ -f nitch ] || { echo "ERROR: Build failed"; exit 1; }
sudo mv nitch /usr/local/bin/
sleep 1
if which nitch >/dev/null 2>&1; then
    echo "Nitch installed successfully" 
else 
    echo "ERROR: Couldn't complete operation, Nitch failed to install"
    sleep 1
    exit
fi
cd $HOME
sleep 1
sudo "Cleaning files..."
sudo rm -r ~/nitch
sleep 1
echo "Exiting script"
sleep 1
exit 0
