" tabstop: number of spaces a <Tab> in the text stands for
set ts=4
" expandtab: expand <Tab> to spaces in Insert mode
set et
" smartindent: do clever autoindenting
set si
" shiftwidth: number of spaces used for each step of (auto)indent
set sw=4
" softtabstop: if non-zero, number of spaces to insert for a <Tab>
" Makes backspace in insert mode delete four spaces at once.
set sts=4

vmap <C-P> :s,^,# ,<CR>
vmap <C-M> :s,^# ,,<CR>

func! Run()
	exec "!python3 %"
endfunc

map<F9> :w<CR>:call Run()<CR>
map<C-F10> :w<CR>:call Run()<CR>

