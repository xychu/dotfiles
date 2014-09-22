#!/bin/bash

(cd ~
git clone https://github.com/milkbikis/powerline-shell
cd powerline-shell
./install.py
ln -s ~/powerline-shell/powerline-shell.py ~/powerline-shell.py
)
