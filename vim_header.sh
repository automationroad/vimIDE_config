" 用户vim配置调用模板，路径：~/.vim/vim_header_model/vim_header ,这里自定义了shell和python的文件头信息
autocmd BufNewFile *.cc,*.sh,*.java,*.cpp,*.h,*.hpp,*.py,*.lua exec ":call SetTitle()"

"定义函数SetTitle，自动插入文件头
func SetTitle()
    let filetype_name = strpart(expand("%"), stridx(expand("%"), "."))
    let file_name = strpart(expand("%"), 0, stridx(expand("%"), "."))
    if file_name =~ "\/"
        let file_name = strpart(file_name, strridx(file_name, "/") + 1)
    endif
    let time_value = strftime("%Y-%m-%d %H:%M:%S")
    if filetype_name == ".sh"
        call setline(1, "\#!/bin/bash")
        call append(line("."), "")
        call append(line(".")+1, "\#########################################################################")
        call append(line(".")+2, "\# File Name: ". file_name . filetype_name)
        call append(line(".")+3, "\# Author: 浪子尘心")
        call append(line(".")+4, "\# Mail: hj536418286@gmail.com")
        call append(line(".")+5, "\# Created Time: ".time_value)
        call append(line(".")+6, "\# Last Changed: ".time_value)
        call append(line(".")+7, "\# Description: ")
        call append(line(".")+8, "\# Version: ")
        call append(line(".")+9, "\#########################################################################")
        call append(line(".")+10, "")
        call append(line(".")+11, "")
    else
        if filetype_name == ".py" 
            call setline(1, "\#!/usr/bin/env python3")
            call setline(2, "\# -*- coding: utf-8 -*-")
            call append(line(".")+1, "") 
            call append(line(".")+2, "\#########################################################################") 
            call append(line(".")+3, "\# File Name: ". file_name . filetype_name)  
            call append(line(".")+4, "\# Author: 浪子尘心")
            call append(line(".")+5, "\# Mail: hj536418286@gmail.com")
            call append(line(".")+6, "\# Created Time: ".time_value)
            call append(line(".")+7, "\# Last Modified: ".time_value)
            call append(line(".")+8, "\# Description: ")
            call append(line(".")+9, "\# Version: ")
            call append(line(".")+10, "\#########################################################################")
            call append(line(".")+11, "")
            call append(line(".")+12, "")
        endif
    endif
endfunc