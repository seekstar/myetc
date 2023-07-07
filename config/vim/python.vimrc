" tabstop	number of spaces a <Tab> in the text stands for
set ts=4
" shiftwidth	number of spaces used for each step of (auto)indent
set sw=4
" softtabstop	if non-zero, number of spaces to insert for a <Tab>
set softtabstop=4
set smartindent	" next level indent

vmap <C-P> :s,^,# ,<CR>
vmap <C-M> :s,^# ,,<CR>

func! Run()
	exec "!python3 %"
endfunc

map<F9> :w<CR>:call Run()<CR>
map<C-F10> :w<CR>:call Run()<CR>

