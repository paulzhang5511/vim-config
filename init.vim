if has('win64') 
  let g:separator  = '\'
else
  let g:separator  = '/'
endif
execute 'source' fnamemodify(expand('<sfile>'), ':h') . g:separator . 'config' . g:separator . 'vimrc'