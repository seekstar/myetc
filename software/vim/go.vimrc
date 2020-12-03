set ts=4
set sw=4
set si

vmap <C-P> :s,^,// ,<CR>
vmap <C-M> :s,^// ,,<CR>

func! Compile()
	exec "!go build %"
endfunc

func! Run()
	exec "!./%<"
endfunc

map <C-F9> :w<CR>:call Compile()<CR>
map <C-F10> :call Run()<CR>
map <F9> <C-F9><CR><C-F10>

