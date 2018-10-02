" ~/.vimrc 用户vim配置
" 关于更新时间说明：退出时按 'wq' 自动更新时间，不论是否有修改；按 'x' 则文件有修改时更新， 按 'q' 更新时间无变化
" modify the last modified time of a file
function SetLastModifiedTime(lineno)
    let modif_time = strftime("%Y-%m-%d %H:%M:%S")
    if a:lineno == "-1"
            let line = getline(9)
    else
            let line = getline(a:lineno)
    endif

    if line =~ '\sLast Modified:'
            let line = strpart(line, 0, stridx(line, ":")) . ": " . modif_time
    endif
    
    if a:lineno == "-1"
            call setline(9, line)
    else
            call append(a:lineno, line)
    endif
endfunc
" 修改shell脚本的更新时间
function SetLastModifiedTime_sh(lineno_sh)
    let modif_time_sh = strftime("%Y-%m-%d %H:%M:%S")
    if a:lineno_sh == "-2"
            let line_sh = getline(8)
    else
            let line_sh = getline(a:lineno_sh)
    endif
    
    if line_sh =~ '\sLast Changed:'
            let line_sh = strpart(line_sh, 0, stridx(line_sh, ":")) . ": " .  modif_time_sh
    endif
    
    if a:lineno_sh == "-2"
            call setline(8, line_sh)
    else
            call append(a:lineno_sh, line_sh)
    endif
endfunc

" map the SetLastModifiedTime command automatically  
autocmd BufWrite *.py call SetLastModifiedTime(-1)
autocmd BufWrite *.sh call SetLastModifiedTime_sh(-2)
" 加载文件头模板
run vim_header_model/vim_header

" 加载自己定义的语言编辑器配置，包括python，shell
if filereadable(expand("~/.vimrc.bundles")) 
    source ~/.vimrc.bundles 
endif