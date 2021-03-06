set noswapfile
set t_Co=256
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

set backspace=indent,eol,start

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'google/vim-jsonnet'
Plugin 'joshdick/onedark.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'

call vundle#end()            " required
filetype plugin indent on    " required
set autoindent
syntax enable
set number

" Show filename
set statusline=%F
set laststatus=2

" Start NERDTree
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if !exists("s:std_in") | NERDTree | endif

" Navigate between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Create/Destroy a new window
nnoremap <C-T> :vsplit<CR>
nnoremap <C-W> :q<CR>
set colorcolumn=80

colorscheme onedark

:set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

