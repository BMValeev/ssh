#!/bin/bash
sudo mount -o rw,remount,rw /
mkdir ~/.ssh
cd ~/.ssh
echo 'Acquire::http::proxy "http://valeev_bm:b0pt%2423Q@192.168.0.1:3128/";' | sudo tee --append /etc/apt/apt.conf
echo 'Acquire::::Proxy "true";'| sudo tee --append /etc/apt/apt.conf
sudo apt-get update
wget https://raw.githubusercontent.com/BMValeev/ssh/master/authorized_keys ~/.ssh/authorized_keys
android-gadget-service enable ssh
sudo chown -R phablet.phablet ~/.ssh
chmod 600 ~/.ssh/authorized_keys
chmod 700 ~/.ssh
