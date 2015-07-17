#!/bin/sh
# passwd; curl www.prat0318.me/create.sh -o /tmp/create.sh; zsh /tmp/create.sh
mkdir -p ~/.ssh
ssh-keygen -t rsa -b 4096 -C "prat0318@gmail.com" -N "" -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
vared -p 'Add ^ pubkey to: https://github.com/settings/ssh ...' -c tmp

echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config
git clone git@github.com:prat0318/oh-my-zsh.git .oh-my-zsh

git clone git@github.com:prat0318/dotfiles.git .dotfiles
cd .dotfiles/
script/bootstrap

source ~/.zshrc
cd ~

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > ~/.neobundle_install.sh
sh ~/.neobundle_install.sh; rm ~/.neobundle_install.sh
~/.vim/bundle/neobundle.vim/bin/neoinstall

sudo pip install virtualenvwrapper

export WORKON_HOME=~/py_envs
mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv --python=python2.7 mypy27

pip install flake8

cd ~
wget http://www.cmake.org/files/v2.8/cmake-2.8.12.tar.gz
x cmake-2.8.12.tar.gz
cd cmake-2.8.12
./configure
sudo make
sudo make install
cd ~/.vim/bundle/YouCompleteMe
./install.sh
