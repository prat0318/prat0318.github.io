#!/bin/sh
apt-get update && apt-get install -y zsh openssh-client git curl vim python-dev python-pip wget
echo "Adding new user prat0318..."
adduser -q --ingroup sudo --shell /usr/bin/zsh prat0318
su - prat0318
