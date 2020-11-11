let g:vim_json_syntax_conceal = 0
set nu
set rnu
nnoremap <Leader>wh <C-w>h
nnoremap <Space>wj <C-w>j
nnoremap <Space>wl <C-w>l
nnoremap <Space>wk <C-w>k

" 默认打开文件可编辑
set noro

" 搜索快捷键
nnoremap -- :<C-U>FZF<CR>
autocmd Filetype rust nnoremap <slient><buffer> <Space-r> :<C-U>RustFmt<CR>
autocmd Filetype json nnoremap <slient><buffer> <Space-r> :<C-U>JsonLineFormatWrite<CR>