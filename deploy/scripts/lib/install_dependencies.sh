#!/bin/bash
set -e

apt-get install -y software-properties-common
add-apt-repository -y ppa:rwky/graphicsmagick
apt-get update -y
apt-get install -y graphicsmagick
apt-get install -y build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev
apt-get install -y ffmpeg
