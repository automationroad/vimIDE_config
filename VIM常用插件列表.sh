# 参考博客URL：https://www.cnblogs.com/edward2013/p/5295004.html
Plugin 'VundleVim/Vundle.vim'                  " VIM插件管理工具
Plugin 'scrooloose/nerdcommenter'             " 代码注释插件
Plugin 'scrooloose/nerdtree'                       " 树形文件浏览器插件
Plugin 'kien/ctrlp.vim'                               " 模糊文件,缓存,Tag查找插件
Plugin 'tomasr/molokai'                             " Molokai皮肤
Plugin 'lilydjwg/colorizer'                           " 文本颜色插件
Plugin 'plasticboy/vim-markdown'               " Markdown语法高亮插件
Plugin 'vim-scripts/matchit.zip'                   " 扩展%匹配字符范围插件 
Plugin 'tpope/vim-surround'                       " 快速切换括号/引号或者标签插件
Plugin 'tpope/vim-repeat'                           " 扩展surround.vim重复命令 (.)插件
Plugin 'tpope/vim-fugitive'                         " Git命令封装插件
Plugin 'airblade/vim-gitgutter'                    " 实时显示Git更改插件
Plugin 'Lokaltog/vim-powerline'                   " 状态栏增强插件
Plugin 'bling/vim-airline'                             " 轻量级状态栏增强插件
Plugin 'mattn/emmet-vim'                          " Emmet插件，快速生成html代码
Plugin 'vim-scripts/xptemplate'                   " 快速生成代码片段插件

if v:version > 703 || (v:version == 703 && has('patch584')) 
    Plugin 'Valloric/YouCompleteMe'               " 自动补全插件，clang级别的补全以及cache补全
endif

Plugin 'mileszs/ack.vim'                              " 工程全局搜索插件
Plugin 'mattn/gist-vim'                               " gists创建管理插件
Plugin 'altercation/vim-colors-solarized'         " Solarized皮肤
Plugin 'dyng/ctrlsf.vim'                               " 全局搜索插件，以ag或者ack作为后端
Plugin 'sjl/gundo.vim'                                 " 撤销树插件
Plugin 'scrooloose/syntastic'                         " 语法检查插件
Plugin 'Lokaltog/vim-easymotion'                 " 快速跳转插件
Plugin 'skammer/vim-css-color'                    " css颜色高亮插件
Plugin 'pangloss/vim-javascript'                   " javascript语法高亮，智能缩进插件
Plugin 'maksimr/vim-jsbeautify'                   " 快速格式化javascript插件
Plugin 'elzr/vim-json'                                  " JSON语法高亮插件
Plugin 'SirVer/ultisnips'                               " 快速插入代码片段插件
Plugin 'honza/vim-snippets'                         " 代码片段模板插件
Plugin 'godlygeek/tabular'                           " 文本自动对齐插件
Plugin 'junegunn/vim-easy-align'                 " 按分隔符文本对齐插件
Plugin 'othree/xml.vim'                               " xml格式化插件
Plugin 'vim-scripts/Greplace.vim'                 " 全局查找替换插件
Plugin 'evanmiller/nginx-vim-syntax'            " Nginx语法高亮插件
Plugin 'kien/rainbow_parentheses.vim'          " 括号美观匹配高亮插件
Plugin 'majutsushi/tagbar'                           " 代码结构浏览器插件
Plugin 'vim-scripts/TaskList.vim'                  " 任务列表插件
Plugin 'Raimondi/delimitMate'                      " 补全括号和引号插件
Plugin 'jiangmiao/auto-pairs'                       " 补全括号和引号插件
Plugin 'Yggdroot/indentLine'                        " 显示缩进对齐线插件
Plugin 'terryma/vim-expand-region'              " 扩展选择内容插件
Plugin 'terryma/vim-multiple-cursors'           " 多光标选择插件
Plugin 'YankRing.vim'                                  " 剪贴板增强插件
Plugin 'fs111/pydoc.vim'                             " python文档查看插件
Plugin 'hdima/python-syntax'                       " Python语法插件
Plugin 'pyflakes.vim'                                   " Python代码检查插件
Plugin 'python.vim'                                     " Python语法高亮，智能缩进插件
Plugin 'klen/python-mode'                           " Python集成开发插件，整合了pylint, rope, pydoc, pyflakes, pep8, and mccabe
Plugin 'jabapyth/vim-debug'                        " Python，PHP debug插件
Plugin 'rkulla/pydiction'                               " Python自动补全插件
Plugin 'vim-scripts/Conque-Shell'                 " Vim buffer中运行交互程序插件
Plugin 'ivanov/vim-ipython'                          " IPython支持插件

