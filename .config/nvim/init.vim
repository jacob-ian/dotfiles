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
set scrolloff=16
set signcolumn=yes:1
syntax enable

"--------------------------
" Plugins
"--------------------------
" Set up VimPlug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugins/nvim_lspconfig.vim
source ~/.config/nvim/plugins/plenary.vim
source ~/.config/nvim/plugins/treesitter.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/vim_gitgutter.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/auto_pairs.vim
source ~/.config/nvim/plugins/lualine.vim
source ~/.config/nvim/plugins/one_dark.vim
source ~/.config/nvim/plugins/diffview.vim

" Must be included last
source ~/.config/nvim/plugins/devicons.vim

call plug#end()

colorscheme onedark

"-----------------------
" Mappings
"-----------------------
let mapleader = " "

" LSP Related Maps"
nnoremap <leader>gd <cmd>vim.lsp.buf.implementation()<cr>

" NERDTree
nnoremap <leader>n <cmd>NERDTreeToggle<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" DiffView
nnoremap <leader>dv <cmd>DiffviewOpen<cr>

"-----------------------
" LSP
"-----------------------
lua << EOF
require'lspconfig'.tsserver.setup{}
EOF

"----------------------
" Other Setup
"---------------------
lua << EOF
require('lualine').setup()
EOF
