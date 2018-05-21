#!/bin/bash
set -e

add-apt-repository ppa:rwky/graphicsmagick -y
apt-get update -y
apt-get install -y graphicsmagick
apt-get install -y build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev
apt-get install -y ffmpeg

apt-get install -y wget unzip
wget https://github.com/AGWA/git-crypt/archive/master.zip && unzip master.zip && cd git-crypt-master && make install
