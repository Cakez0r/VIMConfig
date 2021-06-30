execute pathogen#infect()
syntax on
filetype plugin indent on

" Manage tabs
map <C-t> :tabnew<cr>
map <S-tab> :tabn<cr>
map <C-S-tab> :tabp<cr>

" Toggle NERDTree with F8
map <F8> :NERDTreeToggle .<cr>

" Show NERDTree on VIM start
autocmd vimenter * NERDTree
autocmd vimenter * wincmd l

" Close VIM if only NERDTree left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Show line numbers
set number

" Disable highlight matching parentheses
let loaded_matchparen = 1

" Bind ctrl+p to CtrlP plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
