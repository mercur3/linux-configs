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
set iskeyword-=_

" VSCode-specific mappings
if exists('g:vscode')
    " Navigate between editor tabs
    nnoremap <C-Left> :call VSCodeNotify('workbench.action.previousEditor')<CR>
    nnoremap <C-Right> :call VSCodeNotify('workbench.action.nextEditor')<CR>

    " Space + . to open file search (Quick Open)
    nnoremap <leader>. :call VSCodeNotify('workbench.action.quickOpen')<CR>

    " remaps
    nnoremap <leader>w <C-w>

    nnoremap <leader>cf <Cmd>call VSCodeNotify('editor.action.formatDocument')<CR><Cmd>call VSCodeNotify('editor.action.organizeImports')<CR>
    nnoremap <leader>cr <Cmd>call VSCodeNotify('editor.action.rename')<CR>
    nnoremap <leader>bk <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>

    nnoremap gc <Cmd>call VSCodeNotify('editor.action.commentLine')<CR>
    xnoremap gc <Cmd>call VSCodeNotify('editor.action.commentLine')<CR>

    set iskeyword-=_

    " Explorer (NERDTree replacement)
    nnoremap <leader>op <Cmd>call VSCodeNotify('workbench.view.explorer')<CR>
    nnoremap <leader>cp <Cmd>call VSCodeNotify('workbench.action.closeSidebar')<CR>
else
    " Regular Neovim mappings (when not in VSCode)
    nnoremap <C-Left> :tabprevious<CR>
    nnoremap <C-Right> :tabnext<CR>
endif
