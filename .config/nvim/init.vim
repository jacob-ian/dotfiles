set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
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
source ~/.config/nvim/plugins/nvim_cmp.vim
source ~/.config/nvim/plugins/plenary.vim
source ~/.config/nvim/plugins/null_ls.vim
source ~/.config/nvim/plugins/treesitter.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/vim_gitgutter.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/auto_pairs.vim
source ~/.config/nvim/plugins/lualine.vim
source ~/.config/nvim/plugins/one_dark.vim
source ~/.config/nvim/plugins/diffview.vim
source ~/.config/nvim/plugins/dashboard.vim
source ~/.config/nvim/plugins/git_blame.vim
source ~/.config/nvim/plugins/nerdtree_git.vim

" Must be included last
source ~/.config/nvim/plugins/devicons.vim

call plug#end()

colorscheme onedark

"-----------------------
" Mappings
"-----------------------
let mapleader = " "

" LSP Related Maps"
nnoremap <leader>li <cmd>lua vim.lsp.buf.implementation()<cr>
nnoremap <leader>ld <cmd>lua vim.lsp.buf.definition()<cr>
nnoremap <leader>lrn <cmd>lua vim.lsp.buf.rename()<cr>
nnoremap <leader>lrr <cmd>lua vim.lsp.buf.references()<cr>
nnoremap <leader>lh <cmd>lua vim.lsp.buf.hover()<cr>
nnoremap <leader>lsh <cmd>lua vim.lsp.buf.signature_help()<cr>
nnoremap <leader>lsd <cmd>lua vim.lsp.util.show_line_diagnostics()<cr>
nnoremap <leader>la <cmd>lua vim.lsp.buf.code_action()<cr>
nnoremap <leader>lfm <cmd>lua vim.lsp.buf.formatting_sync(nil, 1000)<cr>
nnoremap <leader>do <cmd>lua vim.diagnostic.open_float()<cr>
nnoremap <leader>d[ <cmd>lua vim.diagnostic.goto_prev()<cr>
nnoremap <leader>d] <cmd>lua vim.diagnostic.goto_next()<cr>

" NERDTree
nnoremap <leader>n <cmd>NERDTreeToggle<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" DiffView
nnoremap <leader>dvo <cmd>DiffviewOpen<cr>
nnoremap <leader>dvc <cmd>DiffviewOpen<cr>
nnoremap <leader>dvr <cmd>DiffviewRefresh<cr>

"Other
nnoremap <leader>gf :e <cfile><cr>

"-----------------------
" Autocommands
"-----------------------
autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 1000)

"-----------------------
" LSP
"-----------------------
source ~/.config/nvim/lsp/init.vim
source ~/.config/nvim/lsp/go.vim
source ~/.config/nvim/lsp/typescript.vim

"----------------------
" Other Setup
"---------------------
lua << EOF
require('lualine').setup()
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "typescript",
    "javascript",
    "jsonc",
    "markdown",
    "tsx",
    "yaml",
    "bash",
    "comment",
    "css",
    "dockerfile",
    "go",
    "graphql",
    "html",
    "jsdoc",
    "lua",
    "php",
    "python",
    "regex",
    "scss",
  },
  highlight = {
    enable = true,
  },
}
require('telescope').setup {
    defaults = { file_ignore_patterns = { "node_modules", ".git" } }
}
EOF
