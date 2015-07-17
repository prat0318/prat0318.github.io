#!/bin/sh
apt-get update && apt-get install -y zsh openssh-client git curl vim python-dev python-pip wget
echo "Adding new user prat0318..."
# adduser --ingroup sudo --shell /usr/bin/zsh --disabled-login --gecos "" prat0318
useradd -m -g sudo -s /usr/bin/zsh -p prat0318 prat0318
su - prat0318
