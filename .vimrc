set guicursor=
set scrolloff=8
set number
set relativenumber
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent


call plug#begin()
"FZF, no idea what is this
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }

"Theme
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

"Git
Plug 'tpope/vim-fugitive'

"Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Code Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

"Javascript
Plug 'pangloss/vim-javascript'

"Typescript
Plug 'leafgarland/typescript-vim'

"JSX
Plug 'peitalin/vim-jsx-typescript'


call plug#end()

" ---> Prettier 
set tabstop=2
let g:prettier#config#tab_width=2
let g:prettier#config#use_tabs='false'

colorscheme catppuccin
let mapleader = " "
nnoremap <leader>pv :Vex<cr>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<cr>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
vnoremap <leader>p "_dP
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
