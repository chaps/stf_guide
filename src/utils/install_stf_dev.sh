#/bin/bash

###
# Script to prepare a host to run stf in development mode
# with stf local
###

sudo apt update && sudo apt upgrade -y
sudo apt install git -y
sudo apt install curl -y
sudo apt install build-essential libssl-dev -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt install nodejs -y

sudo apt update
# Install rethink DB 
echo "$(lsb_release -c -s)"
echo "deb http://download.rethinkdb.com/apt $(lsb_release -c -s) main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list 
wget -qO- http://download.rethinkdb.com/apt/pubkey.gpg | sudo apt-key add -
sudo apt update
sudo apt install rethinkdb -y


sudo apt install graphicsmagick -y

sudo apt install libtool pkg-config autoconf automake -y

sudo apt install libzmq-dev -y
git clone git://github.com/jedisct1/libsodium.git
cd libsodium && ./autogen.sh
./configure && make check
sudo make install

#
sudo ldconfig
sudo apt install libtool-bin -y

wget http://download.zeromq.org/zeromq-4.1.4.tar.gz

tar -xvf zeromq-4.1.4.tar.gz

cd zeromq-4.1.4 && ./autogen.sh

./configure && make check

sudo make install

sudo ldconfig

## Google Protocol Buffers.

sudo apt install protobuf-compiler -y

## ADB & FastBoot

sudo apt install android-tools-adb android-tools-fastboot -y

## YASM

sudo apt install yasm -y

## INSTALL PYTHON due to npm failing when requesting $PYTHON env var.

sudo apt install python -y


## OpenSTF

sudo npm install -g --unsafe-perm stf

## Reboot...
sudo reboot


