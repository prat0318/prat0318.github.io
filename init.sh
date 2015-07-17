#!/bin/sh
# apt-get install -y curl; curl www.prat0318.me/init.sh | sh
apt-get install -y zsh
echo "Adding new user prat0318..."
# adduser --ingroup sudo --shell /usr/bin/zsh --disabled-login --gecos "" prat0318
useradd -m -g sudo -s /usr/bin/zsh -p prat0318 prat0318
su - prat0318
