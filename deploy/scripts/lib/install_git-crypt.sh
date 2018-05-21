#!/bin/bash
set -e

apt-get install -y wget unzip libssl-dev
wget https://github.com/AGWA/git-crypt/archive/master.zip && unzip master.zip && cd git-crypt-master && make install
