set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set hidden
set number
set relativenumber
set exrc
set nohlsearch
set noerrorbells
set ignorecase
set smartcase
set noswapfile
set incsearch
set scrolloff=8

"
" Plugins
"
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
