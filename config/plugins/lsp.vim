" vim-lsp
" ---

" Apply settings for languages that registered LSP
function! s:on_lsp_buffer_enabled() abort
	setlocal omnifunc=lsp#complete
	if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
	" Slow
	" setlocal foldmethod=expr
	"	\ foldexpr=lsp#ui#vim#folding#foldexpr()
	"	\ foldtext=lsp#ui#vim#folding#foldtext()

	" Prefer native help with vim files
	if &filetype != 'vim'
		nmap <silent><buffer> K  <Plug>(lsp-hover)
	endif

 	nmap <silent><buffer> gd <plug>(lsp-definition)
    nmap <silent><buffer> gr <plug>(lsp-references)
    nmap <silent><buffer> gi <plug>(lsp-implementation)
    nmap <silent><buffer> gt <plug>(lsp-type-definition)
    nmap <silent><buffer> <leader>rn <plug>(lsp-rename)
    nmap <silent><buffer> [g <Plug>(lsp-previous-diagnostic)
    nmap <silent><buffer> ]g <Plug>(lsp-next-diagnostic)
endfunction

augroup lsp_user_plugin
	autocmd!

	autocmd User lsp_buffer_enabled call <SID>on_lsp_buffer_enabled()

	" vim-lsp completion error
	" autocmd CompleteDone * if pumvisible() == 0 | pclose | endif
augroup END
