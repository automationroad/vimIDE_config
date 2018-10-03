#!/bin/bash

#########################################################################
# File Name: deploy_vimide.sh
# Author: 浪子尘心
# Mail: hj536418286@gmail.com
# Created Time: 2018-10-02 13:42:05
# Last Changed: 2018-10-02 13:42:44
# Description: 自动部署系统用户vimIDE
# Version: 0.3
#########################################################################

# 判断是否已经存在.vimrc 和 .vim文件夹，并备份
[ -f ~/.vimrc ] && mv ~/.vimrc  ~/.vimrc.bak
[ -d ~/.vim ] && mv ~/.vim ~/.vim_bak
# 配置vim
cp -f vimIDE_config/vimrc_pymode.sh ~/.vimrc.bundles
mkdir -p ~/.vim/vim_header_model
cp -f vimIDE_config/vim_header.sh ~/.vim/vim_header_model/vim_header
cp -f vimIDE_config/user.vimrc ~/.vimrc
# 安装vim插件管理Vundle
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/davidhalter/jedi-vim.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/nvie/vim-flake8.git
git clone https://github.com/jnurmine/Zenburn.git
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/tmhedberg/SimpylFold.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git
git clone https://github.com/godlygeek/tabular.git
git clone https://github.com/plasticboy/vim-markdown.git
git clone https://github.com/Yggdroot/indentLine.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/tell-k/vim-autopep8.git
# 执行安装vim插件
vim +PluginInstall +qall
# 安装jedi和autopep8
cd ~/.vim/bundle/jedi-vim/ && git submodule update --init
# jedi 支持插件
pip install jedi
which pip3 && pip3 install jedi
# pe8调整插件
pip install autopep8
# 安装完成提示
echo "恭喜你完成安装"