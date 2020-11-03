#!/bin/bash
set -e

apt-get install -y software-properties-common
add-apt-repository -y ppa:rwky/graphicsmagick
apt-get install -y wget apt-transport-https ca-certificates
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list
apt-get update -y
apt-get install -y graphicsmagick
apt-get install -y build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev
apt-get install -y ffmpeg
apt-get install -y mongodb-org-tools