if has("lua") 
    Plugin 'Shougo/neocomplete'                   " 代码补全插件 
else
    Plugin 'Shougo/neocomplcache'                " 代码补全插件
endif

Plugin 'Shougo/neosnippet'                          " 代码片段插件
Plugin 'Shougo/neosnippet-snippets'             " neosnippet的基础代码片段库插件
Plugin 'Shougo/vimshell.vim'                       " shell命令显示插件
Plugin 'Shougo/vimproc.vim'                        " 交互式命令执行插件
Plugin 'Shougo/neomru.vim'                         " MRU补丁，支持unite.vim插件
Plugin 'Shougo/unite.vim'                            " 全局查找显示插件
Plugin 'Shougo/unite-outline'                       " unite增强插件
Plugin 'Shougo/unite-help'                           " unite帮助插件
Plugin 'Rykka/riv.vim'                                  " reStructuredText扩展插件
Plugin 'vim-scripts/DrawIt'                           " 画图插件
Plugin 'wesleyche/Trinity'                             " taglist, NERDtree and SrcExpl 整合插件
Plugin 'wesleyche/SrcExpl'                           " 源代码浏览器插件
Plugin 'vim-scripts/taglist.vim'                      " 源码结构列表插件
Plugin 'vim-scripts/winmanager'                   " windows样式文件浏览器插件
Plugin 'jlanzarotta/bufexplorer'                     " BufExplorer插件
Plugin 'vim-commentary'                             " 代码注释插件
Plugin 'tomtom/tcomment_vim'                   " 代码注释插件
Plugin 'davidhalter/jedi-vim'                        " Jedi库Python代码补全插件
Plugin 'fatih/vim-go'                                    " Go开发支持插件
Plugin 'tpope/vim-speeddating'                    " 日期生成插件
Plugin 'mattn/calendar-vim'                         " 日历生成插件
Plugin 'dhruvasagar/vim-table-mode'            " 表格生成插件
Plugin 'vim-scripts/a.vim'                            " .h和.c之间切换插件
Plugin 'mbbill/echofunc'                              " 显示C/C++函数声明提示插件
Plugin 'xuhdev/SingleCompile'                     " 简单编译运行源文件插件
Plugin 'vim-scripts/TagHighlight'                  " 给类/结构体/枚举等数据类型添加语法高亮显示插件
Plugin 'vim-scripts/FuzzyFinder'                   " 很强大的文件查找工具，需要依赖L9
Plugin 'vim-scripts/fencview.vim'                  " 自动检测文件编码，也可以手动选择文件编码
Plugin 'vimwiki/vimwiki'                              " 用vim来打造个人wiki
Plugin 'vim-scripts/AuthorInfo'                     " 自动生成/更新文件的作者信息(vimer.cn博主编写)
Plugin 'vim-scripts/DoxygenToolkit.vim'        " 添加doxygen注释
Plugin 'sjas/csExplorer'                                " 提供列出配色列表的功能，就不用一个个手工去敲配色名字了
Plugin 'vim-scripts/VisIncr'                          " 提供生成数列的功能

" 自动格式化工具，安装后运行:Autopep8就可以自动依照pep8的标准自动格式化代码
命令行执行 pip install autopep8
Plugin 'tell-k/vim-autopep8'
" 设置快捷键F8代替:Autopep8
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
" 代码片段补全
Plugin 'honza/vim-snippets'