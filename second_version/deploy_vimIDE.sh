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
# 下载的插件列表
cp -f vimIDE_config/second_version/.vimrc.bundles.list ~/.vimrc.bundles
mkdir -p ~/.vim/vim_header_model
cp -f vimIDE_config/second_version/vim_header ~/.vim/vim_header_model/vim_header
# 安装vim-plug插件管理器
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c "PlugInstall" -c "q" -c "q"
# 字体下载
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
# 完整的配置覆盖插件列表配置
cd ~
cp -f vimIDE_config/second_version/.vimrc.bundles ~/.vimrc.bundles
# 再执行一次，确保所有的插件安装
vim -c "PlugInstall" -c "q" -c "q"
# jedi 支持插件
pip install jedi
which pip3 && pip3 install jedi
# pe8调整插件
pip install autopep8
# 安装完成提示
echo "恭喜你完成安装"
