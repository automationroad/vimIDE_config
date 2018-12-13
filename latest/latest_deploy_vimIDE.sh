#!/bin/bash

#########################################################################
# File Name: latest_deploy_vimIDE.sh
# file_path: ~/vimIDE_config/latest/latest_deploy_vimIDE.sh
# Author: 浪子尘心
# Mail: hj536418286@gmail.com
# Created Time: 2018-12-13 16:43:17
# Last Changed: 2018-12-13 17:00:05
# Description: latest vim configure
# Version: 0.1
#########################################################################

# go home
cd ~

# backup old vim configure
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.bak
[ -d ~/.vim ] && mv ~/.vim ~/.vim_bak

# decompression
tar --no-same-owner -zxf vimIDE_config/latest/vim.tar.gz

# vim configure
mv vim/* .
