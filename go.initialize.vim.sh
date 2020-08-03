#!/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "execute pathogen#infect()" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "filetype plugin indent on" >> ~/.vimrc

cd ~/.vim/bundle && \
git clone https://github.com/tpope/vim-sensible.git
git clone --recurse-submodules https://github.com/python-mode/python-mode.git
git clone https://github.com/ervandew/supertab.git
