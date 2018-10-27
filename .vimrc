call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'kien/ctrlp.vim'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
"Plug 'dyng/ctrlsf.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

"relative line number
:set number relativenumber

"tabs
"
"set list
"set listchars=tab:>-
set expandtab
set shiftwidth=2
set softtabstop=2

set encoding=utf-8
let mapleader = "\<Space>"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>gs :Gstatus<CR>7j
nnoremap <leader>gp :Gpush<CR>
set clipboard=unnamedplus
"pymode settings:

let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
let g:pymode_virtualenv = 1
let g:pymode_virtualenv_path = $VIRTUAL_ENV
let g:virtualenv_directory = $VIRTUAL_ENV
let g:pymode_motion = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_rope = 1
"let g:pymode_folding = 1

"color schema
syntax on
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

"let g:solarized_termtrans=1
map <C-n> :NERDTreeToggle<CR>
