#!/bin/bash

sudo apt update
sudo apt install libsdl2-dev libsdl2-image-dev can-utils -y
cd  ~ 
git clone https://github.com/zombieCraig/ICSim.git
cd ~
git clone https://github.com/linux-can/can-utils
cd can-utils
make
sudo make install
cp  lib.o  ~/ICSim
cd  ~/ICSim
make clean
make
cd ICSim
ls
