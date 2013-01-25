#!/bin/bash

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd ~/.vim/bundle
git clone git://github.com/scrooloose/nerdtree.git
git clone git://github.com/majutsushi/tagbar.git
git clone git://github.com/hynek/vim-python-pep8-indent.git

sudo pip-python install jedi
git clone git://github.com/davidhalter/jedi-vim.git

git clone git://github.com/Lokaltog/vim-powerline.git
