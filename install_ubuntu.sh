#!/usr/bin/env bash

sudo apt-get install ctags grep-ack
sudo apt-get install python-software-properties (if required)
sudo apt-add-repository ppa:mizuno-as/silversearcher-ag
sudo apt-get update
sudo apt-get install silversearcher-ag
cd ~
git clone git://github.com/yinsigan/vimconf.git
ln -s ~/vimconf/.vimrc ~/.vimrc
ln -s ~/vimconf/.vimrc.map ~/.vimrc.map
ln -s ~/vimconf/.vimrc.plugins ~/.vimrc.plugins
ln -s ~/vimconf/.vimrc.bundle ~/.vimrc.bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim +NeoBundleInstall! +NeoBundleClean +q
