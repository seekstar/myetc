set ts=4
set sw=4
set softtabstop=4
set cindent
set smartindent	" next level indent

vmap <C-P> :s,^,// ,<CR>
vmap <C-M> :s,^// ,,<CR>

func! Compile()
	if filereadable('Makefile')
		exec "!make %<"
	else
		exec "!gcc -Wall % -o %<"
	endif
endfunc

func! Run()
	exec "!./%<"
endfunc

map <C-F9> :up<CR>:call Compile()<CR>
map <C-F10> :call Run()<CR>
map <F9> <C-F9><CR><C-F10>




map <F8> :up:call DEBUG_GDB()<CR>
func! DEBUG_GDB()
	exec "!gcc -Wall -g % -o %< -lpthread"
	exec "!gdb %<"
endfunc

map <C-S-F9> :up<CR>:call CompileRelease()<CR>
func! CompileRelease()
	exec "!gcc -Wall -O3 % -o %<"
endfunc

