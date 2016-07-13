set t_Co=256
syntax enable   " enable syntax processing
set background=dark
colorscheme onedark

set nocompatible    " be iMproved, required
filetype off				" required
let mapleader= ","


" Spaces and Tabs
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2		" indenting is 2 spaces
set autoindent			" turns it on
set smartindent			" does the right thing in most programs
set cindent					" stricter rules for C programs


" UI Config
set number          " show line numbers
" set showcmd         " show command in bottom bar
set cursorline      " highlight current line
" set wildmenu        " visual autocomplete for command menu
set lazyredraw			" redraw only when we need to
set showmatch				" highlight matching [{()}]
"set spell spelllang=en_us


" Searching
set incsearch				" search as characters are entered
set hlsearch				" highlight matches

" turn off seach hightlight
nnoremap <leader><space>	:nohlsearch<CR>


" Folding
set foldenable				" enable folding
set foldlevelstart=10 " open most folds by default
set foldmethod=indent	" fold based on indent level


" Movement
" move vertically by visual line (aka no skipping word wraps)
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]


nnoremap <Leader>q :Bdelete<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Text Editor Plugins
Plugin 'moll/vim-bbye'										" Delete buffers (close files) without closing your windows or messing up your layout
Plugin 'terryma/vim-multiple-cursors'			" True sublime style multiple selectors
Plugin 'cyleriggs/vim-backspace'					" Backspace options for vim

" Convenience Plugins
Plugin 'gregsexton/matchtag'							" HTML matching tag highligher
Plugin 'mattn/emmet-vim'									" emmet plugin for vim
Plugin 'scrooloose/syntastic'							" syntax lint
Plugin 'jiangmiao/auto-pairs'							" auto paire to insert or delete {} [] () '' in pair

" Frontend Syntax Plugins
Plugin 'pangloss/vim-javascript'					" javascript syntax helper
Plugin 'JulesWang/css.vim'								" css syntax helper
Plugin 'cakebaker/scss-syntax.vim'				" sass syntax helper
Plugin 'mustache/vim-mustache-handlebars'	" Handlebars syntax support

call vundle#end()							" required
filetype plugin on						" required
