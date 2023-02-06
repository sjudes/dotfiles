"-------------------------------------------------------------------------------
"	.vimrc
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
"	Plugins
call plug#begin('~/.vim.vimplug_plugins')
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'tpope/vim-fugitive'
	Plug 'sainnhe/everforest'
	Plug 'jlanzarotta/bufexplorer'
	Plug 'dbeniamine/todo.txt-vim'
call plug#end()


"-------------------------------------------------------------------------------
"	Vim rather than Vi
set nocompatible

"-------------------------------------------------------------------------------
"	Leader keys
let mapleader=','
let maplocalleader=','

"-------------------------------------------------------------------------------
"	Syntax Highlighting
syntax on

" Status line
set laststatus=2	" Always show the statusline
set encoding=utf-8

"-------------------------------------------------------------------------------
"	Indentation, Tabs stops, Menus
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard^=unnamed
set autochdir
set scrolloff=7
set wildmenu

"-------------------------------------------------------------------------------
"	Searching
set incsearch
set hlsearch
" From https://vim.fandom.com/wiki/Highlight_all_search_pattern_matches
let g:highlighting = 0
function! Highlighting()
	if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
		let g:highlighting = 0
		return ":silent nohlsearch\<CR>"
	endif
	let @/ = '\<'.expand('<cword>').'\>'
	let g:highlighting = 1
	return ":silent set hlsearch\<CR>"
endfunction
noremap <silent> <expr> ; Highlighting()

"-------------------------------------------------------------------------------
"	Line numbering
set number

"-------------------------------------------------------------------------------
"	Allow backspace in insert mode
set backspace=2

"-------------------------------------------------------------------------------
"	Indentation and folding
set autoindent
set smartindent
set foldmethod=indent
set foldnestmax=20
set foldlevelstart=0
nnoremap <space> za
vnoremap <tab> >gv
vnoremap <S-tab> <gv

"-------------------------------------------------------------------------------
"	Lazy redraw - don't redraw while executing macros
set lazyredraw


"-------------------------------------------------------------------------------
"	Key Mappings
" Insert new lines without leaving normal mode
nnoremap <leader>o o<C-c>k
nnoremap <leader>O O<C-c>j

" Easier move screen up/down
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>

" Easier tabbing in visual mode
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Comment lines with separators
nnoremap <leader>s 0O#<esc>78a-<esc>ao<CR>#<tab>
nnoremap <leader>S 0O#<esc>78a-<esc>ao<CR>#<CR>#<esc>78a-<esc>ao<esc>ka<tab>
nnoremap <leader><C-S> 0O#<esc>78a-<esc>ao<CR>#<CR>#<CR>#<CR>#<esc>78a-<esc>ao<esc>kka<tab>

" Exit insert mode without moving your hand
inoremap jk <esc>

" Complete word without moving your hand
inoremap kj <C-N>

" Quickly edit source vimrc
nnoremap <leader>vv :vsplit $MYVIMRC<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>

" NERDTree
noremap <leader>n :NERDTree ~\.<CR>


