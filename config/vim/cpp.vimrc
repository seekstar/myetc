set ts=4
set sw=4
set softtabstop=4
set cindent
set smartindent	" next level indent
set colorcolumn=80

vmap <C-P> :s,^,// ,<CR>
vmap <C-M> :s,^// ,,<CR>

func! Compile()
	if filereadable('Makefile')
		exec "!make %<"
	else
		exec "!g++ -std=c++17 -Wall -g % -o %< -lpthread"
	endif
endfunc

func! Run()
	exec "!./%<"
endfunc
    
map <C-F9> :w<CR>:call Compile()<CR>
map <C-F10> :call Run()<CR>
map <F9> <C-F9><CR><C-F10>




map <F8> :call DEBUG_GDB()<CR>
func! DEBUG_GDB()
	call Compile()
	exec "!gdb %<"
endfunc

func! CompileRelease()
	exec "!g++ -std=c++17 -Wall -O3 % -o %<"
endfunc
map <C-S-F9> :w<CR>:call CompileRelease()<CR>
map <S-F9> <C-S-F9><CR><C-F10>



map <S-F8> gg/ONLINE_JUDGE<CR>I//:call DEBUG_GDB()<CR>u

"Just try
" set nocompatible " be iMproved, required
" filetype off " required
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" 
" Plugin 'Chiel92/vim-autoformat'
" 
" "Plugin 'Valloric/YouCompleteMe'
" 
" call vundle#end()
" filetype plugin indent on
" 
" noremap <C-b> :Autoformat<CR>:w<CR>
" let g:autoformat_verbosemode=1
"end of try

"noremap <C-b> :w<CR>:!clang-format -style=VVLM -i %<CR>l
"let g:formatdef_allman = '"astyle--style=allman--pad-oper"'
"let g:formatters_c = ['allman']
"let g:formatters_cpp = ['allman']

"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

