set nocompatible            " disable compatibility to old-time vi
set exrc
set showmatch               " show matching 
set smartcase
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
" set hlsearch                " highlight search 
set nohlsearch
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set smarttab
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber
set wildmode=longest,list   " get bash-like tab completions
"set cc=80                  " set an 80 column border for good coding style
"highlight ColorColumn ctermbg=235 guibg=#282828
set nowrap
set noswapfile
set nobackup
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
set termguicolors
set scrolloff=8

set signcolumn=yes

" Plugins
call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/nerdcommenter'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'neoclide/coc.nvim'
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/chentoast/marks.nvim' " marks marker
Plug 'sonph/onehalf', { 'rtp': 'vim/' }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

call plug#end()

" :colorscheme gruvbox
" :colorscheme onehalfdark
colorscheme tokyonight
let g:airline_theme='onehalfdark'
let g:tokyonight_transparent = "true"
let g:tokyonight_transparent_sidebar = "true"

" set line numbers to white:
hi LineNr guifg=#ffffff
" keybinds
" move line or visually selected block - alt+j/k
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
nnoremap <C-j> :m +1<CR>
nnoremap <C-k> :m -2<CR>

" nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" By default, the coc auto complete is "<C-y>"
" inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<S-tab>"

"
" https://github.com/chentoast/marks.nvim 
" MARKS PLUGIN KEY MAPPINGS
"      mx              Set mark x
"      m,              Set the next available alphabetical (lowercase) mark
"      m;              Toggle the next available mark at the current line
"      dmx             Delete mark x
"      dm-             Delete all marks on the current line
"      dm<space>       Delete all marks in the current buffer
"      m]              Move to next mark
"      m[              Move to previous mark
"      m:              Preview mark. This will prompt you for a specific mark to
"                      preview; press <cr> to preview the next mark.
                     
"      m[0-9]          Add a bookmark from bookmark group[0-9].
"      dm[0-9]         Delete all bookmarks from bookmark group[0-9].
"      m}              Move to the next bookmark having the same type as the bookmark under
"                      the cursor. Works across buffers.
"      m{              Move to the previous bookmark having the same type as the bookmark under
"                      the cursor. Works across buffers.
"      dm=             Delete the bookmark under the cursor.


