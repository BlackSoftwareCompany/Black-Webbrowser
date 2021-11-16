#!/bin/bash
# Black-Webbrowser v1.5
# https://blacksoftware.ir
# 
if [[ "$(id -u)" -ne 0 ]];
then
  echo "Please, Run Black Webbrowser as Root!"
  exit
fi 
function main() {
    printf '\033]2;Black-Webbrowser/Installing\a'
    clear
    echo "Installing..."
    chmod +x install.py && chmod +x uninstall.py && chmod +x /Update/update.py
    sleep 2
    cd ..
    apt install python
    apt install python3
    apt install python3-pip
    pip install --upgrade pip
    pip install requirements.txt
    echo "
Finish...
"
    sleep 1
    python install.py
    exit
}
main
