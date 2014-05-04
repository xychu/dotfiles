#!/bin/bash

# use Vundle instead of pathogen
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# needed by tagbar
sudo yum install -y ctags

if [ -f ~/.vimrc ]
then
    mv ~/.vimrc ~/.vimrc.vundle_bk
fi

ln -s ${PWD}/home/.vimrc ~/.vimrc


# make sure you have copied/linked .vimrc with Bundles
vim +BundleInstall +qall

# compile ycm_support_libs
(cd ~
mkdir ycm_build
cd ycm_build
wget -c http://llvm.org/releases/3.4/clang+llvm-3.4-x86_64-fedora20.tar.xz
tar -xvf clang+llvm-3.4-x86_64-fedora20.tar.xz
cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=~/ycm_build/clang+llvm-3.4-x86_64-fedora20 . ~/.vim/bundle/YouCompleteMe/cpp
make ycm_support_libs
)


# sudo pip-python install jedi
# git clone git://github.com/davidhalter/jedi-vim.git
