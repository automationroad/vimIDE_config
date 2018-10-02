" required 关闭与vi的兼容模式
set nocompatible
" required
filetype off

"设置Vundle的运行路径，Vundle 是一个vim插件管理器，相当于python的pip
set rtp+=~/.vim/bundle/Vundle.vim
"设置插件的安装路径,vundle插件起始标志
call vundle#begin('~/.vim/bundle')
"让vundle管理插件版本
Plugin 'VundleVim/Vundle.vim'
"添加nerdtree插件，目录树插件
Plugin 'scrooloose/nerdtree'
"使用tab键切换窗口与目录树，实际上没体验到，而且tab键和jedi补全有冲突，所以安装上一个目录树插件也够用
"Plugin 'jistr/vim-nerdtree-tabs'
" 添加代码补全插件，YouCompleteMe 插件比 Jedi-vim 功能更丰富,但是由于YCM太笨重，安装可以考虑jedi-vim
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
"Plugin 'Valloric/YouCompleteMe'
" Python集成开发插件，整合了pylint, rope, pydoc, pyflakes, pep8, and mccabe，但是GitHub上说这个插件跟jedi-vim有冲突
" Plugin 'klen/python-mode'
" python语法检测
Plugin 'scrooloose/syntastic'
"添加PEP8代码风格检查，运行F7就可以进行flake8检查了
Plugin 'nvie/vim-flake8'
"配色方案
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
"代码折叠插件
Plugin 'tmhedberg/SimpylFold'
"自动缩进
Plugin 'vim-scripts/indentpython.vim'
"在vim的normal模式下搜索文件，normal模式就是ESC按键之后的模式
Plugin 'kien/ctrlp.vim'
"Powerline状态栏,可以显示当前的虚拟环境、Git分支、正在编辑的文件等信息
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Git集成,可以在Vim中执行基本的Git命令
Plugin 'tpope/vim-fugitive'
" 为nerdtree添加git支持
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Markdown语法高亮插件
Plugin 'plasticboy/vim-markdown'
" 显示缩进对齐线插件
Plugin 'Yggdroot/indentLine'
" shell命令显示插件
Plugin 'Shougo/vimshell.vim'
" python文档查看插件
Plugin 'fs111/pydoc.vim'
" 代码片段补全
Plugin 'honza/vim-snippets'
" 自动格式化工具，安装后运行:Autopep8就可以自动依照pep8的标准自动格式化代码
Plugin 'tell-k/vim-autopep8'
"你的所有插件需要在下面这行之前
call vundle#end()
