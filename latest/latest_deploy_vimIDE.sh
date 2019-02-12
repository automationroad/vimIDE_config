#!/bin/bash

#########################################################################
# File Name: latest_deploy_vimIDE.sh
# file_path: ~/vimIDE_config/latest/latest_deploy_vimIDE.sh
# Author: 浪子尘心
# Mail: 536418286@qq.com
# Created Time: 2018-12-13 16:43:17
# Last Changed: 2018-12-13 17:00:05
# Description: latest vim configure
# Version: 0.1
#########################################################################

# backup old vim configure
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.bak
[ -d ~/.vim ] && mv ~/.vim ~/.vim_bak

# decompression
tar --no-same-owner -zxf vimIDE_config/latest/vim.tar.gz -C ~

# go home
cd ~

# vim configure
mv vim/.v* .
[ ! -d ~/.local/share/fonts/ ] && mkdir -p ~/.local/share/fonts/
mv vim/.local/share/fonts/* ~/.local/share/fonts/