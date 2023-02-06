
" Color scheme and font
colorscheme everforest
set background=dark
set guifont=Cousine\ for\ Powerline:h16

" Highlight line with cursor
set cursorline

" Remove scroll bars
set guioptions+=LlRrbT
set guioptions-=LlRrbT

" air-line
let g:airlinetheme = 'everforest'
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
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'
