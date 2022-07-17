call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'valloric/youcompleteme'
Plug 'kien/ctrlp.vim'
"Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'python-mode/python-mode', { 'branch': 'develop', 'do': 'git fetch origin pull/950/head; git checkout FETCH_HEAD'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
"Plug 'dyng/ctrlsf.vim'
"Plug 'romainl/flattened'
Plug 'altercation/vim-colors-solarized'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-obsession'
Plug 'mileszs/ack.vim'
"Plug 'epeli/slimux', {'do': 'git fetch origin pull/75/head; git checkout FETCH_HEAD'}
Plug 'coduxer/slimux'
Plug 'coduxer/vimux'
Plug 'godlygeek/tabular'
call plug#end()
" mouse
set mouse=a
"relative line number
:set number relativenumber

"tabs
"
"set list
"set listchars=tab:>-
set expandtab
set shiftwidth=2
set softtabstop=2
set hlsearch

set encoding=utf-8
let mapleader = "\<Space>"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"for i in range(97,122)
"  let c = nr2char(i)
"  exec "map \e".c." <M-".c.">"
"  exec "map! \e".c." <M-".c.">"
"endfor

exe "map \es <M-s>"
exe "map! \es <M-s>"
  
noremap <silent> <M-s>          :update<CR>
vnoremap <silent> <M-s>         <C-C>:update<CR>
inoremap <silent> <M-s>         <C-O>:update<CR>

nnoremap <leader>gs :Gstatus<CR>7j
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>on :only<CR>
nnoremap <leader>so :source ~/.vimrc<CR>
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
syntax enable
set termguicolors
set background=dark
let g:solarized_diffmode="low"
colorscheme gruvbox
"colorscheme solarized
"colorscheme NONE

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"let g:solarized_termcolors=16
"colorscheme flattened_dark
"let g:solarized_termcolors=256

"let g:solarized_termtrans=1
map <C-n> :NERDTreeToggle<CR>

"ack vim
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

"slimux
map <C-c><C-c> :SlimuxREPLSendLine<CR>
vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>

"vimux
function VimuxReload()
  call VimuxRespawnRunner()
  call VimuxSendText("sopy")
  call VimuxSendKeys("Enter")
endfunction

 map <Leader>vp :call VimuxReload()<CR>:VimuxPromptCommand<CR>
 map <Leader>vl :call VimuxReload()<CR>:VimuxRunLastCommand<CR>
 map <Leader>vr :call VimuxReload()<CR>
 map <Leader>vz :call VimuxZoomRunner()<CR>
 map <Leader>vz :call VimuxZoomRunner()<CR>
