#!/bin/bash

# use Vundle instead of pathogen
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# make sure you have copied/linked .vimrc with Bundles
vim +BundleInstall +qall

# needed by tagbar
sudo yum install -y ctags
#git clone git://github.com/majutsushi/tagbar.git

sudo pip-python install jedi
#git clone git://github.com/davidhalter/jedi-vim.git
