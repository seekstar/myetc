set ts=4
set sw=4
set softtabstop=4
set smartindent	" next level indent

vmap <C-P> :s,^,% ,<CR>
vmap <C-M> :s,^% ,,<CR>

func! Compile_pdflatex()
	exec "!pdflatex %"
endfunc

func! Compile_xelatex()
	exec "!xelatex %"
endfunc

func! View()
	exec "!evince %<.pdf&"
endfunc

map <F6> :w<CR>:call Compile_pdflatex()<CR>
map <F7> :w<CR>:call View()<CR>
map <F5> <F6><F7>

map <C-F9> :w<CR>:call Compile_xelatex()<CR>
map <F9> <C-F9><F7>

