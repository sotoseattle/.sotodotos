let mapleader=" "

set wildignore+=**/.git/*
set wildignore+=*.beam
set wildignore+=**/node_modules/*

" let mapleader='<Space>'
" set nocompatible                " not needed, default since vim 8
" filetype plugin indent on       " not needed, default since vim 8
" Mode Settings
" let &t_SI.="\e[5 q" "SI = INSERT mode
" let &t_SR.="\e[4 q" "SR = REPLACE mode
" let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"-------------------- PLUGS --------------------
" remember to install with Plug and run :PlugInstall

call plug#begin(expand('~/.vim/plugged'))

  " theme
  Plug 'morhetz/gruvbox'
  Plug 'arcticicestudio/nord-vim'

  " these 3 are needed for telescope <space> ff
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  " This is complicated... :A
  Plug 'https://github.com/tpope/vim-projectionist'

  " Git functionality :G
  Plug 'https://github.com/tpope/vim-fugitive'

  " comment gc{motion} and gcc
  Plug 'https://github.com/tomtom/tcomment_vim.git'

  " to minimize and focus :Goyo or '<space> go'
  Plug 'junegunn/goyo.vim'

  " Elixir IDE plugs
  " Autocorrect as lint on save
  Plug 'dense-analysis/ale'

  Plug 'elixir-editors/vim-elixir'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
  " Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}
  " Plug 'https://github.com/elixir-lsp/coc-elixir'

  Plug 'vim-test/vim-test'
  Plug 'kassio/neoterm'    " optional, using neoterm as the vim-test runner

  " ranger for nvim
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

  " dashboard
  Plug 'mhinz/vim-startify'

  " whichkey
  Plug 'liuchengxu/vim-which-key'

call plug#end()

let g:ale_fixers = {
\    '*': ['remove_trailing_lines', 'trim_whitespace'],
\    'elixir': ['mix_format'],
\   }
let g:ale_fix_on_save = 1

" nmap <silent> ed <Plug>(coc-definition)
" nmap <silent> er <Plug>(coc-references)
nnoremap <silent> <leader>co  :<C-u>CocList outline<CR>
let test#strategy = "neoterm"

" these 'Ctrl mappings' work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

let g:startify_custom_header = [
\ "                    /           ",
\ "    _   _  _/_ ___ / ___ _  ___ ",
\ "   (_/_(_(_(__(_) /_(_) (__(_)  ",
\ "  .-/                           ",
\ " (_/                            ",
\ "                                ",
\]
" let g:startify_custom_header = map(s:startify_ascii_header +
"         \ startify#fortune#quote(), '"   ".v:val')

source $HOME/.config/nvim/keys/which-key.vim

"-------------------- PRESENTATION --------------------

set guicursor=
set relativenumber
set nu rnu
set cursorline
set hidden
set noerrorbells
set ts=4
set sts=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set showmatch
set noswapfile
set nobackup
set incsearch
set mouse=a
set scrolloff=6
set colorcolumn=80
set signcolumn=yes
set splitbelow
set splitright
set spell
syntax on
set encoding=utf-8
colorscheme gruvbox    " another one is nord
set background=dark    " Setting dark mode for gruvbox

"-------------------- STATUS LINE --------------------

set statusline=
set statusline+=%#DiffText#        " use :so $VIMRUNTIME/syntax/hitest.vim
set statusline+=\ %M               " + '=> being modified'
set statusline+=\ %y               " [filetype]
set statusline+=\ %r               " [RO] read only
set statusline+=\ %F               " full path to this file
set statusline+=%=                 " switching to the right side now
set statusline+=%#TermCursor#
set statusline+=\ %c:%l/%L\        " col : line / total lines
set statusline+=\ %p%%             " percentage down in doc
set statusline+=\ [%n]             " [buffer number]



"-------------------- no idea... --------------------

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
     \ pumvisible() ? "\<C-n>" :
     \ <SID>check_back_space() ? "\<Tab>" :
     \ coc#refresh()

"-------------------- REMAPS --------------------

" commonsensical
nnoremap Y y$           " Yank until the end, not the whole
nnoremap n nzzzv        " as I move to next, keep centered
nnoremap N Nzzzv        " as I move to prev, keep centered
nnoremap J mzJ`z        " as I concat, keep centered
inoremap , ,<<c-g>u     " make breakpoint to undo only chunks
inoremap . .<<c-g>u
inoremap ! !<<c-g>u
inoremap ? ?<<c-g>u


" to move among buffers faster
map gn :bn<CR>
map gp :bp<CR>
map gd :bd<CR>

" to move among splitted windows
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" move lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" nnoremap <leader>j :m .+1<CR>==
" nnoremap <leader>k :m .-2<CR>==
" inoremap <C-j> <esc>:m .+1<CR>==
" inoremap <C-k> <esc>:m .-2<CR>==

map <F1> :colorscheme gruvbox<CR>
map <F2> :colorscheme nord<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nmap <leader>gs :G<CR>

map <leader>go :Goyo<CR>

nnoremap <leader>tt :term<CR>

map <C-s> :source ~/.config/nvim/init.vim<CR>
