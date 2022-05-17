"-------|
"plugins|
"-------|
call plug#begin()

    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'itchyny/vim-cursorword'
    Plug 'tpope/vim-commentary'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'overcache/NeoSolarized'
    Plug 'Mofiqul/vscode.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'tomasiser/vim-code-dark'
    Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

call plug#end()

"----------------|
"general settings|
"----------------|
syntax on
"set number
set relativenumber
set nohlsearch
set noerrorbells
set nowrap 
set autoindent
set tabstop=4
set scrolloff=8
set shiftwidth=4
set smarttab
set softtabstop=4
set expandtab 
set splitright
set ignorecase
set incsearch
set smartcase
set noshowmode
set formatoptions-=cro

"----------------------|
"plugin & font settings|
"----------------------|
let g:pymode = 1
nnoremap <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
let NERDTreeShowHidden=1
set guifont=mononoki\ Nerd\ Font\ 16
"set guifont=DroidSansMono\ Nerd\ Font\ 20
"set background=dark
let g:vscode_style = "dark"
set termguicolors
colorscheme NeoSolarized
lua << END
require("lualine").setup({
    options = {
        -- ...
        theme = "solarized_dark",
        -- ...
    },
})
END
