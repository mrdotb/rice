" MrdotB vimrc
set encoding=utf-8

set mouse=""

set listchars=tab:␉·,trail:␠
set list

set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set number
set relativenumber

set hlsearch
set incsearch
set ignorecase
set smartcase
" Disable search result when Carriage Return
map <CR> :nohl<CR>

" Use sys clipboard
if has('unnamedplus')
	set clipboard=unnamed,unnamedplus
endif

" Resize split when window is resized
au VimResized * :wincmd =

set title

call plug#begin('~/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'justinmk/molokai'
Plug 'neomake/neomake'
  augroup localneomake
    autocmd! BufWritePost * Neomake
  augroup END

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
let g:fzf_layout = { 'down': '~50%' }
  map <C-[> :Files<C-[>

Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'

Plug 'christoomey/vim-tmux-navigator'

call plug#end()
colorscheme molokai
set background=dark
syntax enable

"disable arrows
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
