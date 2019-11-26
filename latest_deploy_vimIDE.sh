#!/bin/bash

#########################################################################
# File Name: latest_deploy_vimIDE.sh
# file_path: 
# Author: 博客园--浪子尘心
# Mail: 536418286@qq.com
# Created Time: 2019-07-18 14:58:25
# Last Changed: 2019-07-18 14:58:43
# Description: 
# Version: 
#########################################################################

# backup old vim configure
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.bak
[ -d ~/.vim ] && mv ~/.vim ~/.vim_bak

# decompression
tar --no-same-owner -zxf vim.tar.gz -C ~

# go home
cd ~

# vim configure
mv vim/.v* .

# del dir
rm -rf ~/vim
