#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install git -y
git clone https://github.com/catursawah/xmrig
cd xmrig
chmod u+x xmrig
screen -S xmrig
