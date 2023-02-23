set cc=80
set expandtab
set number
set shiftwidth=4
set softtabstop=4
set tabstop=4
set nocompatible
set background=light
set eol
filetype plugin on
syntax on

call plug#begin()

Plug 'ekalinin/Dockerfile.vim'
Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'

call plug#end()

let g:airline_theme='minimalist'

autocmd VimEnter * NERDTreeCWD
nnoremap <Leader>f :NERDTreeToggle<Enter>
let NERDTreeShowHidden=1

" Remove trailing whitespace with F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
