"==============================================================================
"		General settings
"==============================================================================
set nocompatible " disable compatibility with vi
set backspace=indent,eol,start " powerful backspacing
set mousemodel=popup
set mouse=a
set ruler " coordinates
set completeopt-=preview " autocomplition preview
set ttyfast	" fast terminal
set visualbell t_vb= " Turning off bell and flashing
set novisualbell       
set enc=utf-8 " utf-8 by default in files
set ls=2 " always show status line
set incsearch " increment search
set ignorecase " case-insensetive search
set smartcase
set hlsearch " search results highlights
set number relativenumber " show row numbers 
set scrolloff=5 " 5 rows at a time while scrolling

" Appearence syntax color""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors
syntax on
"colorscheme wombat256mod
let g:gruvbox_italic=1 " enforce displaying italics for gruvbox
colorscheme gruvbox
set background=dark
set cursorline " cursor line highlight
set ttimeoutlen=10 " Redusing delay in typing escape sequences
let &t_SI.="\e[5 q" " SI = insert mode
let &t_SR.="\e[3 q" " SR = visual mode
let &t_EI.="\e[1 q" " EI = normal mode

" Tabs and buffers"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
tab sball " new tab for each new buffer
set switchbuf=useopen " switch to the tab if buf is opened or open new

" Backup and swap files""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup 	     " no backup files
set nowritebackup    " only in case you don't want a backup file while editing
set noswapfile 	     " no swap files

" Tab and indent preferences"""""""""""""""""""""""""""""""""""""""""""""""""""
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set ai " autoindent 
set cin " c-style indents

" 80 characters bar in Python/C/C++ backgroung highlight"""""""""""""""""""""""
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,c,cpp match Excess /\%80v.*/
    autocmd FileType python,c,cpp set nowrap
augroup END
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

"==============================================================================
"		Plugin management (via VimPlug) 
"==============================================================================
call plug#begin('~/.vim/plugged') " specified directory for plugins

" List of plugins""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
" Plug 'valloric/youcompleteme'
Plug 'raimondi/delimitmate'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

" List ends here"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end() 

"==============================================================================
"		User mappings
"==============================================================================
nnoremap <C-n> :NERDTreeToggle<CR>

noremap <C-c> "+y
noremap <C-v> "+p

" Cyrillic mapping"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ] `
nmap й q
nmap ц w
nmap у e
nmap к r
nmap е t
nmap н y
nmap г u
nmap ш i
nmap щ o
nmap з p
nmap х [
nmap ъ ]
nmap ф a
nmap ы s
nmap в d
nmap а f
nmap п g
nmap р h
nmap о j
nmap л k
nmap д l
nmap ж ;
nmap э '
nmap ё \
nmap я z
nmap ч x
nmap с c
nmap м v
nmap и b
nmap т n
nmap ь m
nmap б ,
nmap ю .

nmap [ ~
nmap Й Q
nmap Ц W
nmap У E
nmap К R
nmap Е T
nmap Н Y
nmap Г U
nmap Ш I
nmap Щ O
nmap З P
nmap Х {
nmap Ъ }
nmap Ф A
nmap Ы S
nmap В D
nmap А F
nmap П G
nmap Р H
nmap О J
nmap Л K
nmap Д L
nmap Ж :
nmap Э "
nmap Ё \|
nmap Я Z
nmap Ч X
nmap С C
nmap М V
nmap И B
nmap Т N
nmap Ь M
nmap Б <
nmap Ю >

omap ] `
omap й q
omap ц w
omap у e
omap к r
omap е t
omap н y
omap г u
omap ш i
omap щ o
omap з p
omap х [
omap ъ ]
omap ф a
omap ы s
omap в d
omap а f
omap п g
omap р h
omap о j
omap л k
omap д l
omap ж ;
omap э '
omap ё \
omap я z
omap ч x
omap с c
omap м v
omap и b
omap т n
omap ь m
omap б ,
omap ю .

omap [ ~
omap Й Q
omap Ц W
omap У E
omap К R
omap Е T
omap Н Y
omap Г U
omap Ш I
omap Щ O
omap З P
omap Х {
omap Ъ }
omap Ф A
omap Ы S
omap В D
omap А F
omap П G
omap Р H
omap О J
omap Л K
omap Д L
omap Ж :
omap Э "
omap Ё \|
omap Я Z
omap Ч X
omap С C
omap М V
omap И B
omap Т N
omap Ь M
omap Б <
omap Ю >

vmap ] `
vmap й q
vmap ц w
vmap у e
vmap к r
vmap е t
vmap н y
vmap г u
vmap ш i
vmap щ o
vmap з p
vmap х [
vmap ъ ]
vmap ф a
vmap ы s
vmap в d
vmap а f
vmap п g
vmap р h
vmap о j
vmap л k
vmap д l
vmap ж ;
vmap э '
vmap ё \
vmap я z
vmap ч x
vmap с c
vmap м v
vmap и b
vmap т n
vmap ь m
vmap б ,
vmap ю .

vmap [ ~
vmap Й Q
vmap Ц W
vmap У E
vmap К R
vmap Е T
vmap Н Y
vmap Г U
vmap Ш I
vmap Щ O
vmap З P
vmap Х {
vmap Ъ }
vmap Ф A
vmap Ы S
vmap В D
vmap А F
vmap П G
vmap Р H
vmap О J
vmap Л K
vmap Д L
vmap Ж :
vmap Э "
vmap Ё \|
vmap Я Z
vmap Ч X
vmap С C
vmap М V
vmap И B
vmap Т N
vmap Ь M
vmap Б <
vmap Ю >
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
