#!/bin/bash

#########################################################################
# File Name: deploy_vimide.sh
# Author: 浪子尘心
# Mail: hj536418286@gmail.com
# Created Time: 2018-10-02 13:42:05
# Last Changed: 2018-10-02 13:42:44
# Description: 自动部署系统用户vimIDE
# Version: 0.1
#########################################################################

# 判断是否已经存在.vimrc 和 .vim文件夹，并备份
[ -f ~/.vimrc ] && mv ~/.vimrc  ~/.vimrc.bak
[ -d ~/.vim ] && mv ~/.vim ~/.vim_bak
# 配置vim
mv vimIDE_config/vimrc_plug.sh ~/.vimrc.bundles
mkdir -p ~/.vim/vim_header_model
mv vimIDE_config/vim_header.sh ~/.vim/vim_header_model/vim_header
mv vimIDE_config/user.vimrc ~/.vimrc
# 安装vim插件管理Vundle
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# 执行安装vim插件
vim +PluginInstall +qall
# 安装jedi和autopep8
cd ~/.vim/bundle/jedi-vim/ && git submodule update --init
# jedi 支持插件
pip install jedi
which pip3 && pip3 install jedi
# pe8调整插件
pip install autopep8
# 用含vim插件配置的文件覆盖单独插件列表的文件
mv -f vimIDE_config/vimrc_pymode.sh ~/.vimrc.bundles
# 安装完成提示
echo "恭喜你完成安装"