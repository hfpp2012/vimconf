#!/usr/bin/env bash

function try_install()
{
	if $1 == "homebrew"; then
		echo 'now install homebrew'
		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	else
		brew install $1
	fi
}

set -e 

# TODO 没有加入Debian / Ubuntu / Fedora / Arch / OPenSUSE 的检测 本人没有环境
if [ `uname` == "Darwin" ]; then
	echo 'now starting auto config in mac'
	
	which brew || try_install homebrew
	which ctag || try_install ctags
	# TODO 剩下的依赖我也不大清楚
else
	if [ "x$USER" != "xroot" ]; then
		exec sudo ./$0 "$@"
	fi
	apt-get install ctags grep-ack
	apt-get install python-software-properties (if required)
	apt-add-repository ppa:mizuno-as/silversearcher-ag
	apt-get update
	apt-get install silversearcher-ag
fi
mate
cd ~
git clone git://github.com/yinsigan/vimconf.git
ln -s ~/vimconf/.vimrc ~/.vimrc
ln -s ~/vimconf/.vimrc.map ~/.vimrc.map
ln -s ~/vimconf/.vimrc.plugins ~/.vimrc.plugins
ln -s ~/vimconf/.vimrc.bundle ~/.vimrc.bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim +NeoBundleInstall! +NeoBundleClean +q
