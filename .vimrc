"==============================================================================
"							General settings
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
"						Plugin management (via VimPlug) 
"==============================================================================
call plug#begin('~/.vim/plugged') " specified directory for plugins

" List of plugins""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'valloric/youcompleteme'
Plug 'raimondi/delimitmate'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

" List ends here"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end() 

"==============================================================================
"						User mappings
"==============================================================================
nnoremap <C-n> :NERDTreeToggle<CR>
