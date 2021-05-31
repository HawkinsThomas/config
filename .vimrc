" Always show the status line at the bottom, even if you only have one window open
set shortmess+=I
" Disable the default Vim startup message.
set laststatus=2
" apparently backspacing can be unintuitive without this
set backspace=indent,eol,start

" allow hidden buffers
set hidden

" for searching
set ignorecase
set smartcase
set incsearch


set autoindent
set copyindent
set number relativenumber
set showmatch
syntax on
colorscheme industry

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
