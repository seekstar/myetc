set ts=4
set sw=4
set et
set si

vmap <C-P> :s,^,// ,<CR>
vmap <C-M> :s,^// ,,<CR>

func! Compile()
	exec "!rustc % -g"
endfunc

map <C-S-F9> :w<CR>:call CompileRelease()<CR>
func! CompileRelease()
	exec "!rustc % -C opt-level=3 -C debuginfo=0"
endfunc

func! Run()
	exec "!RUST_BACKTRACE=full ./%<"
endfunc

map <C-F9> :w<CR>:call Compile()<CR>
map <C-F10> :call Run()<CR>
map <F9> <C-F9><CR><C-F10>

