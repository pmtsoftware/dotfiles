call plug#begin()

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'rakr/vim-one'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'whonore/Coqtail' 

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'fladson/vim-kitty', { 'branch': 'main' }

Plug 'neovimhaskell/haskell-vim'

Plug 'edwinb/idris2-vim'

Plug 'godlygeek/tabular'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

call plug#end()

let g:airline_theme='one'

set runtimepath+=~/.vim/plugged/LanguageClient-neovim
let g:LanguageClient_serverCommands = { 'haskell': ['haskell-language-server-wrapper', '--lsp'] }

set termguicolors
colorscheme one
set background=light

set nu " line numbers
set rnu " relative line numbering

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartcase

set splitbelow
set splitright

set signcolumn=yes

let mapleader=" "

" fzf
nnoremap <C-p> :Files .<CR>

" haskell language server
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <F1> :call LanguageClient#explainErrorAtPoint()<CR>
map <Leader>lk :call LanguageClient#textDocument_hover()<CR>
map <Leader>lg :call LanguageClient#textDocument_definition()<CR>
map <Leader>lr :call LanguageClient#textDocument_rename()<CR>
map <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
map <Leader>lb :call LanguageClient#textDocument_references()<CR>
map <Leader>la :call LanguageClient#textDocument_codeAction()<CR>
map <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>

