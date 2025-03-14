#!/data/data/com.termux/files/usr/bin/bash

pkg install root-repo
pkg install x11-repo
termux-setup-storage -y
termux-change-repo -y
apt-get update && apt-get upgrade -y
apt install -y git wget proot build-essential cmake libmicrohttpd libuv libuuid boost libjansson
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
cd ccminer
./build.sh
./ccminer -a verus -o stratum+tcp://na.luckpool.net:3960 -u REiPznUK8ApoQbtLhExYsj9GY5rb67Nj3M.LGG6 -p x -t6