" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

"set possible markdown file to markdown filetype"
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
au BufRead,BufNewFile *.{vue} set filetype=html

set history=1000 " keep 1000 lines of history
set ruler " show the cursor position

"not my style, just meet the needs of some unique project"
set expandtab  " set tab to be whitespace"
set smarttab   " smart work with expandtab for backspace 

set viminfo='20,\"200 " keep a .viminfo file
set number
set vb t_vb=
set tabstop=4
set shiftwidth=4
set incsearch
set nowrap
set ignorecase
set autoindent
setlocal noswapfile
au FileType php setlocal dict+=~/.vim/php_funclist.txt
set showmatch
set virtualedit=all
let &termencoding=&encoding
set fileencodings=utf-8,gbk
set noimdisable
" set fdm=indent "set foldmethod"
set sm
set ambiwidth=double
" set whichwrap=b,s,h

autocmd! InsertLeave * set imdisable|set iminsert=0
autocmd! InsertEnter * set noimdisable|set iminsert=0

syntax on " syntax highlighting
set hlsearch " highlight the last searched term

filetype plugin on " use the file type plugins

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif
