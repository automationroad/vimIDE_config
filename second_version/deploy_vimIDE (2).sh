#!/bin/bash

#########################################################################
# File Name: deploy_vimIDE.sh
# Author: 浪子尘心
# Mail: hj536418286@gmail.com
# Created Time: 2018-10-04 14:41:10
# Last Changed: 2018-10-04 14:54:31
# Description: 更换插件管理器，主题设置
# Version: 0.4
#########################################################################

# 判断是否已经存在.vimrc 和 .vim文件夹，并备份
[ -f ~/.vimrc ] && mv ~/.vimrc  ~/.vimrc.bak
[ -d ~/.vim ] && mv ~/.vim ~/.vim_bak
# 配置vim
cp -f vimIDE_config/second_version/.vimrc ~/.vimrc
cp -f vimIDE_config/second_version/.vimrc.bundles ~/.vimrc.bundles
mkdir -p ~/.vim/vim_header_model
cp -f vimIDE_config/second_version/vim_header ~/.vim/vim_header_model/vim_header
# 安装vim插件
vim -c "PlugInstall" -c "q" -c "q"
# jedi 支持插件
pip install jedi
which pip3 && pip3 install jedi
# pe8调整插件
pip install autopep8
# 安装完成提示
echo "恭喜你完成安装"
