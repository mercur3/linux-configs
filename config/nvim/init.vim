syntax enable
set encoding=utf-8
set fileencoding=utf-8
set ruler
set number
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set autoindent
set nobackup
set nowritebackup
set expandtab
set mouse=a
set clipboard=unnamedplus
set linebreak
set showmatch
set hlsearch
set incsearch
set textwidth=100
set colorcolumn=+0
set novisualbell
highlight ColorColumn ctermbg=DarkGray guibg=lightgray

" Tmux being weird
set background=dark
set t_Co=256

" remaps
let mapleader = " "
map <leader>w <C-w>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
set iskeyword-=_

