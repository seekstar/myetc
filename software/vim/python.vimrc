set ts=4
set sw=4
set softtabstop=4
set smartindent	" next level indent

vmap <C-P> :s,^,# ,<CR>
vmap <C-M> :s,^# ,,<CR>

func! Run()
	exec "!python3 %"
endfunc

map<F9> :w<CR>:call Run()<CR>
map<C-F10> :w<CR>:call Run()<CR>

