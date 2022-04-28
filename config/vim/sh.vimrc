set ts=4
set sw=4
set softtabstop=4
"set smartindent

vmap <C-P> :s,^,# ,<CR>
vmap <C-M> :s,^# ,,<CR>

func! Run()
	exec "!bash %"
endfunc

map <C-F10> :w<CR>:call Run()<CR>

