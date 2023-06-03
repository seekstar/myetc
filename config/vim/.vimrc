syntax on
set nu
set autoindent	" same level indent
set nocompatible
" indent这个能删除自动缩进的空格
" eol可以通过backspace在一行删除完后合并到上一行
" start可以删除此次进入插入模式前的输入
set backspace=indent,eol,start
set noeol
set nofixendofline

colo koehler
" delek ron

map <C-A> ggvG$"+y

"au BufRead,BufNewFile *.py set filetype=py

autocmd FileType cpp source ~/.vim/cpp.vimrc
autocmd FileType c source ~/.vim/c.vimrc
autocmd FileType tex source ~/.vim/tex.vimrc
autocmd FileType python source ~/.vim/python.vimrc
autocmd FileType vim source ~/.vim/vim.vimrc
autocmd FileType sh source ~/.vim/sh.vimrc
autocmd FileType rust source ~/.vim/rs.vimrc
autocmd FileType go source ~/.vim/go.vimrc
autocmd FileType yaml source ~/.vim/yaml.vimrc

autocmd BufNewFile *.cpp 0r ~/Templates/cpp.cpp
autocmd BufNewFile *.c 0r ~/Templates/c.c
autocmd BufNewFile *.desktop 0r ~/Templates/launcher.desktop

map <C-J> <C-E><C-W>w<C-E><C-W>w
map <C-K> <C-Y><C-W>w<C-Y><C-W>w

