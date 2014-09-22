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
# need clang installed
sudo yum install clang -y
(cd ~
mkdir ycm_build
cd ycm_build
cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_support_libs
)


# sudo pip-python install jedi
# git clone git://github.com/davidhalter/jedi-vim.git
