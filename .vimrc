call plug#begin()

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'whonore/Coqtail' 

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'fladson/vim-kitty', { 'branch': 'main' }

Plug 'neovimhaskell/haskell-vim'

Plug 'edwinb/idris2-vim'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

nnoremap <C-p> :Files .<CR>

call plug#end()

set termguicolors
colorscheme dracula

set nu " line numbers
set rnu " relative line numbering

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartcase

set splitbelow
set splitright

