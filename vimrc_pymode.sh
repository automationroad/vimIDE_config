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
"添加PEP8代码风格检查，运行F7就可以进行flake8检查了
Plugin 'nvie/vim-flake8'
"配色方案
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
"代码折叠插件
Plugin 'tmhedberg/SimpylFold'
"在vim的normal模式下搜索文件，normal模式就是ESC按键之后的模式
Plugin 'kien/ctrlp.vim'
"比Powerline更好的状态栏显示插件,可以显示当前的虚拟环境、Git分支、正在编辑的文件等信息
Plugin 'vim-airline/vim-airline'
" Git集成,可以在Vim中执行基本的Git命令
Plugin 'tpope/vim-fugitive'
" 为nerdtree添加git支持
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Markdown语法高亮插件
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" 显示缩进对齐线插件
Plugin 'Yggdroot/indentLine'
" 代码片段补全
Plugin 'honza/vim-snippets'
" 自动格式化工具，安装后运行:Autopep8就可以自动依照pep8的标准自动格式化代码
Plugin 'tell-k/vim-autopep8'
"你的所有插件需要在下面这行之前
call vundle#end() 

"python with virtualenv support 虚拟环境支持
py << EOF
import os.path
import sys
import vim
if 'VIRTUA_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  sys.path.insert(0, project_base_dir)
  activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" jedi-vim 配置,第一行是启用tab键补全，第二行是禁用 . 补全
" let g:SuperTabDefaultCompletionType = "context"
" let g:jedi#popup_on_dot = 0

"设置分割窗口
set splitbelow
set splitright
"设置窗口切换快捷键，例如，打开目录树的情况下，需要两个窗口来回切换
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NERDTree 插件设置
"设置按F2启动/关闭NerdTree，开关树形目录的快捷键
map <F2> :NERDTreeToggle<CR>
" 在 vim 启动的时候默认开启 NERDTree
autocmd vimenter * NERDTree
" 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
" let NERDTreeWinPos="right"
" 当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
" 在显示目录树情况下直接退出，不用退出两次才回到命令行
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
"隐藏目录树种的.pyc文件
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" 设置快捷键F8代替:Autopep8
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
" 保存文件时，自动格式化
let g:autopep8_on_save = 1

"设置主题颜色，以及设置快捷键F5，确定什么模式下使用何种方案
if has('gui_running')
  set background=dark
  colorscheme solarized  "GUI模式
else
  colorscheme zenburn    "终端模式
endif
call togglebg#map("<F5>")

"开启代码折叠
set foldmethod=indent
set foldlevel=99
"设置快捷键为空格
noremap <space> za
"显示折叠代码的文档字符串
let g:SimpylFold_docstring_preview=1

"python代码缩进PEP8风格，这里加上shell风格和python一样
au BufNewFile,BufRead *.py,*.pyw set tabstop=4 
au BufNewFile,BufRead *.py,*.pyw set softtabstop=4 
au BufNewFile,BufRead *.py,*.pyw set shiftwidth=4 
au BufNewFile,BufRead *.py,*.pyw set textwidth=79 
au BufNewFile,BufRead *.py,*.pyw set expandtab 
au BufNewFile,BufRead *.py,*.pyw set autoindent 
au BufNewFile,BufRead *.py,*.pyw set fileformat=unix

"对其他文件类型设置au命令
au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set softtabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set shiftwidth=2

" shell 风格
"au BufNewFile,BufRead *.sh set nu          "在左侧行号
au BufNewFile,BufRead *.sh set tabstop=4     "tab 长度设置为 4
au BufNewFile,BufRead *.sh set nobackup    "覆盖文件时不备份
"au BufNewFile,BufRead *.sh set cursorline  "突出显示当前行
au BufNewFile,BufRead *.sh set ruler       "在右下角显示光标位置的状态行
au BufNewFile,BufRead *.sh set  showmode   "设置在命令行界面最下面显示当前模式等
"au BufNewFile,BufRead *.sh syntax on       "即设置语法检测，当编辑C或者Shell脚本时，关键字会用特殊颜色显示

"高亮显示行伟不必要的空白字符
highlight Whitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.sh match Whitespace /\s\+$\ \+/

"设置行号显示
set nu
"显示匹配的括号
set showmatch
"可以在buffer的任何地方使用鼠标
set mouse=a
" 打开时自动跳转到上次光标位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" 默认指令记录是20
set history=100
" 设置utf-8编码
set encoding=utf-8
let python_highlight_all=1
" 语法高亮
syntax on
" 开启文件类型检测
filetype plugin indent on